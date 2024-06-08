// ignore_for_file: library_private_types_in_public_api

import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/layouts/list/store.dart";

part "store.g.dart";

abstract class FormsModelStore<T> = _FormsModelStore<T> with _$FormsModelStore<T>;

abstract class _FormsModelStore<T> extends ListStore<T> with Store {
  // final void Function(T) onValueChanged;
  final Future<RequestResponse> Function(bool isAdding, T value) onValueSaved;
  final bool isAdding;
  final bool startLoaded;

  _FormsModelStore({
    required this.value,
    required this.isAdding,
    this.startLoaded = true,
    // required this.onValueChanged,
    required this.onValueSaved,
  }) {
    if (startLoaded) {
      setLoaded();
    }
  }

  @action
  void onValueChanged(T newValue) {
    print("Value changed: $newValue");
    value = newValue;
  }

  @observable
  T value;

  @action
  Future<RequestResponse> saveValue() async {
    print("Saving value: $value");
    return onValueSaved(isAdding, value);
  }
}
