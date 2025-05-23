// ignore_for_file: library_private_types_in_public_api

import "dart:async";

import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/widgets/load_state/store.dart";

part "step_store.g.dart";

abstract class ReactiveStepFormsModelStore = _ReactiveStepFormsModelStore
    with _$ReactiveStepFormsModelStore;

abstract class _ReactiveStepFormsModelStore with LoadStateStore, Store {
  final Map<String, dynamic>? editingValue;

  final String successMessage = "Success";

  final String errorMessage = "Error";

  final String underReviewMessage = "Under Review";

  final String permissionDeniedMessage =
      "You do not have permission to do this.";

  @observable
  FormGroup form = FormGroup({});

  FormControl<V> formControlByKey<V>(String key) =>
      form.control(key) as FormControl<V>;

  final bool isAdding;

  _ReactiveStepFormsModelStore({
    required this.editingValue,
  }) : isAdding = editingValue == null {
    initialize();
  }

  @action
  @mustCallSuper
  Future<void> initialize() async {
    setLoaded();
  }

  @action
  FutureOr<Map<String, dynamic>?> prepareValueFromForm() => null;
}
