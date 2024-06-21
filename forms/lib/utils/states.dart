// sealed class FormFieldState<T> {
//   bool get canUseValue;
// }

// class FormFieldStateEmpty<T> extends FormFieldState<T> {
//   @override
//   bool get canUseValue => true;
// }

// class FormFieldStateRequiresValue<T> extends FormFieldState<T> {
//   @override
//   bool get canUseValue => false;
// }

// class FormFieldStateIncomplete<T> extends FormFieldState<T> {
//   final String? error;
//   final T? value;

//   FormFieldStateIncomplete({this.value, this.error});

//   @override
//   bool get canUseValue => false;
// }

// class FormFieldStateInvalid<T> extends FormFieldState<T> {
//   final String error;
//   final T? invalidValue;

//   FormFieldStateInvalid({required this.error, this.invalidValue});

//   @override
//   bool get canUseValue => false;
// }

// class FormFieldStateValid<T> extends FormFieldState<T> {
//   final T value;

//   FormFieldStateValid(this.value);

//   @override
//   bool get canUseValue => true;
// }
