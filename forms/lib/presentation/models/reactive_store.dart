// ignore_for_file: library_private_types_in_public_api

import "dart:async";

import "package:mobx/mobx.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/widgets/load_state/store.dart";

part "reactive_store.g.dart";

abstract class ReactiveFormsModelStore<T> = _ReactiveFormsModelStore<T> with _$ReactiveFormsModelStore<T>;

abstract class _ReactiveFormsModelStore<T> with LoadStateStore, Store {
  final bool isAdding;

  final T? editingValue;

  final String successMessage = "Success";

  final String errorMessage = "Error";

  final String underReviewMessage = "Under Review";

  final String permissionDeniedMessage = "You do not have permission to do this.";

  final Future<RequestResponse> Function(bool isAdding, T value)? saveValue;

  final FormGroup form = FormGroup({});

  FormControl<V> formControlByKey<V>(String key) => form.control(key) as FormControl<V>;

  _ReactiveFormsModelStore({
    required this.saveValue,
    this.editingValue,
  }) : isAdding = editingValue == null;

  @action
  Future<RequestResponse> submitPressed(void Function(SnackbarConfiguration configuration) showSnackbar, void Function(RequestResponse response) onBack) async {
    setLoading();
    final value = await prepareValueFromForm();
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
        showSnackbar(SnackbarConfiguration.confirmation(title: successMessage));
        break;
      case RequestResponse.failure:
        showSnackbar(SnackbarConfiguration.error(title: errorMessage));
        break;
      case RequestResponse.underReview:
        showSnackbar(SnackbarConfiguration.information(title: underReviewMessage));
        break;
      case RequestResponse.denied:
        showSnackbar(SnackbarConfiguration.error(title: permissionDeniedMessage));
        break;
      case RequestResponse.cancelled:
        showSnackbar(SnackbarConfiguration.warning(title: "Request Cancelled"));
        break;
    }
    // return response;
    // if (response == RequestResponse.success) {
    //   showSnackbar(SnackbarConfiguration.confirmation(title: successMessage));
    // } else if (response == RequestResponse.failure) {
    //   showSnackbar(SnackbarConfiguration.error(title: errorMessage));
    // } else if (response == RequestResponse.underReview) {
    //   showSnackbar(SnackbarConfiguration.information(title: underReviewMessage));
    // }
    onBack.call(response);
    return response;
  }

  @action
  FutureOr<T?> prepareValueFromForm() => null;
}
