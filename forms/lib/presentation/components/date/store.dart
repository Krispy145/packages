import "package:mobx/mobx.dart";

import "../base/store.dart";

part "store.g.dart";

class DateFormFieldStore = _DateFormFieldStore with _$DateFormFieldStore;

abstract class _DateFormFieldStore extends BaseFormFieldStore<DateTime?> with Store {
  _DateFormFieldStore({
    required super.value,
    required super.onValueChanged,
    required super.title,
  }) {}
}
