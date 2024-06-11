import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";

class BuildListView extends StatelessWidget {
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final bool slivers;
  late final ScrollController _scrollController;
  BuildListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.slivers,
    ScrollController? scrollController,
  }) {
    _scrollController = scrollController ?? ScrollController();
  }

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
            controller: _scrollController,
            itemBuilder: itemBuilder,
          );
        }
      },
    );
  }
}
