// 

// import "dart:async";

// import "package:forms/presentation/components/base/form_field.dart";
// import "package:forms/presentation/components/dropdown/form_field.dart";
// import "package:forms/presentation/components/dropdown/store.dart";
// import "package:forms/presentation/components/text/form_field.dart";
// import "package:forms/presentation/components/text/store.dart";
// import "package:forms/presentation/models/store.dart";
// import "package:mobx/mobx.dart";
// import "package:theme/data/models/theme/theme_model.dart";
// import "package:theme/presentation/components/theme_model_reference.dart";
// import "package:utilities/helpers/extensions/string.dart";

// part "store.g.dart";

// /// [AdditThemeStore] is a class that uses [_AdditThemeStore] to manage state of the announcements feature.
// class AdditThemeStore = _AdditThemeStore with _$AdditThemeStore;

// /// [_AdditThemeStore] is a class that manages the state of the announcements feature.
// abstract class _AdditThemeStore extends FormsModelStore<ThemeModelReference> with Store {
//   _AdditThemeStore({
//     required super.editingValue,
//     super.empty = ThemeModelReference.empty,
//     required super.onValueSaved,
//   }) {
//     getFields();
//   }
//   final LYRepository repository = LYRepository();
//   @observable
//   String themeId = generateUniqueId();

//   late final themeName = TextFormFieldStore(
//     initialValue: value.name,
//     onValueChanged: (newValue) {
//       onValueChanged(
//         value.copyWith(
//           name: newValue,
//           themeId: super.isAdding ? themeId : value.themeId,
//         ),
//       );
//     },
//     title: "Theme Name",
//   );

//   late ObservableMap<String, BaseFormField> formFields;

//   late final doBaseThemes = DropdownFormFieldStore<BaseThemeModel>(
//     initialValue: null,
//     onValueChanged: (newValue) {
//       themeName.value = newValue?.name;
//       if (newValue != null) {
//         formFields.addAll({
//           "title": LYTextFormField(store: themeName..value = newValue.name ?? ""),
//         });
//       }
//       onValueChanged(
//         value.copyWith(
//           themeId: newValue?.id,
//           name: newValue?.name,
//         ),
//       );
//     },
//     showSearch: false,
//     itemFetcher: (_) async {
//       final results = await repository.baseThemeDataSource.getAll();
//       return Future.value(results.second.whereType<BaseThemeModel>().toList());
//     },
//     title: "Themes",
//     labelBuilder: (theme) => theme.name ?? "No Name",
//   );

//   void getFields() {
//     setLoading();
//     final result = <String, BaseFormField>{};
//     if (!isAdding) {
//       result["themes"] = DropdownFormField<BaseThemeModel>(store: doBaseThemes);
//     } else {
//       result["title"] = LYTextFormField(store: themeName);
//     }
//     formFields = ObservableMap.of(result);
//     setLoaded();
//   }
// }
