// import "base/store.dart";
// import "bool/store.dart";
// import "double/store.dart";
// import "int/store.dart";
// import "text/store.dart";

// enum FormFieldType {
//   boolField,
//   borderRadiusField,
//   borderSideField,
//   colorField,
//   doubleField,
//   dropdownField,
//   durationField,
//   edgeInsetsField,
//   enumField,
//   fontField,
//   inputBorderField,
//   intField,
//   outlinedBorderField,
//   textField,
//   textStyleField,
//   themeColorField,
//   mapField,
//   searchMapField,
//   permissionsField,
//   dateAndTimeField,
//   tagsField,
//   imagesField;

<<<<<<< HEAD
//   BaseFormFieldStore<dynamic> buildStore<T>({
//     required T value,
//     required void Function(T?) onValueChanged,
//     required String title,
//   }) {
//     switch (this) {
//       case FormFieldType.boolField:
//         return BoolFormFieldStore(
//           value: value as bool,
//           onValueChanged: (value) => onValueChanged(value as T?),
//           title: title,
//         );
//       // case FormFieldType.borderRadiusField:
//       //   return BorderRadiusFormFieldStore();
//       // case FormFieldType.borderSideField:
//       //   return BorderSideFormFieldStore();
//       // case FormFieldType.colorField:
//       //   return ColorFormFieldStore();
//       case FormFieldType.doubleField:
//         return DoubleFormFieldStore(
//           value: value as double,
//           onValueChanged: (value) => onValueChanged(value as T?),
//           title: title,
//         );
//       // case FormFieldType.dropdownField:
//       //   return DropdownFormFieldStore(
//       //     value: value,
//       //     onValueChanged: (value) => onValueChanged(value as T?),
//       //     title: title,
//       //   );
//       // case FormFieldType.durationField:
//       //   return DurationFormFieldStore();
//       // case FormFieldType.edgeInsetsField:
//       //   return EdgeInsetsFormFieldStore();
//       // case FormFieldType.enumField:
//       //   return EnumFormFieldStore(
//       //     value: value as Enum,
//       //     onValueChanged: (value) => onValueChanged(value as T?),
//       //     title: title,
//       //   );
//       // case FormFieldType.fontField:
//       //   return FontFormFieldStore();
//       // case FormFieldType.inputBorderField:
//       //   return InputBorderFormFieldStore();
//       case FormFieldType.intField:
//         return IntFormFieldStore(
//           value: value as int,
//           onValueChanged: (value) => onValueChanged(value as T?),
//           title: title,
//         );
//       // case FormFieldType.outlinedBorderField:
//       //   return OutlinedBorderFormFieldStore();
//       case FormFieldType.textField:
//         return TextFormFieldStore(
//           value: value as String,
//           onValueChanged: (value) => onValueChanged(value as T?),
//           title: title,
//         );

//       default:
//         return TextFormFieldStore(
//           value: value as String,
//           onValueChanged: (value) => onValueChanged(value as T?),
//           title: title,
//         );
=======
  BaseFormFieldStore<dynamic> buildStore<T>({
    required T value,
    required void Function(T?) onValueChanged,
    required String title,
  }) {
    switch (this) {
      case FormFieldType.boolField:
        return BoolFormFieldStore(
          initialValue: value as bool?,
          onValueChanged: (value) => onValueChanged(value as T?),
          title: title,
        );
      // case FormFieldType.borderRadiusField:
      //   return BorderRadiusFormFieldStore();
      // case FormFieldType.borderSideField:
      //   return BorderSideFormFieldStore();
      // case FormFieldType.colorField:
      //   return ColorFormFieldStore();
      case FormFieldType.doubleField:
        return DoubleFormFieldStore(
          initialValue: value as double?,
          onValueChanged: (value) => onValueChanged(value as T?),
          title: title,
        );
      // case FormFieldType.dropdownField:
      //   return DropdownFormFieldStore(
      //     initialValue: value,
      //     onValueChanged: (value) => onValueChanged(value as T?),
      //     title: title,
      //   );
      // case FormFieldType.durationField:
      //   return DurationFormFieldStore();
      // case FormFieldType.edgeInsetsField:
      //   return EdgeInsetsFormFieldStore();
      // case FormFieldType.enumField:
      //   return EnumFormFieldStore(
      //     initialValue: value as Enum,
      //     onValueChanged: (value) => onValueChanged(value as T?),
      //     title: title,
      //   );
      // case FormFieldType.fontField:
      //   return FontFormFieldStore();
      // case FormFieldType.inputBorderField:
      //   return InputBorderFormFieldStore();
      case FormFieldType.intField:
        return IntFormFieldStore(
          initialValue: value as int?,
          onValueChanged: (value) => onValueChanged(value as T?),
          title: title,
        );
      // case FormFieldType.outlinedBorderField:
      //   return OutlinedBorderFormFieldStore();
      case FormFieldType.textField:
        return TextFormFieldStore(
          initialValue: value as String?,
          onValueChanged: (value) => onValueChanged(value as T?),
          title: title,
        );

      default:
        return TextFormFieldStore(
          initialValue: value as String?,
          onValueChanged: (value) => onValueChanged(value as T?),
          title: title,
        );
>>>>>>> origin/sealed-class-refactor

//       // case FormFieldType.textStyleField:
//       //   return TextStyleStringFormFieldStore();
//       // case FormFieldType.themeColorField:
//       //   return ThemeColorStringFormFieldStore();
//       // case FormFieldType.mapField:
//       //   return EditLocationMapFormFieldStore();
//       // case FormFieldType.searchMapField:
//       //   return GooglePlaceSearchFormFieldStore();
//     }
//   }
// }
