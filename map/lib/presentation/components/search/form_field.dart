import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:forms/presentation/components/base/form_field.dart';
import 'package:forms/presentation/components/double/form_field.dart';
import 'package:map/presentation/map/view.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:utilities/sizes/spacers.dart';

import 'store.dart';

class SearchMapFormField extends BaseFormField<SearchMapFormFieldStore> {
  const SearchMapFormField({super.key, required super.store});

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 320),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: MapView(store: store.mapStore),
                  ),
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
                        child: DropdownButton(
                          value: store.suggestions?.first,
                          alignment: Alignment.bottomCenter,
                          onChanged: (newValue) {},
                          items: store.suggestions
                              ?.map(
                                (suggestion) => DropdownMenuItem<Suggestion>(
                                  value: suggestion,
                                  child: Text(suggestion.name),
                                  onTap: () => store.setCoordinates(
                                    suggestion,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Sizes.s.spacer(vertical: false),
                  DoubleFormField(store: store.latitudeStore),
                  Sizes.s.spacer(vertical: false),
                  DoubleFormField(store: store.longitudeStore),
                  Sizes.s.spacer(vertical: false),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
