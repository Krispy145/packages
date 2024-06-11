import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/layouts/components/types.dart";
import "package:utilities/layouts/list/store.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/widgets/load_state/builder.dart";

class ListBuilder<T> extends StatelessWidget {
  final ListStore<T> store;
  final Widget? header;
  final Widget? Function(BuildContext, int) itemBuilder;
  final LoadStateBuilder? loadStateBuilder;
  final List<Widget>? stackedWidgets;
  final EdgeInsets padding;
  final ListViewType viewType;
  final SliverGridDelegate? gridDelegate;
  final bool slivers;

  static const double _defaultListEdgeSpacing = 8;

  /// [ListBuilder] constructor.
  ListBuilder.listView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    this.loadStateBuilder,
    this.stackedWidgets,
    this.padding = const EdgeInsets.all(_defaultListEdgeSpacing),
    this.slivers = false,
  })  : assert(!((stackedWidgets?.isNotEmpty ?? false) && slivers), "Cannot have stacked widgets and use slivers"),
        viewType = ListViewType.listView,
        gridDelegate = null;

  /// [ListBuilder] constructor.
  ListBuilder.gridView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    required this.gridDelegate,
    this.loadStateBuilder,
    this.stackedWidgets,
    this.padding = const EdgeInsets.all(_defaultListEdgeSpacing),
    this.slivers = false,
  })  : assert(!((stackedWidgets?.isNotEmpty ?? false) && slivers), "Cannot have stacked widgets and use slivers"),
        viewType = ListViewType.gridView;

  /// [ListBuilder] constructor.
  ListBuilder.fromType({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    this.loadStateBuilder,
    required this.viewType,
    this.gridDelegate,
    this.stackedWidgets,
    this.padding = const EdgeInsets.all(_defaultListEdgeSpacing),
    this.slivers = false,
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
        );

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      emptyBuilder: (context) {
        return const Center(
          child: Text("No results found"),
        );
      },
      loadedBuilder: (context) {
        if (slivers) return buildView(store.showLoadingSpinnerAtBottom);
        return Stack(
          children: [
            Padding(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (header != null) ...[header!, Sizes.m.spacer()],
                  Expanded(
                    child: Observer(
                      builder: (context) {
                        return buildView(store.showLoadingSpinnerAtBottom);
                      },
                    ),
                  ),
                ],
              ),
            ),
            if (stackedWidgets != null) ...stackedWidgets!,
          ],
        );
      },
      loadingBuilder: (context) => const SizedBox.shrink(),
      errorBuilder: (context) => const Center(child: Text("Error loading data")),
    );
  }

  Widget buildView(bool isLoadingMore) {
    final itemCount = store.results.length + (isLoadingMore ? 1 : 0);
    Widget? loadingOrItemBuilder(BuildContext context, int index) {
      if (index == store.results.length) {
        return const SizedBox(height: 64, child: Center(child: CircularProgressIndicator()));
      }
      return itemBuilder(context, index);
    }

    if (viewType == ListViewType.listView) {
      return slivers
          ? SliverList.builder(
              itemCount: itemCount,
              itemBuilder: loadingOrItemBuilder,
            )
          : ListView.builder(
              itemCount: itemCount,
              itemBuilder: loadingOrItemBuilder,
              controller: store.scrollController,
            );
    } else {
      return slivers
          ? SliverGrid.builder(
              itemCount: itemCount,
              itemBuilder: loadingOrItemBuilder,
              gridDelegate: gridDelegate!,
            )
          : GridView.builder(
              itemCount: itemCount,
              controller: store.scrollController,
              itemBuilder: loadingOrItemBuilder,
              gridDelegate: gridDelegate!,
            );
    }
  }
}
