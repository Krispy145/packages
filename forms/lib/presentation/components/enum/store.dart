import "package:mobx/mobx.dart";

import "../base/store.dart";

part "store.g.dart";

class EnumFormFieldStore<E extends Enum> = _EnumFormFieldStore<E>
    with _$EnumFormFieldStore<E>;

abstract class _EnumFormFieldStore<E extends Enum>
    extends BaseFormFieldStore<E?> with Store {
  _EnumFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required this.options,
    required super.title,
  });

  final List<E> options;
}
