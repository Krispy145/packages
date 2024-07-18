import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/dropdown/form_field.dart";
import "package:timezone/timezone.dart" as tz;

import "store.dart";

class DateAndTimeField extends BaseFormField<DateAndTimeFormFieldStore> {
  DateAndTimeField({
    super.key,
    required super.store,
  }) : super();

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      // errorBuilder: (context, error) => const SizedBox.shrink(),
      // viewStore: store,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Observer(
                  builder: (context) {
                    return TextButton(
                      onPressed: () async {
                        final firstDate = store.value?.toTimezone().dateTime ?? DateTime.now();
                        final date = await showDatePicker(context: context, firstDate: firstDate, lastDate: DateTime.now().add(const Duration(days: 365)));
                        if (date != null) store.updateDate(date);
                      },
                      child: Text(store.hasDate && store.formattedDate != null ? store.formattedDate! : "Add Date"),
                    );
                  },
                ),
                Observer(
                  builder: (context) => Visibility(
                    visible: store.hasDate,
                    child: IconButton(onPressed: () => store.updateDate(null), icon: const Icon(Icons.clear)),
                  ),
                ),
                Observer(
                  builder: (context) {
                    return Visibility(
                      visible: store.hasDate,
                      child: TextButton(
                        onPressed: () async {
                          final initialTime = store.value?.toTimezone(timezone: store.selectedTimeZone).time ?? TimeOfDay.now();
                          final time = await showTimePicker(context: context, initialTime: initialTime);
                          if (time != null) store.updateTime(time);
                        },
                        child: Text(store.formattedTime ?? "Add Time"),
                      ),
                    );
                  },
                ),
                Observer(
                  builder: (context) => Visibility(
                    visible: store.hasTime,
                    child: IconButton(onPressed: () => store.updateTime(null), icon: const Icon(Icons.clear)),
                  ),
                ),
                Observer(
                  builder: (context) => Visibility(
                    visible: store.hasTime,
                    child: SizedBox(width: 200, child: DropdownFormField<tz.Location>(store: store.timezonesDropdownStore, showTitle: false)),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
