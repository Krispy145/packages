import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/widgets/load_state/base_store.dart";

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
    this.idleBuilder,
  });

  static Widget _defaultBuilder(BuildContext context) {
    return const SizedBox.shrink();
  }

  static Widget _defaultLoadingBuilder(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        switch (viewStore.currentState) {
          case LoadState.initial:
            return initialBuilder(context);
          case LoadState.loading:
            return loadingBuilder?.call(context) ??
                _defaultLoadingBuilder(context);
          case LoadState.loaded:
            return loadedBuilder(context);
          case LoadState.empty:
            return emptyBuilder?.call(context) ?? errorBuilder(context);
          case LoadState.error:
            return errorBuilder(context);
          case LoadState.idle:
            return idleBuilder?.call(context) ?? _defaultBuilder(context);
        }
      },
    );
  }
}
