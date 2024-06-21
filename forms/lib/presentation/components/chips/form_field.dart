import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";

import "store.dart";

class ChipsFormField<T> extends BaseFormField<ChipsFormFieldStore<T>> {
  final String Function(T) titleBuilder;
  const ChipsFormField({
    super.key,
    required super.store,
    required this.titleBuilder,
    this.horizontalPadding = 0,
    super.showTitle,
  });

  final double horizontalPadding;

  @override
  Widget buildField(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Observer(
        builder: (context) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemCount: store.available.length,
            itemBuilder: (context, index) {
              final filtersStore = store;
              final filter = filtersStore.getFilterAtIndex(index);
              return GestureDetector(
                onTap: () => filtersStore.selectFilter(filter),
                child: Observer(
                  builder: (context) {
                    return ChoiceChip(
                      label: Text(titleBuilder(filter)),
                      selected: filtersStore.isSelected(filter),
                      onSelected: (selected) => filtersStore.selectFilter(filter),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
