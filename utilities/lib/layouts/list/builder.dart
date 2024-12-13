import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/layouts/components/types.dart";
import "package:utilities/layouts/list/store.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/widgets/load_state/builder.dart";
import "package:utilities/widgets/load_state/states.dart";
import "package:widgets/messages/warning_message.dart";

class ListBuilder<T, K extends Comparable<K>> extends StatelessWidget {
  final ListStore<T, K> store;
  final Widget? header;
  final Widget? Function(BuildContext context, int index, T model) itemBuilder;
  final Widget Function(BuildContext context, String message)? emptyBuilder;
  final Widget Function(BuildContext context, String message)? errorBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final ScrollPhysics? physics;
  // final LoadStateBuilder? loadStateBuilder;
  final List<Widget>? stackedWidgets;
  final EdgeInsets padding;
  final ListViewType viewType;
  final SliverGridDelegate? gridDelegate;
  final bool slivers;
  final int? maxItemsCutOff;
  final bool shrinkWrap;
  final Axis scrollDirection;

  /// [ListBuilder] constructor.
  ListBuilder.listView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    // this.loadStateBuilder,
    this.stackedWidgets,
    this.padding = const EdgeInsets.all(8),
    this.physics,
    this.slivers = false,
    this.emptyBuilder,
    this.errorBuilder,
    this.maxItemsCutOff,
    this.shrinkWrap = false,
    this.scrollDirection = Axis.vertical,
    this.separatorBuilder,
  })  : assert(!((stackedWidgets?.isNotEmpty ?? false) && slivers), "Cannot have stacked widgets and use slivers"),
        assert(!(slivers && scrollDirection == Axis.horizontal), "Cannot use horizontal scroll direction with slivers"),
        assert(!(separatorBuilder != null && slivers), "Cannot use separators with slivers"),
        viewType = ListViewType.listView,
        gridDelegate = null;

  /// [ListBuilder] constructor.
  ListBuilder.gridView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    required this.gridDelegate,
    // this.loadStateBuilder,
    this.stackedWidgets,
    this.padding = const EdgeInsets.all(8),
    this.physics,
    this.slivers = false,
    this.emptyBuilder,
    this.errorBuilder,
    this.maxItemsCutOff,
    this.shrinkWrap = false,
  })  : assert(!((stackedWidgets?.isNotEmpty ?? false) && slivers), "Cannot have stacked widgets and use slivers"),
        viewType = ListViewType.gridView,
        separatorBuilder = null,
        scrollDirection = Axis.vertical;

  /// [ListBuilder] constructor.
  ListBuilder.fromType({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    // this.loadStateBuilder,
    required this.viewType,
    this.gridDelegate,
    this.stackedWidgets,
    this.padding = const EdgeInsets.all(8),
    this.physics,
    this.slivers = false,
    this.emptyBuilder,
    this.errorBuilder,
    this.maxItemsCutOff,
    this.shrinkWrap = false,
    this.separatorBuilder,
  })  : assert(
          !(header != null && slivers),
          "Cannot have header and use slivers",
        ),
        assert(
          !((stackedWidgets?.isNotEmpty ?? false) && slivers),
          "Cannot have stacked widgets or header and use slivers",
        ),
        assert(
          viewType == ListViewType.listView && gridDelegate == null || viewType == ListViewType.gridView && gridDelegate != null,
          "Grid view must have a grid delegate",
        ),
        assert(
          !(slivers && shrinkWrap),
          "Cannot use shrink wrap with slivers",
        ),
        scrollDirection = Axis.vertical;

  @override
  Widget build(BuildContext context) {
    if (!slivers) {
      return LoadStateBuilder(
        store: store,
        emptyBuilder: (context, empty) {
          debugPrint("EMPTY BUILDER: $empty");
          return emptyBuilder?.call(context, empty) ?? WarningMessage.empty(title: "No Results", message: empty);
        },
        loadedBuilder: (context) {
          debugPrint("LOADED BUILDER");
          final contents = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: shrinkWrap ? MainAxisSize.min : MainAxisSize.max,
            children: [
              if (header != null) ...[header!, Sizes.m.spacer()],
              if (shrinkWrap)
                Observer(
                  builder: (context) {
                    return buildView(store.showLoadingSpinnerAtBottom);
                  },
                )
              else
                Expanded(
                  child: Observer(
                    builder: (context) {
                      return buildView(store.showLoadingSpinnerAtBottom);
                    },
                  ),
                ),
            ],
          );
          return stackedWidgets != null
              ? Stack(
                  children: [
                    contents,
                    if (stackedWidgets != null) ...stackedWidgets!,
                  ],
                )
              : contents;
        },
        loadingBuilder: (context) => const SizedBox.shrink(),
        errorBuilder: (context, error) => errorBuilder?.call(context, error) ?? WarningMessage.error(title: "Error", message: error),
      );
    } else {
      return SliverPadding(
        padding: padding,
        sliver: Observer(
          builder: (context) {
            if (store.isLoaded) {
              return buildView(store.showLoadingSpinnerAtBottom);
            } else if (store.isError) {
              final errorState = store.currentState as ErrorLoadState;
              return SliverToBoxAdapter(child: errorBuilder?.call(context, errorState.errorMessage) ?? WarningMessage.error(title: "Error", message: errorState.errorMessage));
            } else if (store.isEmpty) {
              final emptyState = store.currentState as EmptyLoadState;
              return SliverToBoxAdapter(child: emptyBuilder?.call(context, emptyState.emptyMessage) ?? WarningMessage.empty(message: emptyState.emptyMessage));
            } else if (store.isLoading) {
              return const SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return const SliverToBoxAdapter(child: SizedBox.shrink());
            }
          },
        ),
      );
    }
  }

  Widget buildView(bool isLoadingMore) {
    final resultsCount = maxItemsCutOff != null ? min(maxItemsCutOff!, store.results.length) : store.results.length;
    final itemCount = resultsCount + (isLoadingMore ? 1 : 0);
    Widget? loadingOrItemBuilder(BuildContext context, int index) {
      if (index == store.results.length) {
        return const SizedBox(height: 64, width: 64, child: Center(child: CircularProgressIndicator()));
      }
      return itemBuilder(context, index, store.results[index]);
    }

    if (viewType == ListViewType.listView) {
      if (slivers) {
        return SliverList.builder(
          itemCount: itemCount,
          itemBuilder: loadingOrItemBuilder,
        );
      } else {
        return ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: Sizes.xs.points(context),
            width: Sizes.xs.points(context),
          ),
          scrollDirection: scrollDirection,
          reverse: store.reverseList,
          padding: padding,
          physics: physics,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: itemCount,
          itemBuilder: loadingOrItemBuilder,
          controller: store.scrollController,
          shrinkWrap: shrinkWrap,
        );
      }
    } else {
      return slivers
          ? SliverGrid.builder(
              itemCount: itemCount,
              itemBuilder: loadingOrItemBuilder,
              gridDelegate: gridDelegate!,
            )
          : GridView.builder(
              padding: padding,
              scrollDirection: scrollDirection,
              physics: physics,
              reverse: store.reverseList,
              itemCount: itemCount,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              controller: store.scrollController,
              itemBuilder: loadingOrItemBuilder,
              gridDelegate: gridDelegate!,
              shrinkWrap: shrinkWrap,
            );
    }
  }
}
