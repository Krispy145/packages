import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:forms/presentation/components/base/form_field.dart';
import 'package:forms/presentation/components/double/form_field.dart';
import 'package:maps/presentation/edit_location/view.dart';
import 'package:utilities/sizes/spacers.dart';

import 'store.dart';

class EditLocationMapFormField extends BaseFormField<EditLocationMapFormFieldStore> {
  const EditLocationMapFormField({super.key, required super.store});

  @override
  Widget buildField(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 320),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: EditLocationMapView(store: store.mapStore),
          ),
        ),
        Observer(builder: (context) {
          return Padding(
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
          );
        })
      ],
    );
  }
}
