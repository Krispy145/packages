import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

import "store.dart";

class FormsModelView<T, S extends FormsModelStore<T>> extends StatelessWidget {
  final S store;
  final Widget? header;
  final bool isEditing;
  final String updateButtonTitle;
  final String createButtonTitle;
  final Map<String, BaseFormField> modelFields;
  final EdgeInsets? scrollViewPadding;
  final void Function(bool result)? onBack;
  final IconData backIcon;
  const FormsModelView({
    super.key,
    required this.store,
    required this.modelFields,
    this.isEditing = false,
    this.header,
    this.scrollViewPadding,
    this.updateButtonTitle = "Update",
    this.createButtonTitle = "Create",
    this.onBack,
    this.backIcon = Icons.arrow_back,
  });

  bool get isUpdating => isEditing && store.value != null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Sizes.l.spacer(),
            header ?? _buildHeader(context),
            Sizes.m.spacer(),
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
            Sizes.m.spacer(),
            ElevatedButton(
              onPressed: () => _showConfirmationDialog(context),
              child: Text(isUpdating ? updateButtonTitle : createButtonTitle),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
              icon: Icon(backIcon),
              onPressed: () {
                if (onBack != null) {
                  onBack?.call(false);
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final modelType = T.toString().replaceAll("?", "");
    return Text("$modelType Upsert");
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm"),
          content: const Text("Are you sure you want to submit?"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                store.saveValue();
                Navigator.of(context).pop(true);
              },
              child: const Text("Submit"),
            ),
          ],
        );
      },
    ).then((result) {
      final modelType = T.toString().replaceAll("?", "");
      if (result == null) {
        return context.showSnackbar(
          configuration: SnackbarConfiguration.error(
            title: 'Error ${isUpdating ? 'updating' : 'creating'} $modelType',
          ),
        );
      }
      if (result == false) {
        return context.showSnackbar(
          configuration: SnackbarConfiguration.warning(
            title: 'Cancelled ${isUpdating ? 'update' : 'creation'} of $modelType',
          ),
        );
      }
      context.showSnackbar(
        configuration: SnackbarConfiguration.confirmation(
          title: '${isUpdating ? 'Updated' : 'Created'} $modelType',
        ),
      );
      if (onBack != null) {
        onBack?.call(result);
      } else {
        Navigator.of(context).pop(result);
      }
    });
  }
}
