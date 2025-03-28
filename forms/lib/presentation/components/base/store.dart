// ignore_for_file: library_private_types_in_public_api

import "package:forms/presentation/components/base/states.dart";
import "package:mobx/mobx.dart";

part "store.g.dart";

class BaseFormFieldStore<T> = _BaseFormFieldStore<T>
    with _$BaseFormFieldStore<T>;

abstract class _BaseFormFieldStore<T> with Store {
  final void Function(T?) onValueChanged;

  @observable
  late T? value;

  // @action
  // // ignore: use_setters_to_change_properties
  // void setLoading(bool loading) => isLoading = loading;

  //
  FieldState<T> validate(T value) => ValidFormFieldState(value);

  final String title;

  final String fieldRequiredMessage = "Field required";

  final bool fieldRequired;

  _BaseFormFieldStore({
    required this.title,
    T? initialValue,
    required this.onValueChanged,
    this.fieldRequired = false,
  }) : value = initialValue {
    // valueChangeReaction();
    reaction((p0) => value, (p0) {
      valueChangeReaction();
    });
  }

  void valueChangeReaction() {
    onValueChanged(value);
    // if (value == null) {
    //   fieldState = fieldRequired ? EmptyRequiresValueFormFieldState<T>() : EmptyFormFieldState();
    // } else {
    //   fieldState = validate(value as T);
    // }
    // onValueChanged(fieldState.canUseValue ? value : null);
  }

  ///
  /// STATES
  ///

  /// [fieldState] is the state that will be used to manage the state of the loading.
  @observable
  late FieldState<T> fieldState;

  /// [isFieldValid] is a getter that will be used to check if the user is loaded.
  @computed
  bool get isFieldValid => fieldState is ValidFormFieldState;

  /// [isFieldEmpty] is a getter that will be used to check if the user is empty.
  @computed
  bool get isFieldEmpty => fieldState is EmptyFormFieldState;

  /// [isFieldError] is a getter that will be used to check if the user is error.
  @computed
  bool get isFieldError => fieldState is ErrorFormFieldState;

  /// [setFieldValid] is a method that will be used to set the state to loaded.
  @action
  void setFieldValid() {
    if (value == null) {
      fieldState = EmptyFormFieldState();
    } else {
      fieldState = ValidFormFieldState(value as T);
    }
  }

  /// [setFieldEmpty] is a method that will be used to set the state to empty.
  @action
  void setFieldEmpty() {
    if (fieldRequired) {
      fieldState = EmptyRequiresValueFormFieldState(
        fieldRequiredMessage: fieldRequiredMessage,
      );
    } else {
      fieldState = EmptyFormFieldState();
    }
  }

  /// [setFieldIncomplete] is a method that will be used to set the state to empty.
  @action
  void setFieldIncomplete(String incompleteMessage) {
    fieldState =
        IncompleteFormFieldState(value: value, error: incompleteMessage);
  }

  /// [setFieldError] is a method that will be used to set the state to error.
  @action
  void setFieldError(String errorMessage) {
    fieldState = ErrorFormFieldState(invalidValue: value, error: errorMessage);
  }
}
