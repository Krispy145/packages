import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

import "store.dart";

abstract class FormsModelView<T, S extends FormsModelStore<T>> extends StatelessWidget {
  final S store;
  final Widget? header;
  final bool isEditing;
  final String updateButtonTitle;
  final String createButtonTitle;
  final EdgeInsets? scrollViewPadding;
  final void Function(bool)? onBack;
  const FormsModelView({
    super.key,
    required this.store,
    this.isEditing = false,
    this.header,
    this.scrollViewPadding,
    this.updateButtonTitle = "Update",
    this.createButtonTitle = "Create",
    this.onBack,
  });

  bool get isUpdating => isEditing && store.value != null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Sizes.l.spacer(),
            if (header != null) ...[
              header!,
              Sizes.m.spacer(),
            ],
            Expanded(
              child: Observer(
                builder: (context) {
                  return ListView.builder(
                    padding: scrollViewPadding,
                    itemBuilder: (context, index) {
                      final key = modelFields(context).keys.elementAt(index);
                      final widget = modelFields(context)[key];
                      return widget;
                    },
                    itemCount: modelFields(context).length,
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
        if (stackedWidgets(context) != null) ...stackedWidgets(context)!,
      ],
    );
  }

  Map<String, BaseFormField> modelFields(BuildContext context);

  List<Widget>? stackedWidgets(BuildContext context);

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
      onBack?.call(result);
    });
  }
}
