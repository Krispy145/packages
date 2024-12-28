import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/layouts/components/types.dart";
import "package:utilities/widgets/load_state/builder.dart";
import "package:widgets/messages/warning_message.dart";

import "store.dart";

class ReorderablePaginatedListBuilder<T extends Object, K extends Comparable<K>> extends StatelessWidget {
  final ReorderablePaginatedListStore<T, K> store;
  final Widget? header;
  final Widget Function(BuildContext context, int index, T model) itemBuilder;
  final Widget Function(BuildContext context, String message)? emptyBuilder;
  final Widget Function(BuildContext context, String message)? errorBuilder;
  final EdgeInsets padding;
  final Axis scrollDirection;
  final ListViewType viewType;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  /// [defaultDragHandles] is used to build the default drag handles for the list.
  /// if [defaultDragHandles] is true, the default drag handles will be built.
  /// if [defaultDragHandles] is false, the [itemBuilder] should have a either
  /// a [ReorderableDragStartListener] or a [ReorderableDelayedDragStartListener] to handle the drag events.
  final bool defaultDragHandles;
  final SliverGridDelegate? gridDelegate;

  /// [ReorderablePaginatedListBuilder] constructor.
  const ReorderablePaginatedListBuilder.listView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    this.padding = const EdgeInsets.all(8),
    this.physics,
    this.shrinkWrap = false,
    this.defaultDragHandles = false,
    this.emptyBuilder,
    this.errorBuilder,
    this.scrollDirection = Axis.vertical,
  })  : viewType = ListViewType.listView,
        gridDelegate = null;

  /// [ReorderablePaginatedListBuilder] constructor.
  const ReorderablePaginatedListBuilder.gridView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    required this.gridDelegate,
    this.padding = const EdgeInsets.all(8),
    this.physics,
    this.shrinkWrap = false,
    this.emptyBuilder,
    this.errorBuilder,
    this.scrollDirection = Axis.vertical,
  })  : viewType = ListViewType.gridView,
        defaultDragHandles = false;

  @override
  Widget build(BuildContext context) {
    return PackageLoadStateBuilder(
      store: store,
      emptyBuilder: (context, empty) {
        return emptyBuilder?.call(context, empty) ?? WarningMessage.empty(title: "No Results", message: empty);
      },
      loadedBuilder: (context) {
        final contents = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (header != null) header!,
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
        return contents;
      },
      loadingBuilder: (context) => const SizedBox.shrink(),
      errorBuilder: (context, error) => errorBuilder?.call(context, error) ?? WarningMessage.error(title: "Error", message: error),
    );
  }

  /// Builds the view based on the [viewType].
  Widget buildView(bool showLoadingSpinnerAtBottom) {
    switch (viewType) {
      case ListViewType.listView:
        return buildReorderableListView();
      case ListViewType.gridView:
        return buildReorderableGridView();
    }
  }

  /// Reordering for ListView
  Widget buildReorderableListView() {
    return ReorderableListView.builder(
      padding: padding,
      scrollDirection: scrollDirection,
      shrinkWrap: shrinkWrap,
      physics: physics,
      onReorder: store.onReorder,
      buildDefaultDragHandles: defaultDragHandles,
      itemCount: store.results.length,
      itemBuilder: (context, index) {
        return itemBuilder(context, index, store.results[index]);
      },
    );
  }

  /// Reordering for GridView (Custom Reorderable Logic)
  Widget buildReorderableGridView() {
    return GridView.builder(
      padding: padding,
      scrollDirection: scrollDirection,
      gridDelegate: gridDelegate!,
      physics: physics,
      shrinkWrap: shrinkWrap,
      itemCount: store.results.length,
      itemBuilder: (context, index) {
        return LongPressDraggable<T>(
          data: store.results[index],
          feedback: Material(
            child: itemBuilder(context, index, store.results[index]),
          ),
          childWhenDragging: const SizedBox.shrink(),
          child: DragTarget<T>(
            onAcceptWithDetails: (receivedItem) {
              final oldIndex = store.results.indexOf(receivedItem);
              if (oldIndex != index) {
                store.onReorder(oldIndex, index);
              }
            },
            builder: (context, candidateData, rejectedData) {
              return itemBuilder(context, index, store.results[index]);
            },
          ),
        );
      },
    );
  }
}
