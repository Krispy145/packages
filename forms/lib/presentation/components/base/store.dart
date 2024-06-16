// ignore_for_file: library_private_types_in_public_api

import "package:forms/utils/states.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

class BaseFormFieldStore<T> = _BaseFormFieldStore<T> with _$BaseFormFieldStore<T>;

abstract class _BaseFormFieldStore<T> extends LoadStateStore with Store {
  final void Function(T) onValueChanged;

  @observable
  late FormFieldState<T> state;

  @observable
  late T value;

  final FormFieldState<T> Function(T?)? validate;

  final String title;

  // final bool required;

  _BaseFormFieldStore({
    required this.title,
    required this.value,
    required this.onValueChanged,
    // this.required = false,
    this.validate,
  }) {
    if (value == null
        //  && required
        ) {
      state = FormFieldStateRequiresValue<T>();
    } else {
      state = validate?.call(value) ?? FormFieldStateValid(value);
    }
    reaction((r) => value, (value) {
      state = validate?.call(value) ?? FormFieldStateValid(value);
      onValueChanged(value); // TODO: Handle validation logic first
    });
    setLoaded();
  }
}
