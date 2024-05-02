import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/widgets/load_state/store.dart";

/// [LoadStateBuilder] is a widget that will be used to build the UI based on the load state.
class LoadStateBuilder extends StatelessWidget {
  /// [viewStore] is an instance of [LoadStateStore].
  final LoadStateStore viewStore;

  /// [loadedBuilder] is the builder that will be used to build the UI when the load state is loaded.
  final WidgetBuilder loadedBuilder;

  /// [errorBuilder] is the builder that will be used to build the UI when the load state is error.
  final WidgetBuilder errorBuilder;

  /// [initialBuilder] is the builder that will be used to build the UI when the load state is initial.
  final WidgetBuilder initialBuilder;

  /// [loadingBuilder] is the builder that will be used to build the UI when the load state is loading.
  final WidgetBuilder? loadingBuilder;

  /// [noMoreToLoadBuilder] is the builder that will be used to build the UI when the load state is no more to load.
  final WidgetBuilder? noMoreToLoadBuilder;

  /// [emptyBuilder] is the builder that will be used to build the UI when the load state is empty.
  final WidgetBuilder? emptyBuilder;

  /// [idleBuilder] is the builder that will be used to build the UI when the load state is idle.
  final WidgetBuilder? idleBuilder;

  /// [LoadStateBuilder] constructor
  const LoadStateBuilder({
    super.key,
    required this.viewStore,
    required this.loadedBuilder,
    required this.errorBuilder,
    this.initialBuilder = _defaultBuilder,
    this.emptyBuilder,
    this.loadingBuilder,
    this.noMoreToLoadBuilder,
    this.idleBuilder,
  });

  static Widget _defaultBuilder(BuildContext context) {
    return const SizedBox.shrink();
  }

  Widget _defaultLoadingBuilder(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _defaultNoMoreToLoadSnackBarBuilder(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (viewStore.hasShownNoMoreToLoadSnackBar) return;
      context.showSnackbar(configuration: SnackbarConfiguration.warning(title: "No more to load."));
      viewStore.setNoMoreToLoadSnackBar();
    });
    return loadedBuilder(context);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        switch (viewStore.currentState) {
          case LoadState.initial:
            return initialBuilder(context);
          case LoadState.loading:
            return loadingBuilder?.call(context) ?? _defaultLoadingBuilder(context);
          case LoadState.loaded:
            return loadedBuilder(context);
          case LoadState.empty:
            return emptyBuilder?.call(context) ?? errorBuilder(context);
          case LoadState.error:
            return errorBuilder(context);
          case LoadState.idle:
            return idleBuilder?.call(context) ?? _defaultBuilder(context);
          case LoadState.noMoreToLoad:
            return noMoreToLoadBuilder?.call(context) ?? _defaultNoMoreToLoadSnackBarBuilder(context);
        }
      },
    );
  }
}
