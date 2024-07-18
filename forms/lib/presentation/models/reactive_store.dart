// ignore_for_file: library_private_types_in_public_api

import "dart:async";

import "package:mobx/mobx.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/widgets/load_state/store.dart";

part "reactive_store.g.dart";

abstract class ReactiveFormsModelStore<T> = _ReactiveFormsModelStore<T> with _$ReactiveFormsModelStore<T>;

abstract class _ReactiveFormsModelStore<T> with LoadStateStore, Store {
  final bool isAdding;

  final T? editingValue;

  final Future<RequestResponse> Function(bool isAdding, T value) saveValue;

  final FormGroup form = FormGroup({});

  FormControl<V> formControlByKey<V>(String key) => form.control(key) as FormControl<V>;

  _ReactiveFormsModelStore({
    required this.saveValue,
    this.editingValue,
  }) : isAdding = editingValue == null;

  @action
  Future<RequestResponse> submitPressed() async {
    setLoading();
    final value = await prepareValueFromForm();
    if (value == null) {
      setError("Failed to prepare value from form");
      return RequestResponse.failure;
    }
    final response = await saveValue(isAdding, value);
    if (response == RequestResponse.success || response == RequestResponse.underReview) {
      setLoaded();
    } else {
      setError("Failed to save value");
    }
    return response;
  }

  @action
  FutureOr<T?> prepareValueFromForm() => null;
}
