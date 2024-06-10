import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/layouts/list/store.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/widgets/load_state/builder.dart";

enum ResultsViewType {
  listView,
  gridView,
}

class ListBuilder<T> extends StatelessWidget {
  final ListStore<T> store;
  final Widget? header;
  final Widget? Function(BuildContext, int) itemBuilder;
  final LoadStateBuilder? loadStateBuilder;
  final List<Widget>? stackedWidgets;
  final EdgeInsets? padding;
  final ResultsViewType viewType;
  final SliverGridDelegate? gridDelegate;
  final bool slivers;

  /// [ListBuilder] constructor.
  ListBuilder.listView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    this.loadStateBuilder,
    this.stackedWidgets,
    this.padding,
    this.slivers = false,
  })  : assert(!((stackedWidgets?.isNotEmpty ?? false) && slivers), "Cannot have refresh or stacked widgets and use slivers"),
        viewType = ResultsViewType.listView,
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
    this.padding,
    this.slivers = false,
  })  : assert(!((stackedWidgets?.isNotEmpty ?? false) && slivers), "Cannot have refresh or stacked widgets and use slivers"),
        viewType = ResultsViewType.gridView;

  @override
  Widget build(BuildContext context) {
    if (slivers) return _buildView();
    return Stack(
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
        // SafeArea(
        //   child: Align(
        //     alignment: Alignment.bottomCenter,
        //     child: Padding(
        //       padding: const EdgeInsets.all(8),
        //       child: loadStateBuilder ??
        //           LoadStateBuilder(
        //             viewStore: store,
        //             loadedBuilder: (context) => const SizedBox.shrink(),
        //             errorBuilder: (context) {
        //               return IconButton(
        //                 icon: const Icon(Icons.refresh),
        //                 onPressed: store.refresh,
        //               );
        //             },
        //           ),
        //     ),
        //   ),
        // ),
        if (stackedWidgets != null) ...stackedWidgets!,
      ],
    );
  }

  Widget _buildView() {
    if (viewType == ResultsViewType.listView) {
      return _BuildListView(
        store: store,
        itemBuilder: itemBuilder,
        slivers: slivers,
      );
    } else {
      return _BuildGridView(
        store: store,
        itemBuilder: itemBuilder,
        gridDelegate: gridDelegate!,
        slivers: slivers,
      );
    }
  }
}

class _BuildGridView<T> extends StatelessWidget {
  final SliverGridDelegate gridDelegate;
  const _BuildGridView({
    super.key,
    required this.store,
    required this.itemBuilder,
    required this.gridDelegate,
    required this.slivers,
  });

  final ListStore<T> store;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final bool slivers;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (slivers) {
          return SliverGrid(
            gridDelegate: gridDelegate,
            delegate: SliverChildBuilderDelegate(
              itemBuilder,
              childCount: store.results.length,
            ),
          );
        } else {
          return GridView.builder(
            gridDelegate: gridDelegate,
            itemCount: store.results.length,
            itemBuilder: itemBuilder,
          );
        }
      },
    );
  }
}

class _BuildListView<T> extends StatelessWidget {
  const _BuildListView({
    super.key,
    required this.store,
    required this.itemBuilder,
    required this.slivers,
  });

  final ListStore<T> store;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final bool slivers;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (slivers) {
          return SliverList.builder(
            itemBuilder: itemBuilder,
            itemCount: store.results.length,
          );
        } else {
          return ListView.builder(
            itemCount: store.results.length,
            itemBuilder: itemBuilder,
          );
        }
      },
    );
  }
}
