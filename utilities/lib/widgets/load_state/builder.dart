import "package:flutter/material.dart";
import "package:widgets/messages/warning_message.dart";

import "_base.dart";

typedef TextWidgetBuilder = Widget Function(BuildContext context, String text);

class PackageLoadStateBuilder extends BaseLoadStateBuilder {
  final WidgetBuilder loadedBuilder;
  final TextWidgetBuilder? errorBuilder;
  final WidgetBuilder? initialBuilder;
  final WidgetBuilder? loadingBuilder;
  final WidgetBuilder? noMoreToLoadBuilder;
  final TextWidgetBuilder? emptyBuilder;

  final bool slivers;

  const PackageLoadStateBuilder({
    super.key,
    required super.store,
    required this.loadedBuilder,
    this.errorBuilder,
    this.initialBuilder,
    this.loadingBuilder,
    this.noMoreToLoadBuilder,
    this.emptyBuilder,
    this.slivers = false,
  });

  @override
  Widget buildInitialState(BuildContext context) {
    return initialBuilder?.call(context) ??
        (slivers
            ? const SliverToBoxAdapter(child: SizedBox.shrink())
            : const SizedBox.shrink());
  }

  @override
  Widget buildLoadingState(BuildContext context) {
    return loadingBuilder?.call(context) ??
        (slivers
            ? const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              )
            : const Center(child: CircularProgressIndicator()));
  }

  @override
  Widget buildLoadedState(BuildContext context) {
    return loadedBuilder(context);
  }

  @override
  Widget buildEmptyState(BuildContext context, String emptyMessage) {
    return emptyBuilder?.call(context, emptyMessage) ??
        WarningMessage.empty(message: emptyMessage);
  }

  @override
  Widget buildErrorState(BuildContext context, String errorMessage) {
    return errorBuilder?.call(context, errorMessage) ??
        WarningMessage.error(message: errorMessage);
  }

  @override
  Widget buildNoMoreToLoadState(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!store.hasShownNoMoreToLoadSnackBar) {
        // Trigger a Snackbar or a similar mechanism
        store.setNoMoreToLoadSnackBar();
      }
    });
    return noMoreToLoadBuilder?.call(context) ?? buildLoadedState(context);
  }
}
