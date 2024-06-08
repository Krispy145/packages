import "package:flutter/material.dart";
import "package:utilities/layouts/components/build_grid_view.dart";
import "package:utilities/layouts/components/build_list_view.dart";
import "package:utilities/layouts/components/types.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "store.dart";

class ListBuilder<T> extends StatelessWidget {
  final ListStore<T> store;
  final Widget? header;
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  final List<Widget>? stackedWidgets;
  final EdgeInsets? padding;
  final ListViewType viewType;
  final SliverGridDelegate? gridDelegate;
  final bool slivers;

  /// [ListBuilder] constructor.
  ListBuilder.listView({
    super.key,
    required this.store,
    this.header,
    required this.itemCount,
    required this.itemBuilder,
    this.stackedWidgets,
    this.padding,
    this.slivers = false,
  })  : assert(!((stackedWidgets?.isNotEmpty ?? false) && slivers), "Cannot have stacked widgets and use slivers"),
        viewType = ListViewType.listView,
        gridDelegate = null;

  /// [ListBuilder] constructor.
  ListBuilder.gridView({
    super.key,
    required this.store,
    this.header,
    required this.itemCount,
    required this.itemBuilder,
    required this.gridDelegate,
    this.stackedWidgets,
    this.padding,
    this.slivers = false,
  })  : assert(!((stackedWidgets?.isNotEmpty ?? false) && slivers), "Cannot have stacked widgets and use slivers"),
        viewType = ListViewType.gridView;

  /// [ListBuilder] constructor.
  ListBuilder.fromType({
    super.key,
    required this.store,
    this.header,
    required this.itemCount,
    required this.itemBuilder,
    required this.viewType,
    this.gridDelegate,
    this.stackedWidgets,
    this.padding,
    this.slivers = false,
  })  : assert(
          !((stackedWidgets?.isNotEmpty ?? false) && slivers),
          "Cannot have stacked widgets and use slivers",
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
      loadedBuilder: (context) => Stack(
        children: [
          Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (header != null) ...[
                  header!,
                  Sizes.m.spacer(),
                ],
                Expanded(
                  child: _buildView(),
                ),
              ],
            ),
          ),
          if (stackedWidgets != null) ...stackedWidgets!,
        ],
      ),
      errorBuilder: (context) {
        return const Center(
          child: Text("Error loading data"),
        );
      },
    );
  }

  Widget _buildView() {
    if (viewType == ListViewType.listView) {
      return BuildListView(
        itemCount: itemCount,
        scrollController: store.scrollController,
        itemBuilder: itemBuilder,
        slivers: slivers,
      );
    } else {
      return BuildGridView(
        itemCount: itemCount,
        scrollController: store.scrollController,
        itemBuilder: itemBuilder,
        gridDelegate: gridDelegate!,
        slivers: slivers,
      );
    }
  }
}
