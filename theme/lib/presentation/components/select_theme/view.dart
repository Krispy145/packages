// import "package:forms/presentation/components/dropdown/form_field.dart";
// import "package:forms/presentation/components/dropdown/store.dart";
// import "package:theme/app/app.dart";
// import "package:theme/data/models/theme/theme_model.dart";
// import "package:theme/domain/repositories/digital_oasis.repository.dart";
// import "package:theme/presentation/changer/changer.dart";
// import "package:theme/presentation/components/theme_model_reference.dart";

// class SelectThemeField extends DropdownFormField<ThemeModelReference> {
//   SelectThemeField({super.key})
//       : super(
//           showTitle: false,
//           store: DropdownFormFieldStore<ThemeModelReference>(
//             title: "Select Theme",
//             // initialId: AppTheme.baseThemeModel?.id ?? "",
//             matcher: (id, item) {
//               return id == item.themeId;
//             },
//             labelBuilder: (model) => model.name,
//             initialValue: ThemeModelReference(themeId: AppTheme.baseThemeModel?.id ?? "", name: AppTheme.baseThemeModel?.name ?? "No Theme Name"),
//             itemFetcher: (_) async {
//               final repository = PLSRepository();
//               final results = await repository.baseThemeDataSource.getAll();
//               return results.second.whereType<BaseThemeModel>().map((e) => ThemeModelReference(themeId: e.id, name: e.name ?? "No Theme Name")).toList();
//             },
//             onValueChanged: (newValue) {
//               final repository = PLSRepository();
//               if (newValue == null) return;
//               repository.baseThemeDataSource.get(newValue.themeId).then((value) {
//                 if (value.second != null) {
//                   ThemeChanger.changeBaseThemeModel(model: value.second!);
//                 }
//               });
//               repository.componentsThemesDataSource.get(newValue.themeId).then((value) {
//                 if (value.second != null) {
//                   ThemeChanger.changeComponentThemesModel(model: value.second!);
//                 }
//               });
//             },
//           ),
//         );
// }
