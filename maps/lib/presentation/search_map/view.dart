import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:maps/data/models/google/place_model.dart';
import 'package:maps/presentation/map/view.dart';
import 'package:maps/presentation/search_map/google_store.dart';

/// [SearchMapView] of the app.
@RoutePage()
class SearchMapView extends MapView<GoogleSearchMapStore> {
  const SearchMapView({super.key, required super.store});

  @override
  List<Widget> buildAdditionalChildren(BuildContext context) {
    return [
      SafeArea(
        minimum: const EdgeInsets.all(12),
        child: Align(
          alignment: Alignment.topCenter,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: DropdownSearch<GooglePlace>(
              itemAsString: (item) => item.name ?? "Name not found",
              asyncItems: (query) => store.searchMap(query),
              compareFn: (i, s) => i == s,
              onChanged: store.setCoordinates,
              popupProps: PopupPropsMultiSelection.menu(
                isFilterOnline: true,
                showSelectedItems: true,
                showSearchBox: true,
                itemBuilder: (context, item, isSelected) {
                  return ListTile(
                    leading: ImageIcon(
                      NetworkImage(item.icon ?? ""),
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(item.name ?? "Name not found"),
                    subtitle: Text(item.formattedAddress ?? "Address not found", style: const TextStyle(color: Colors.grey)),
                    trailing: isSelected ? const Icon(Icons.check) : null,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    ];
  }
}
