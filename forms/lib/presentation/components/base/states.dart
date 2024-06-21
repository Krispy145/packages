sealed class FieldState<T> {
  bool get canUseValue;
}

class EmptyFormFieldState<T> extends FieldState<T> {
  @override
  bool get canUseValue => true;
}

class EmptyRequiresValueFormFieldState<T> extends FieldState<T> {
  final String fieldRequiredMessage;
  EmptyRequiresValueFormFieldState({this.fieldRequiredMessage = "Field cannot be empty"});

  @override
  bool get canUseValue => false;
}

class IncompleteFormFieldState<T> extends FieldState<T> {
  final String? error;
  final T? value;

  IncompleteFormFieldState({this.value, this.error});

  @override
  bool get canUseValue => false;
}

class ErrorFormFieldState<T> extends FieldState<T> {
  final String error;
  final T? invalidValue;

  ErrorFormFieldState({required this.error, required this.invalidValue});

  @override
  bool get canUseValue => false;
}

class ValidFormFieldState<T> extends FieldState<T> {
  final T value;

  ValidFormFieldState(this.value);

  @override
  bool get canUseValue => true;
}
