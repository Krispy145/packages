// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DateAndTimeFormFieldStore on _DateAndTimeFormFieldStore, Store {
  Computed<bool>? _$hasTimeComputed;

  @override
  bool get hasTime => (_$hasTimeComputed ??= Computed<bool>(() => super.hasTime,
          name: '_DateAndTimeFormFieldStore.hasTime'))
      .value;
  Computed<bool>? _$hasDateComputed;

  @override
  bool get hasDate => (_$hasDateComputed ??= Computed<bool>(() => super.hasDate,
          name: '_DateAndTimeFormFieldStore.hasDate'))
      .value;
  Computed<String?>? _$formattedTimeComputed;

  @override
  String? get formattedTime =>
      (_$formattedTimeComputed ??= Computed<String?>(() => super.formattedTime,
              name: '_DateAndTimeFormFieldStore.formattedTime'))
          .value;
  Computed<String?>? _$formattedDateComputed;

  @override
  String? get formattedDate =>
      (_$formattedDateComputed ??= Computed<String?>(() => super.formattedDate,
              name: '_DateAndTimeFormFieldStore.formattedDate'))
          .value;

  late final _$selectedTimeZoneAtom = Atom(
      name: '_DateAndTimeFormFieldStore.selectedTimeZone', context: context);

  @override
  tz.Location? get selectedTimeZone {
    _$selectedTimeZoneAtom.reportRead();
    return super.selectedTimeZone;
  }

  @override
  set selectedTimeZone(tz.Location? value) {
    _$selectedTimeZoneAtom.reportWrite(value, super.selectedTimeZone, () {
      super.selectedTimeZone = value;
    });
  }

  late final _$_DateAndTimeFormFieldStoreActionController =
      ActionController(name: '_DateAndTimeFormFieldStore', context: context);

  @override
  void updateTimezone(tz.Location? timezone) {
    final _$actionInfo = _$_DateAndTimeFormFieldStoreActionController
        .startAction(name: '_DateAndTimeFormFieldStore.updateTimezone');
    try {
      return super.updateTimezone(timezone);
    } finally {
      _$_DateAndTimeFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateDate(DateTime? date) {
    final _$actionInfo = _$_DateAndTimeFormFieldStoreActionController
        .startAction(name: '_DateAndTimeFormFieldStore.updateDate');
    try {
      return super.updateDate(date);
    } finally {
      _$_DateAndTimeFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTime(TimeOfDay? timeOfDay) {
    final _$actionInfo = _$_DateAndTimeFormFieldStoreActionController
        .startAction(name: '_DateAndTimeFormFieldStore.updateTime');
    try {
      return super.updateTime(timeOfDay);
    } finally {
      _$_DateAndTimeFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTimeZone: ${selectedTimeZone},
hasTime: ${hasTime},
hasDate: ${hasDate},
formattedTime: ${formattedTime},
formattedDate: ${formattedDate}
    ''';
  }
}
