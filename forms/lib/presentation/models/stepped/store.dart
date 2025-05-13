// ignore_for_file: library_private_types_in_public_api

import "dart:async";

import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/widgets/load_state/store.dart";

import "step_store.dart";

part "store.g.dart";

abstract class SteppedReactiveFormsModelStore<T> = _SteppedReactiveFormsModelStore<T> with _$SteppedReactiveFormsModelStore<T>;

abstract class _SteppedReactiveFormsModelStore<T> with LoadStateStore, Store {
  final String? successSnackbarTitle;
  final String? failureSnackbarTitle;
  final String? underReviewSnackbarTitle;
  final String? deniedSnackbarTitle;
  final String? cancelledSnackbarTitle;
  final Map<Enum, ReactiveStepFormsModelStore> stepStores;
  final List<Enum> steps;
  final Future<RequestResponse> Function(bool isAdding, T value)? saveValue;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  final bool isAdding;
  T? editingValue;

  // Track navigation direction for animations
  @observable
  bool isForwardNavigation = true;

  @observable
  int currentStepIndex = 0;

  @observable
  bool isSubmitting = false;

  _SteppedReactiveFormsModelStore({
    this.stepStores = const {},
    this.editingValue,
    this.saveValue,
    this.successSnackbarTitle,
    this.failureSnackbarTitle,
    this.underReviewSnackbarTitle,
    this.deniedSnackbarTitle,
    this.cancelledSnackbarTitle,
    required this.convertDataTypeFromMap,
    required this.steps,
  }) : isAdding = editingValue == null {
    initialize();
  }

  @action
  @mustCallSuper
  Future<void> initialize() async {
    setLoaded();
  }

  @computed
  bool get isFirstStep => currentStepIndex == 0;

  @computed
  bool get isLastStep => currentStepIndex == steps.length - 1;

  @computed
  bool get canProceed {
    final currentStore = stepStores[steps.elementAt(currentStepIndex)];
    return currentStore?.form.valid ?? false;
  }

  @action
  Future<bool> nextStep() async {
    isForwardNavigation = true;
    if (!isLastStep && canProceed) {
      currentStepIndex++;
      return true;
    }
    return false;
  }

  @action
  void previousStep() {
    isForwardNavigation = false;
    if (!isFirstStep) {
      currentStepIndex--;
    }
  }

  @action
  @mustCallSuper
  Future<RequestResponse> submitPressed(
    void Function(SnackbarConfiguration configuration) showSnackbar,
    void Function(RequestResponse response) onBack,
  ) async {
    if (!isLastStep || !canProceed) return RequestResponse.failure;

    isSubmitting = true;
    setLoading();

    try {
      final value = await prepareValueFromForm();
      print("STEPPED STORE::: value: $value");
      if (value == null) {
        setError("Failed to prepare value from form");
        return RequestResponse.failure;
      }

      final response = await saveValue?.call(isAdding, value);
      if (response == null) {
        setError("Failed to save value");
        return RequestResponse.failure;
      }

      if (response == RequestResponse.success || response == RequestResponse.underReview) {
        setLoaded();
      } else {
        setError("Failed to save value");
      }

      switch (response) {
        case RequestResponse.success:
          showSnackbar(
            SnackbarConfiguration.confirmation(
              title: successSnackbarTitle ?? "Success",
            ),
          );
          break;
        case RequestResponse.failure:
          showSnackbar(
            SnackbarConfiguration.error(
              title: failureSnackbarTitle ?? "Error",
            ),
          );
          break;
        case RequestResponse.underReview:
          showSnackbar(
            SnackbarConfiguration.information(
              title: underReviewSnackbarTitle ?? "Under Review",
            ),
          );
          break;
        case RequestResponse.denied:
          showSnackbar(
            SnackbarConfiguration.error(
              title: deniedSnackbarTitle ?? "Permission Denied",
            ),
          );
          break;
        case RequestResponse.cancelled:
          showSnackbar(
            SnackbarConfiguration.warning(
              title: cancelledSnackbarTitle ?? "Request Cancelled",
            ),
          );
          break;
      }

      onBack.call(response);
      return response;
    } finally {
      isSubmitting = false;
    }
  }

  @action
  Future<T?> prepareValueFromForm() async {
    // Combine values from all step stores
    final combinedValues = <String, dynamic>{};
    try {
      for (final store in stepStores.entries) {
        try {
          final stepValue = await store.value.prepareValueFromForm();
          if (stepValue != null) {
            combinedValues.addAll(stepValue);
          }
        } catch (e) {
          return null;
        }
      }

      return convertDataTypeFromMap(combinedValues);
    } catch (e) {
      return null;
    }
  }
}
