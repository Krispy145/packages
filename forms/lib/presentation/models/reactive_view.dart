import "package:flutter/material.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "reactive_store.dart";

abstract class ReactiveFormsModelView<T, S extends ReactiveFormsModelStore<T>> extends StatelessWidget {
  final S store;
  final Widget? header;
  final Widget Function(BuildContext context)? loadingBuilder;
  final Widget Function(BuildContext context, String message)? emptyBuilder;

  final void Function(RequestResponse requestResponse)? onBack;
  const ReactiveFormsModelView({
    super.key,
    required this.store,
    this.header,
    // this.scrollViewPadding,
    this.loadingBuilder,
    this.emptyBuilder,
    // this.viewType = ListViewType.listView,
    // this.gridDelegate,
    // this.slivers = false,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PackageLoadStateBuilder(
          store: store,
          emptyBuilder: emptyBuilder,
          loadedBuilder: (context) => const SizedBox.shrink(),
          loadingBuilder: loadingBuilder,
        ),
        ReactiveForm(
          formGroup: store.form,
          child: formBuilder(context),
          // canPop: null,
          // onPopInvoked: null,
        ),
      ],
    );
  }

  Widget formBuilder(BuildContext context);
}
