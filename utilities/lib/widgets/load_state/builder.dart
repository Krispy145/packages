import "package:flutter/material.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";
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
    AppLogger.print("PackageLoadStateBuilder::: buildInitialState",
        [UtilitiesLoggers.loadState],);
    return initialBuilder?.call(context) ??
        (slivers
            ? const SliverToBoxAdapter(child: SizedBox.shrink())
            : const SizedBox.shrink());
  }

  @override
  Widget buildLoadingState(BuildContext context) {
    AppLogger.print("PackageLoadStateBuilder::: buildLoadingState",
        [UtilitiesLoggers.loadState],);
    return loadingBuilder?.call(context) ??
        (slivers
            ? const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              )
            : const Center(child: CircularProgressIndicator()));
  }

  @override
  Widget buildLoadedState(BuildContext context) {
    AppLogger.print("PackageLoadStateBuilder::: buildLoadedState",
        [UtilitiesLoggers.loadState],);
    return loadedBuilder(context);
  }

  @override
  Widget buildEmptyState(BuildContext context, String emptyMessage) {
    AppLogger.print("PackageLoadStateBuilder::: buildEmptyState",
        [UtilitiesLoggers.loadState],);
    return emptyBuilder?.call(context, emptyMessage) ??
        WarningMessage.empty(message: emptyMessage);
  }

  @override
  Widget buildErrorState(BuildContext context, String errorMessage) {
    AppLogger.print("PackageLoadStateBuilder::: buildErrorState",
        [UtilitiesLoggers.loadState],);
    return errorBuilder?.call(context, errorMessage) ??
        WarningMessage.error(message: errorMessage);
  }

  @override
  Widget buildNoMoreToLoadState(BuildContext context) {
    AppLogger.print("PackageLoadStateBuilder::: buildNoMoreToLoadState",
        [UtilitiesLoggers.loadState],);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!store.hasShownNoMoreToLoadSnackBar) {
        // Trigger a Snackbar or a similar mechanism
        store.setNoMoreToLoadSnackBar();
      }
    });
    return noMoreToLoadBuilder?.call(context) ?? buildLoadedState(context);
  }
}
