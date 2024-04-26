import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:forms/presentation/components/base/form_field.dart';
import 'package:utilities/helpers/extensions/build_context.dart';
import 'package:utilities/sizes/spacers.dart';
import 'package:utilities/snackbar/configuration.dart';

import 'store.dart';

class FormsModelView<T> extends StatelessWidget {
  final FormsModelStore<T> store;
  final Widget? header;
  final Map<String, BaseFormField> modelFields;
  final EdgeInsets? scrollViewPadding;
  const FormsModelView({
    super.key,
    required this.store,
    required this.modelFields,
    this.header,
    this.scrollViewPadding,
  });

  bool get isUpdating => store.value != null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Sizes.l.spacer(),
            header ?? _buildHeader(context),
            Expanded(
              child: Observer(
                builder: (context) {
                  return ListView.builder(
                    padding: scrollViewPadding,
                    itemBuilder: (context, index) {
                      final key = modelFields.keys.elementAt(index);
                      final widget = modelFields[key];
                      return widget;
                    },
                    itemCount: modelFields.length,
                  );
                },
              ),
            ),
            Sizes.l.spacer(),
            ElevatedButton(
              onPressed: () => _showConfirmationDialog(context),
              child: Text(isUpdating ? 'Update' : 'Create'),
            ),
            Sizes.xxxl.spacer(),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Text("$T Upsert");
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm'),
          content: const Text('Are you sure you want to submit?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                store.saveValue();
                Navigator.of(context).pop(true);
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    ).then((result) {
      if (result == null) {
        return context.showSnackbar(configuration: SnackbarConfiguration.error(title: 'Error ${isUpdating ? 'updating' : 'creating'} $T'));
      }
      if (result == false) {
        return context.showSnackbar(configuration: SnackbarConfiguration.warning(title: 'Cancelled ${isUpdating ? 'update' : 'creation'} of $T'));
      }
      context.showSnackbar(configuration: SnackbarConfiguration.confirmation(title: '${isUpdating ? 'Updated' : 'Created'} $T'));
      return Navigator.of(context).pop<bool>(result);
    });
  }
}
