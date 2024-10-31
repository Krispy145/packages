// import "package:flutter/material.dart";
// import "package:forms/presentation/components/dropdown/form_field.dart";
// import "package:forms/presentation/components/dropdown/store.dart";
// import "package:reactive_forms/reactive_forms.dart";

// class LYReactiveDropdownField<T> extends ReactiveFormField<String, String> {
//   LYReactiveDropdownField({
//     super.key,
//     super.formControlName,
//     super.formControl,
//     super.validationMessages,
//     super.valueAccessor,
//     super.showErrors,
//     super.focusNode,
//     // void Function(FormControl<T>)? onValueChanged,
//     required String title,
//     required String Function(T) labelBuilder,
//     required String Function(T item) idFromItem,
//     bool Function(String, T)? matcher,
//     String? Function(T)? subtitleBuilder,
//     Widget? Function(T)? leadingBuilder,
//     Future<List<T>?> Function(String?)? itemFetcher,
//     List<T>? initialItems,
//     T? selectedItem,
//     String emptyMessage = "No items found",
//     String errorMessage = "Error loading items",
//   }) : super(
//           builder: (field) {
//            debugPrint("DROPDOWN: Rebuilding field in super");
//             final store = DropdownFormFieldStore<T>(
//               selectedId: field.value,
//               matcher: matcher,
//               initialValue: selectedItem,
//               labelBuilder: labelBuilder,
//               subtitleBuilder: subtitleBuilder,
//               leadingBuilder: leadingBuilder,
//               itemFetcher: itemFetcher,
//               initialItems: initialItems,
//               selectedItem: selectedItem,
//               emptyMessage: emptyMessage,
//               errorMessage: errorMessage,
//               title: title,
//               onValueChanged: (item) {
//                debugPrint("DROPDOWN: DID CHANGE $title: $item -> ${item != null ? idFromItem(item) : null}");
//                 field.didChange(item != null ? idFromItem(item) : null);
//               },
//             );
//             return DropdownFormField(store: store);
//           },
//         );

//   @override
//   ReactiveFormFieldState<String, String> createState() => ReactiveFormFieldState<String, String>();
// }

// // class _ReactiveDropdownFieldState<T> extends ReactiveFormFieldState<T, List<String>> {
// //   _ReactiveDropdownFieldState();

// //   @override
// //   void onControlValueChanged(dynamic value) {
// //     //
// //     super.onControlValueChanged(value);
// //   }

// //   @override
// //   void dispose() {
// //     //
// //     super.dispose();
// //   }
// // }
