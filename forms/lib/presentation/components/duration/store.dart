import "package:mobx/mobx.dart";
import "package:theme/data/models/general/duration_model.dart";

import "../base/store.dart";
import "../int/store.dart";

part "store.g.dart";

class DurationFormFieldStore = _DurationFormFieldStore
    with _$DurationFormFieldStore;

abstract class _DurationFormFieldStore extends BaseFormFieldStore<DurationModel>
    with Store {
  _DurationFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    // On Value Changed
    // reaction<DurationModel>((reaction) => value, (newValue) {
    // topController.text = newValue.top.toString();
    // bottomController.text = newValue.bottom.toString();
    // leftController.text = newValue.left.toString();
    // rightController.text = newValue.right.toString();
    // });
  }

  late final daysStore = IntFormFieldStore(
    initialValue: value?.days_int,
    showButtons: false,
    onValueChanged: (days) {
      if (days != null) {
        value = (value ?? const DurationModel()).copyWith(days_int: days);
      }
    },
    title: "Days",
  );

  late final hoursStore = IntFormFieldStore(
    initialValue: value?.hours_int,
    showButtons: false,
    onValueChanged: (hours) {
      if (hours != null) {
        value = (value ?? const DurationModel()).copyWith(hours_int: hours);
      }
    },
    title: "Hours",
  );

  late final minutesStore = IntFormFieldStore(
    initialValue: value?.minutes_int,
    showButtons: false,
    onValueChanged: (minutes) {
      if (minutes != null) {
        value = (value ?? const DurationModel()).copyWith(minutes_int: minutes);
      }
    },
    title: "Minutes",
  );

  late final secondsStore = IntFormFieldStore(
    initialValue: value?.seconds_int,
    showButtons: false,
    onValueChanged: (seconds) {
      if (seconds != null) {
        value = (value ?? const DurationModel()).copyWith(seconds_int: seconds);
      }
    },
    title: "Seconds",
  );

  late final millisecondsStore = IntFormFieldStore(
    initialValue: value?.milliseconds_int,
    showButtons: false,
    onValueChanged: (milliseconds) {
      if (milliseconds != null) {
        value = (value ?? const DurationModel())
            .copyWith(milliseconds_int: milliseconds);
      }
    },
    title: "Milliseconds",
  );

  late final microsecondsStore = IntFormFieldStore(
    initialValue: value?.microseconds_int,
    showButtons: false,
    onValueChanged: (microseconds) {
      if (microseconds != null) {
        value = (value ?? const DurationModel())
            .copyWith(microseconds_int: microseconds);
      }
    },
    title: "Microseconds",
  );
}
