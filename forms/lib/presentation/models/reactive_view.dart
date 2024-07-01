import "package:flutter/material.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "reactive_store.dart";

abstract class ReactiveFormsModelView<T, S extends ReactiveFormsModelStore<T>> extends StatelessWidget {
  final S store;
  final Widget? header;
  final String updateButtonTitle;
  final String createButtonTitle;
  // final EdgeInsets? scrollViewPadding;
  final void Function(RequestResponse? requestResponse)? onBack;
  // final ListViewType viewType;
  // final SliverGridDelegate? gridDelegate;
  // final bool slivers;
  const ReactiveFormsModelView({
    super.key,
    required this.store,
    this.header,
    // this.scrollViewPadding,
    this.updateButtonTitle = "Update",
    this.createButtonTitle = "Create",
    // this.viewType = ListViewType.listView,
    // this.gridDelegate,
    // this.slivers = false,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      errorBuilder: (context, error) => Center(child: Text(error)),
      loadedBuilder: (context) {
        return ReactiveFormBuilder(
          form: () => store.form,
          builder: (context, form, w) => formBuilder(context, form),
          // canPop: null,
          // onPopInvoked: null,
        );
        // return Stack(
        //   children: [
        // Padding(
        //   padding: scrollViewPadding ?? EdgeInsets.zero,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       if (header != null) ...[
        //         header!,
        //         Sizes.m.spacer(),
        //       ],
        // Expanded(
        //   child: ListView.builder(
        //     padding: const EdgeInsets.only(bottom: 80),
        //     itemCount: modelFields(context).length,
        //     itemBuilder: (context, index) {
        //       final key = modelFields(context).keys.elementAt(index);
        //       final widget = modelFields(context)[key];
        //       return widget;
        //     },
        //   ),
        // ),
        //     ],
        //   ),
        // ),
        //         SafeArea(
        //           child: Container(
        //             padding: kIsWeb ? const EdgeInsets.only(bottom: 32) : EdgeInsets.zero,
        //             alignment: Alignment.bottomCenter,
        //             child: ElevatedButton(
        //               onPressed: () => _showConfirmationDialog(context),
        //               child: Text(store.isAdding ? createButtonTitle : updateButtonTitle),
        //             ),
        //           ),
        //         ),
        //         if (stackedWidgets(context) != null) ...stackedWidgets(context)!,
        // ],
      },
    );
  }

  Widget formBuilder(BuildContext context, FormGroup form);

  // Map<String, BaseFormField> modelFields(BuildContext context);

  // List<Widget>? stackedWidgets(BuildContext context);

  Future<void> _showConfirmationDialog(BuildContext context) async {
    await showDialog<RequestResponse?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm"),
          content: const Text("Are you sure you want to submit?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(null);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () async {
                await store.submitPressed().then((value) => Navigator.of(context).pop(value));
              },
              child: const Text("Submit"),
            ),
          ],
        );
      },
    ).then((result) {
      if (result == null) {
        Navigator.of(context).pop(null);
        return context.showSnackbar(
          configuration: SnackbarConfiguration.error(
            title: "Cancelled",
          ),
        );
      }
      switch (result) {
        case RequestResponse.failure:
          return context.showSnackbar(
            configuration: SnackbarConfiguration.error(
              title: "Error ${store.isAdding ? "creating" : "updating"}",
              // title: "Error ${store.isAdding ? "creating" : "updating"} $modelType",
            ),
          );
        case RequestResponse.denied:
          context.showSnackbar(
            configuration: SnackbarConfiguration.warning(
              title: "You do not have permission to ${store.isAdding ? "create" : "update"} this",
              // title: "Permission denied to ${store.isAdding ? "create" : "update"} $modelType",
            ),
          );
          return onBack?.call(result);
        case RequestResponse.success:
          context.showSnackbar(
            configuration: SnackbarConfiguration.confirmation(
              title: "Successfully ${store.isAdding ? "created" : "updated"}",
            ),
          );
          return onBack?.call(result);
        case RequestResponse.underReview:
          context.showSnackbar(
            configuration: SnackbarConfiguration.information(
              title: "Added to review queue",
              // title: "create $modelType sent for review",
            ),
          );
          return onBack?.call(result);
      }
    });
  }
}
