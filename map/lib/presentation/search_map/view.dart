import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:map/presentation/map/view.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:utilities/widgets/load_state/state_widget.dart';

import 'store.dart';

/// [SearchMapView] of the app.
@RoutePage()
class SearchMapView extends MapView {
  /// [store] is an instance of [MapStore], used in the [LoadStateBuilder].
  @override
  final SearchMapStore store;
  const SearchMapView({super.key, required this.store}) : super(store: store);

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
            child: DropdownSearch<Suggestion>(
              itemAsString: (item) => item.name,
              asyncItems: (filter) => store.searchMap(filter),
              compareFn: (i, s) => i == s,
              onChanged: (item) {
                if (item != null) store.setCoordinates(item);
              },
              popupProps: PopupPropsMultiSelection.menu(
                isFilterOnline: true,
                showSelectedItems: true,
                showSearchBox: true,
                itemBuilder: (context, item, isSelected) {
                  return Text(item.name);
                },
              ),
            ),
            // DropdownMenu<Suggestion>(
            //   initialSelection: store.currentSuggestion,
            //   // label: Text(store.currentSuggestion?.name??"Search Places"),
            //   searchCallback: (_, query) {
            //     store.searchMap(query);
            //     return 0;
            //   },
            //   onSelected: (value) {
            //     if (value != null) store.setCoordinates(value);
            //   },
            //   dropdownMenuEntries: store.suggestions
            //           ?.map((suggestion) => DropdownMenuEntry<Suggestion>(
            //                 label: suggestion.name,
            //                 value: suggestion,
            //               ))
            //           .toList() ??
            //       [],
            // ),
          ),
        ),
      ),
    ];
  }
}
