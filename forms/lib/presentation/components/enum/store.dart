import "package:mobx/mobx.dart";

import "../base/store.dart";

part "store.g.dart";

class EnumFormFieldStore = _EnumFormFieldStore with _$EnumFormFieldStore;

abstract class _EnumFormFieldStore extends BaseFormFieldStore<Enum?> with Store {
  _EnumFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required this.options,
    required super.title,
  });

  final List<Enum> options;
}
