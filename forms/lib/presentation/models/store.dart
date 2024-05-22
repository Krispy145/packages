// ignore_for_file: library_private_types_in_public_api

import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

abstract class FormsModelStore<T> = _FormsModelStore<T> with _$FormsModelStore<T>;

abstract class _FormsModelStore<T> extends LoadStateStore with Store {
  // final void Function(T) onValueChanged;
  final void Function(T value, bool adding) onValueSaved;

  _FormsModelStore({
    required this.value,
    // required this.onValueChanged,
    required this.isAdding,
    required this.onValueSaved,
  }) {
    // reaction((r) => value, onValueChanged);
    setLoaded();
  }

  final bool isAdding;

  @action
  void onValueChanged(T newValue) {
    value = newValue;
  }

  @observable
  T value;

  @action
  void saveValue() {
    onValueSaved(value, isAdding);
  }
}
