// ignore_for_file: avoid_print

import "package:flutter/material.dart";
import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/dropdown/store.dart";
import "package:mobx/mobx.dart";
import "package:timezone/timezone.dart" as tz;
import "package:utilities/data/models/date_and_time_model.dart";

part "store.g.dart";

class DateAndTimeFormFieldStore = _DateAndTimeFormFieldStore with _$DateAndTimeFormFieldStore;

abstract class _DateAndTimeFormFieldStore extends BaseFormFieldStore<DateAndTime?> with Store {
  _DateAndTimeFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
    // super.validate,
  }) {
    print("Updated time: constructor ($title) - UTC: $value, Timezone: ${value?.toTimezone(timezone: selectedTimeZone)}");
    reaction((p0) => value, (p0) {
      print("Updated time: reaction - UTC: $p0, Timezone: ${p0?.toTimezone(timezone: selectedTimeZone)}");
    });
    timeZones = tz.timeZoneDatabase.locations;
    selectedTimeZone = tz.getLocation("Europe/London");
    print(value);
    timezonesDropdownStore = DropdownFormFieldStore<tz.Location>(
      initialValue: selectedTimeZone,
      initialItems: timeZones.values.toList(),
      onValueChanged: updateTimezone,
      title: "Timezone",
      labelBuilder: (timezone) => timezone.name,
    );
  }

  late final Map<String, tz.Location> timeZones;

  @observable
  tz.Location? selectedTimeZone;

  late final DropdownFormFieldStore<tz.Location> timezonesDropdownStore;

  @computed
  bool get hasTime => value?.time != null;

  @computed
  bool get hasDate => value?.dateTime != null;

  @computed
  String? get formattedTime => value?.formattedTimeOnly(timezone: selectedTimeZone);

  @computed
  String? get formattedDate => value?.formattedDateOnly(timezone: selectedTimeZone);

  @action
  void updateTimezone(tz.Location? timezone) => selectedTimeZone = timezone;

  @action
  void updateDate(DateTime? date) {
    if (date == null) {
      value = null;
    } else {
      final dateTime = date.copyWith(isUtc: true);
      value = value?.copyWith(date: dateTime) ?? DateAndTime(dateTime, null);
    }
  }

  @action
  void updateTime(TimeOfDay? timeOfDay) {
    final withNewTime = value?.copyWith(time: timeOfDay) ?? DateAndTime(DateTime.now(), timeOfDay);
    if (selectedTimeZone != null) {
      value = withNewTime.toUtc(timezone: selectedTimeZone);
    } else {
      value = withNewTime;
    }
  }
}
