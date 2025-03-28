import "package:dropdown_search/dropdown_search.dart";
import "package:flutter/material.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:maps/data/models/google/place_model.dart";

import "store.dart";

class GooglePlaceSearchFormField
    extends BaseFormField<GooglePlaceSearchFormFieldStore> {
  GooglePlaceSearchFormField({
    super.key,
    required super.store,
  });

  @override
  Widget buildField(BuildContext context) {
    return DropdownSearch<GooglePlace>(
      itemAsString: (item) => item.name ?? "Name not found",
      selectedItem: store.value,
      items: (query, props) => store.searchQuery(query),
      compareFn: (i, s) => i == s,
      onChanged: store.onSelectedPlace,
      popupProps: PopupPropsMultiSelection.menu(
        showSelectedItems: true,
        showSearchBox: true,
        itemBuilder: (context, item, isDisabled, isSelected) {
          return ListTile(
            leading: ImageIcon(
              NetworkImage(item.icon ?? ""),
              color: Theme.of(context).primaryColor,
            ),
            title: Text(item.name ?? "Name not found"),
            subtitle: Text(
              item.formattedAddress ?? "Address not found",
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: isSelected ? const Icon(Icons.check) : null,
          );
        },
      ),
    );
  }
}
