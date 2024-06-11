sealed class FormFieldState<T> {}

class FormFieldStateEmpty<T> extends FormFieldState<T> {}

class FormFieldStateRequiresValue<T> extends FormFieldState<T> {}

// class FormFieldStateValidating<T> extends FormFieldState<T> {
//   final T? value;

//   FormFieldStateValidating({this.value});
// }

class FormFieldStateIncomplete<T> extends FormFieldState<T> {
  final String? error;
  final T? value;

  FormFieldStateIncomplete({this.value, this.error});
}

class FormFieldStateInvalid<T> extends FormFieldState<T> {
  final String error;
  final T? invalidValue;

  FormFieldStateInvalid({required this.error, this.invalidValue});
}

class FormFieldStateValid<T> extends FormFieldState<T> {
  final T value;

  FormFieldStateValid(this.value);
}
