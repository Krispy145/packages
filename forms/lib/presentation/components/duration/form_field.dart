import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/int/form_field.dart";

import "../enum.dart";
import "store.dart";

class DurationFormField extends BaseFormField<DurationFormFieldStore> {
  DurationFormField({
    super.key,
    required super.store,
  }) : super(type: FormFieldType.durationField);

  double get formFieldWidth => 100;

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                IntFormField(store: store.daysStore),
                IntFormField(store: store.hoursStore),
                IntFormField(store: store.minutesStore),
                IntFormField(store: store.secondsStore),
                IntFormField(store: store.millisecondsStore),
                IntFormField(store: store.microsecondsStore),
              ].map((e) => SizedBox(width: formFieldWidth, child: e)).toList(),
            ),
          ],
        );
      },
    );
  }
}
