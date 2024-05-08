import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/date/store.dart";

class DateFormField extends BaseFormField<DateFormFieldStore> {
  const DateFormField({super.key, required super.store});

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 200,
                  child: InputDatePickerFormField(
                    initialDate: store.value,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365 * 10)),
                    onDateSaved: (value) => store.value = value,
                    onDateSubmitted: (value) => store.value = value,
                    acceptEmptyDate: true,
                  ),
                ),
                if (store.value != null)
                  TextButton.icon(
                    label: Text(store.value!.toString()),
                    onPressed: () => store.value = null,
                    icon: const Icon(Icons.clear),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
