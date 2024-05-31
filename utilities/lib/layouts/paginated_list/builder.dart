import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/layouts/paginated_list/store.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/widgets/load_state/builder.dart";

enum PaginatedResultsViewType {
  listView,
  gridView,
}

class PaginatedListBuilder<T> extends StatelessWidget {
  final PaginatedListStore<T> store;
  final Widget? header;
  final Widget? Function(BuildContext, int) itemBuilder;
  final LoadStateBuilder? loadStateBuilder;
  final List<Widget>? stackedWidgets;
  final EdgeInsets? padding;
  final bool canRefresh;
  final PaginatedResultsViewType viewType;
  final SliverGridDelegate? gridDelegate;

  /// [PaginatedListBuilder] constructor.
  const PaginatedListBuilder.listView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    this.loadStateBuilder,
    this.stackedWidgets,
    this.padding,
    this.canRefresh = true,
  })  : viewType = PaginatedResultsViewType.listView,
        gridDelegate = null;

  /// [PaginatedListBuilder] constructor.
  const PaginatedListBuilder.gridView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    required this.gridDelegate,
    this.loadStateBuilder,
    this.stackedWidgets,
    this.padding,
    this.canRefresh = true,
  }) : viewType = PaginatedResultsViewType.gridView;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
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
                    child: _buildResults(),
                  ),
                ],
              ),
            ),
            if (!store.isLoaded)
              SafeArea(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: loadStateBuilder ??
                        LoadStateBuilder(
                          viewStore: store,
                          loadedBuilder: (context) => const SizedBox.shrink(),
                          errorBuilder: (context) {
                            return IconButton(
                              icon: const Icon(Icons.refresh),
                              onPressed: store.refresh,
                            );
                          },
                        ),
                  ),
                ),
              ),
            if (stackedWidgets != null) ...stackedWidgets!,
          ],
        );
      },
    );
  }

  Widget _buildResults() {
    if (canRefresh) {
      return RefreshIndicator(
        onRefresh: store.refresh,
        child: _buildView(),
      );
    } else {
      return _buildView();
    }
  }

  Widget _buildView() {
    if (viewType == PaginatedResultsViewType.listView) {
      return _BuildListView(store: store, itemBuilder: itemBuilder);
    } else {
      return _BuildGridView(store: store, itemBuilder: itemBuilder, gridDelegate: gridDelegate!);
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
  });

  final PaginatedListStore<T> store;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return GridView.builder(
          gridDelegate: gridDelegate,
          itemCount: store.results.length,
          controller: store.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: itemBuilder,
        );
      },
    );
  }
}

class _BuildListView<T> extends StatelessWidget {
  const _BuildListView({
    super.key,
    required this.store,
    required this.itemBuilder,
  });

  final PaginatedListStore<T> store;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return ListView.builder(
          itemCount: store.results.length,
          controller: store.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: itemBuilder,
        );
      },
    );
  }
}
