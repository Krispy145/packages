// ignore_for_file: library_private_types_in_public_api

import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

abstract class FormsModelStore<T> = _FormsModelStore<T> with _$FormsModelStore<T>;

abstract class _FormsModelStore<T> with LoadStateStore, Store {
  // final void Function(T) onValueChanged;
  final Future<RequestResponse> Function(bool isAdding, T value) onValueSaved;
  final bool isAdding;
  final bool startLoaded;

  _FormsModelStore({
    T? editingValue,
    required T empty,
    required this.onValueSaved,
    this.startLoaded = true,
  })  : isAdding = editingValue == null,
        value = editingValue ?? empty {
    if (startLoaded) {
      setLoaded();
    }
  }

  @action
  void onValueChanged(T newValue) {
    value = newValue;
    print("Value changed: $value");
    print("New Value: $newValue");
    print("Value changed: ${value == newValue}");
  }

  @observable
  T value;

  @action
  Future<RequestResponse> saveValue() async {
    print("Saving value: $value");
    return onValueSaved(isAdding, value);
  }
}
