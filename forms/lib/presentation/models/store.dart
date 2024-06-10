// ignore_for_file: library_private_types_in_public_api

import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

abstract class FormsModelStore<T> = _FormsModelStore<T> with _$FormsModelStore<T>;

abstract class _FormsModelStore<T> extends LoadStateStore with Store {
  // final void Function(T) onValueChanged;
  final Future<RequestResponse> Function(bool isAdding, T value) onValueSaved;

  _FormsModelStore({
    T? editingValue,
    required T empty,
    required this.onValueSaved,
  })  : isAdding = editingValue == null,
        value = editingValue ?? empty {
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
  Future<RequestResponse> saveValue() async {
    print("Saving value: $value");
    return onValueSaved(isAdding, value);
  }
}
