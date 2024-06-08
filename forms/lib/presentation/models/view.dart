import "package:flutter/material.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/layouts/components/types.dart";
import "package:utilities/layouts/list/builder.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "store.dart";

abstract class FormsModelView<T, S extends FormsModelStore<T>> extends StatelessWidget {
  final S store;
  final Widget? header;
  final String updateButtonTitle;
  final String createButtonTitle;
  final EdgeInsets? scrollViewPadding;
  final void Function(RequestResponse? requestResponse)? onBack;
  final ListViewType viewType;
  final SliverGridDelegate? gridDelegate;
  final bool slivers;
  const FormsModelView({
    super.key,
    required this.store,
    this.header,
    this.scrollViewPadding,
    this.updateButtonTitle = "Update",
    this.createButtonTitle = "Create",
    this.viewType = ListViewType.listView,
    this.gridDelegate,
    this.slivers = false,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      errorBuilder: (context) => Center(
        child: Text("Error loading ${T.toString().replaceAll("?", "")}"),
      ),
      loadedBuilder: (context) {
        return ListBuilder.fromType(
          store: store,
          header: header,
          slivers: slivers,
          gridDelegate: gridDelegate,
          itemCount: modelFields(context).length,
          itemBuilder: (context, index) {
            final key = modelFields(context).keys.elementAt(index);
            final widget = modelFields(context)[key];
            return widget;
          },
          viewType: viewType,
          stackedWidgets: [
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () => _showConfirmationDialog(context),
                  child: Text(store.isAdding ? createButtonTitle : updateButtonTitle),
                ),
              ),
            ),
            if (stackedWidgets(context) != null) ...stackedWidgets(context)!,
          ],
          padding: scrollViewPadding,
        );
      },
    );

    // LoadStateBuilder(
    //   viewStore: store,
    //   errorBuilder: (context) => Center(
    //     child: Text("Error loading ${T.toString().replaceAll("?", "")}"),
    //   ),
    //   loadedBuilder: (context) {
    //     return Stack(
    //       children: [
    //         Column(
    //           children: [
    //             Sizes.l.spacer(),
    //             if (header != null) ...[
    //               header!,
    //               Sizes.m.spacer(),
    //             ],
    //             Expanded(
    //               child: ListView.builder(
    //                 padding: scrollViewPadding,
    // itemBuilder: (context, index) {
    //   final key = modelFields(context).keys.elementAt(index);
    //   final widget = modelFields(context)[key];
    //   return widget;
    // },
    //                 itemCount: modelFields(context).length,
    //               ),
    //             ),
    //             Sizes.m.spacer(),
    //             ElevatedButton(
    //               onPressed: () => _showConfirmationDialog(context),
    //               child: Text(store.isAdding ? createButtonTitle : updateButtonTitle),
    //             ),
    //           ],
    //         ),
    //         if (stackedWidgets(context) != null) ...stackedWidgets(context)!,
    //       ],
    //     );
    //   },
    // );
  }

  Map<String, BaseFormField> modelFields(BuildContext context);

  List<Widget>? stackedWidgets(BuildContext context);

  Future<void> _showConfirmationDialog(BuildContext context) async {
    await showDialog<RequestResponse?>(
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
              onPressed: () async {
                await store.saveValue().then((value) => Navigator.of(context).pop(value));
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
            title: "Error ${store.isAdding ? "creating" : "updating"} $modelType",
          ),
        );
      }
      switch (result) {
        case RequestResponse.failure:
          return context.showSnackbar(
            configuration: SnackbarConfiguration.error(
              title: "Error ${store.isAdding ? "creating" : "updating"} $modelType",
            ),
          );
        case RequestResponse.denied:
          context.showSnackbar(
            configuration: SnackbarConfiguration.warning(
              title: "Permission denied to ${store.isAdding ? "create" : "update"} $modelType",
            ),
          );
          return onBack?.call(result);
        case RequestResponse.success:
          context.showSnackbar(
            configuration: SnackbarConfiguration.confirmation(
              title: "$modelType ${store.isAdding ? "created" : "updated"} successfully",
            ),
          );
          return onBack?.call(result);
        case RequestResponse.underReview:
          context.showSnackbar(
            configuration: SnackbarConfiguration.information(
              title: "create $modelType sent for review",
            ),
          );
          return onBack?.call(result);
      }
    });
  }
}
