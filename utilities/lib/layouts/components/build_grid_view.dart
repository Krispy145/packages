import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";

class BuildGridView extends StatelessWidget {
  final SliverGridDelegate gridDelegate;
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final bool slivers;
  final ScrollController scrollController;
  const BuildGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.gridDelegate,
    required this.slivers,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (slivers) {
          return SliverGrid(
            gridDelegate: gridDelegate,
            delegate: SliverChildBuilderDelegate(
              itemBuilder,
              childCount: itemCount,
            ),
          );
        } else {
          return GridView.builder(
            gridDelegate: gridDelegate,
            itemCount: itemCount,
            controller: scrollController,
            itemBuilder: itemBuilder,
          );
        }
      },
    );
  }
}
