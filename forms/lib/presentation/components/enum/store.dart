import "package:mobx/mobx.dart";

import "../base/store.dart";

part "store.g.dart";

class EnumFormFieldStore<E extends Enum> = _EnumFormFieldStore<E> with _$EnumFormFieldStore<E>;

<<<<<<< HEAD
abstract class _EnumFormFieldStore<E extends Enum> extends BaseFormFieldStore<E?> with Store {
=======
abstract class _EnumFormFieldStore extends BaseFormFieldStore<Enum?> with Store {
>>>>>>> origin/sealed-class-refactor
  _EnumFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required this.options,
    required super.title,
  });

  final List<E> options;
}
