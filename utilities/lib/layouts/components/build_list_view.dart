import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";

class BuildListView extends StatelessWidget {
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final bool slivers;
  final ScrollController scrollController;
  const BuildListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.slivers,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (slivers) {
          return SliverList.builder(
            itemBuilder: itemBuilder,
            itemCount: itemCount,
          );
        } else {
          return ListView.builder(
            itemCount: itemCount,
            controller: scrollController,
            itemBuilder: itemBuilder,
          );
        }
      },
    );
  }
}
