import "package:dropdown_search/dropdown_search.dart";
import "package:flutter/material.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "../enum.dart";
import "store.dart";

class DropdownFormField<T> extends BaseFormField<DropdownFormFieldStore<T>> {
  const DropdownFormField({
    super.key,
    required super.store,
    super.showTitle = true,
  }) : super(type: FormFieldType.dropdownField);

  @override
  Widget buildField(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      errorBuilder: (context) => const Text("Error loading data"),
      loadedBuilder: (context) {
        return DropdownSearch<T>(
          itemAsString: store.labelBuilder,
          selectedItem: store.value,
          asyncItems: (searchTerm) async => await store.itemFetcher?.call(searchTerm) ?? [],
          items: store.items,
          compareFn: (i, s) => i == s,
          onChanged: (item) {
            if (item != null) store.value = item;
          },
          popupProps: PopupPropsMultiSelection.menu(
            isFilterOnline: true,
            showSelectedItems: true,
            showSearchBox: true,
            itemBuilder: (context, item, isSelected) {
              return ListTile(
                leading: store.leadingBuilder?.call(item),
                title: Text(store.labelBuilder(item)),
                subtitle: Text(store.subtitleBuilder?.call(item) ?? ""),
                trailing: isSelected ? const Icon(Icons.check) : null,
              );
            },
          ),
        );
        // return DropdownMenu<T>(
        //   searchCallback: (entries, query) {
        //     if (query.isEmpty) return null;
        //     final index = entries.indexWhere((entry) => entry.label.contains(query));
        //     return index != -1 ? index : null;
        //   },
        //   expandedInsets: const EdgeInsets.all(8),
        //   initialSelection: store.value,
        //   textStyle: textStyle,
        //   dropdownMenuEntries: store.items.map((item) => DropdownMenuEntry(value: item, label: store.labelBuilder(item))).toList(),
        //   onSelected: store.onValueChanged,
        // );
      },
    );
  }
}
