import "package:authentication/data/models/review_model.dart";
import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/string.dart";

class CrudTabBar extends StatefulWidget {
  const CrudTabBar({super.key, required this.onValueSelected});

  final void Function(CRUD? selected) onValueSelected;

  @override
  State<CrudTabBar> createState() => _CrudTabBarState();
}

class _CrudTabBarState extends State<CrudTabBar> with SingleTickerProviderStateMixin {
  late final crudTabController = TabController(length: CRUD.values.length + 1, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TabBar(
        controller: crudTabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        tabs: [
          const Tab(text: "All"),
          ...CRUD.values.map((e) {
            return Tab(text: e.name.camelCaseToTitleCase());
          }),
        ],
        onTap: (value) {
          if (value == 0) {
            widget.onValueSelected(null);
          } else {
            widget.onValueSelected(CRUD.values[value - 1]);
          }
        },
      ),
    );
  }
}
