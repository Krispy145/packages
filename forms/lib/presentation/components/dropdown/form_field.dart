import "package:dropdown_search/dropdown_search.dart";
import "package:flutter/material.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:utilities/widgets/load_state/builder.dart";
import "package:widgets/list_tile.dart";

import "store.dart";

class DropdownFormField<T> extends BaseFormField<DropdownFormFieldStore<T>> {
  DropdownFormField({
    super.key,
    required super.store,
    super.showTitle = true,
  });

  @override
  Widget buildField(BuildContext context) {
    return PackageLoadStateBuilder(
      store: store,
      errorBuilder: (context, error) => Text(error),
      loadedBuilder: (context) {
        return DropdownSearch<T>(
          itemAsString: store.labelBuilder,
          selectedItem: store.value,
          asyncItems: (searchTerm) async => await store.itemFetcher?.call(searchTerm) ?? [],
          items: store.itemFetcher != null ? [] : store.items,
          compareFn: (i, s) => i == s,
          onChanged: (item) {
            if (item != null) store.value = item;
          },
          popupProps: PopupPropsMultiSelection.menu(
            isFilterOnline: true,
            showSelectedItems: true,
            showSearchBox: store.showSearch,
            listViewProps: const ListViewProps(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            ),
            itemBuilder: (context, item, isSelected) {
              return LYListTile(
                leading: store.leadingBuilder?.call(item),
                title: store.labelBuilder(item),
                subtitle: store.subtitleBuilder?.call(item),
                trailing: isSelected ? const Icon(Icons.check) : null,
              );
            },
          ),
        );
      },
    );
  }
}
