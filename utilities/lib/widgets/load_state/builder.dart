import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/widgets/load_state/states.dart";
import "package:utilities/widgets/load_state/store.dart";
import "package:widgets/messages/warning_message.dart";

typedef TextWidgetBuilder = Widget Function(BuildContext context, String text);

/// [LoadStateBuilder] is a widget that will be used to build the UI based on the load state.
class LoadStateBuilder extends StatelessWidget {
  /// [viewStore] is an instance of [LoadStateStore].
  final LoadStateStore viewStore;

  /// [loadedBuilder] is the builder that will be used to build the UI when the load state is loaded.
  final WidgetBuilder loadedBuilder;

  /// [errorBuilder] is the builder that will be used to build the UI when the load state is error.
  final TextWidgetBuilder? errorBuilder;

  /// [initialBuilder] is the builder that will be used to build the UI when the load state is initial.
  final WidgetBuilder? initialBuilder;

  /// [loadingBuilder] is the builder that will be used to build the UI when the load state is loading.
  final WidgetBuilder? loadingBuilder;

  /// [noMoreToLoadBuilder] is the builder that will be used to build the UI when the load state is no more to load.
  final WidgetBuilder? noMoreToLoadBuilder;

  /// [emptyBuilder] is the builder that will be used to build the UI when the load state is empty.
  final TextWidgetBuilder? emptyBuilder;

  // /// [idleBuilder] is the builder that will be used to build the UI when the load state is idle.
  // final WidgetBuilder? idleBuilder;

  final bool slivers;

  /// [LoadStateBuilder] constructor
  const LoadStateBuilder({
    super.key,
    required this.viewStore,
    required this.loadedBuilder,
    this.errorBuilder,
    this.initialBuilder,
    this.emptyBuilder,
    this.loadingBuilder,
    this.noMoreToLoadBuilder,
    // this.idleBuilder,
    this.slivers = false,
  });

  Widget _defaultBuilder(BuildContext context) {
    if (slivers) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }
    return const SizedBox.shrink();
  }

  Widget _defaultLoadingBuilder(BuildContext context) {
    if (slivers) {
      return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
    }
    return const Center(child: CircularProgressIndicator());
  }

  Widget _defaultNoMoreToLoadSnackBarBuilder(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (viewStore.hasShownNoMoreToLoadSnackBar) return;
      // context.showSnackbar(configuration: SnackbarConfiguration.warning(title: "No more to load."));
      viewStore.setNoMoreToLoadSnackBar();
    });
    return loadedBuilder(context);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        switch (viewStore.currentState) {
          case InitialLoadState():
            return initialBuilder?.call(context) ?? _defaultBuilder(context);
          case LoadingLoadState():
            return loadingBuilder?.call(context) ?? _defaultLoadingBuilder(context);
          case LoadedLoadState():
            return loadedBuilder(context);
          case EmptyLoadState(emptyMessage: final empty):
            return emptyBuilder?.call(context, empty) ?? WarningMessage.empty(message: empty);
          case ErrorLoadState(errorMessage: final error):
            return errorBuilder?.call(context, error) ?? WarningMessage.error(message: error);
          case NoMoreLoadState():
            return noMoreToLoadBuilder?.call(context) ?? _defaultNoMoreToLoadSnackBarBuilder(context);
        }
      },
    );
  }
}
