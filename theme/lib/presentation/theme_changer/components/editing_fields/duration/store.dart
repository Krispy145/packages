import 'package:mobx/mobx.dart';
import 'package:theme/data/models/general/duration_model.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/store.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/int/store.dart';

part 'store.g.dart';

class DurationFormFieldStore = _DurationFormFieldStore with _$DurationFormFieldStore;

abstract class _DurationFormFieldStore extends BaseFormFieldStore<DurationModel> with Store {
  _DurationFormFieldStore({required super.value, required super.onValueChanged}) {
    // On Value Changed
    // reaction<DurationModel>((reaction) => value, (newValue) {
    // topController.text = newValue.top.toString();
    // bottomController.text = newValue.bottom.toString();
    // leftController.text = newValue.left.toString();
    // rightController.text = newValue.right.toString();
    // });
  }

  late final daysStore = IntFormFieldStore(
    value: value.days_int,
    showButtons: false,
    onValueChanged: (days) {
      if (days != null) value = value.copyWith(days_int: days);
    },
  );

  late final hoursStore = IntFormFieldStore(
    value: value.hours_int,
    showButtons: false,
    onValueChanged: (hours) {
      if (hours != null) value = value.copyWith(hours_int: hours);
    },
  );

  late final minutesStore = IntFormFieldStore(
    value: value.minutes_int,
    showButtons: false,
    onValueChanged: (minutes) {
      if (minutes != null) value = value.copyWith(minutes_int: minutes);
    },
  );

  late final secondsStore = IntFormFieldStore(
    value: value.seconds_int,
    showButtons: false,
    onValueChanged: (seconds) {
      if (seconds != null) value = value.copyWith(seconds_int: seconds);
    },
  );

  late final millisecondsStore = IntFormFieldStore(
    value: value.milliseconds_int,
    showButtons: false,
    onValueChanged: (milliseconds) {
      if (milliseconds != null) value = value.copyWith(milliseconds_int: milliseconds);
    },
  );

  late final microsecondsStore = IntFormFieldStore(
    value: value.microseconds_int,
    showButtons: false,
    onValueChanged: (microseconds) {
      if (microseconds != null) value = value.copyWith(microseconds_int: microseconds);
    },
  );
}
