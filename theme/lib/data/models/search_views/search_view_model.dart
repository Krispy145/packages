// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/box_constraints_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "search_view_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SearchViewModel with SearchViewModelMappable {
  final ThemeColorString? backgroundColor_themeColorString;
  final double? elevation_double;
  final ThemeColorString? surfaceTintColor_themeColorString;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? constraints_boxConstraints;
  final BorderSideModel? side_borderSide;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;
  final TextStyleString? headerTextStyle_textStyleString;
  final TextStyleString? headerHintStyle_textStyleString;
  final ThemeColorString? dividerColor_themeColorString;

  const SearchViewModel({
    this.backgroundColor_themeColorString,
    this.elevation_double,
    this.surfaceTintColor_themeColorString,
    this.constraints_boxConstraints = const BoxConstraintsModel(),
    this.side_borderSide,
    this.shape_outlinedBorder = const OutlinedBorderModel(),
    this.headerTextStyle_textStyleString,
    this.headerHintStyle_textStyleString,
    this.dividerColor_themeColorString,
  });

  static const fromMap = SearchViewModelMapper.fromMap;
  static const fromJson = SearchViewModelMapper.fromJson;

  SearchViewThemeData asSearchViewThemeData({String? styleTypeName}) {
    return SearchViewThemeData(
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      constraints: constraints_boxConstraints?.asBoxConstraints(
        styleTypeName: styleTypeName,
      ),
      side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      headerTextStyle: headerTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      headerHintStyle: headerHintStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      dividerColor: dividerColor_themeColorString?.toColor(styleType: styleTypeName),
    );
  }

  // static const empty = SearchViewModel(id: "");

  // static const searchViewOne = SearchViewModel(
  // id: "searchViewOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const searchViewTwo = SearchViewModel(
  // id: "searchViewTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const searchViewThree = SearchViewModel(
  // id: "searchViewThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<SearchViewModel> fakeData = [
  // searchViewOne,
  // searchViewTwo,
  // searchViewThree,
  // ];
}

// part "search_view_model.freezed.dart";
// part "search_view_model.g.dart";

// @freezed
// class SearchViewModel with _$SearchViewModel {
//   const factory SearchViewModel({
//     ThemeColorString? backgroundColor_themeColorString,
//     double? elevation_double,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     @MappableValue(BoxConstraintsModel())
//     BoxConstraintsModel? constraints_boxConstraints,
//     BorderSideModel? side_borderSide,
//     @MappableValue(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
//     TextStyleString? headerTextStyle_textStyleString,
//     TextStyleString? headerHintStyle_textStyleString,
//     ThemeColorString? dividerColor_themeColorString,
//   }) = _SearchViewModel;

//   const SearchViewModel._();

//   factory SearchViewModel.fromJson(Map<String, dynamic> json) =>
//       _$SearchViewModelFromJson(json);

//   // static SearchViewModel defaultSearchViewModel() {
//   //   return const SearchViewModel(
//   //     backgroundColor: "surface",
//   //     elevation: 0.0,
//   //     surfaceTintColor: "surface",
//   //     constraints: BoxConstraints(
//   //       minHeight: 56.0,
//   //       maxHeight: 960.0,
//   //       maxWidth: 1600,
//   //       minWidth: 400,
//   //     ),
//   //     side: BorderSide(
//   //       color: Colors.transparent,
//   //       width: 0.0,
//   //     ),
//   //     shape: RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.only(
//   //         topLeft: Radius.circular(0.0),
//   //         topRight: Radius.circular(0.0),
//   //         bottomLeft: Radius.circular(0.0),
//   //         bottomRight: Radius.circular(0.0),
//   //       ),
//   //     ),
//   //     headerTextStyle: "body-medium",
//   //     headerHintStyle: "body-medium",
//   //     dividerColor: "surface",
//   //   );
//   // }

//   SearchViewThemeData asSearchViewThemeData({String? styleTypeName}) {
//     return SearchViewThemeData(
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       elevation: elevation_double,
//       surfaceTintColor:
//           surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
//       constraints: constraints_boxConstraints?.asBoxConstraints(
//           styleTypeName: styleTypeName,),
//       side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
//       shape:
//           shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
//       headerTextStyle: headerTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       headerHintStyle: headerHintStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       dividerColor:
//           dividerColor_themeColorString?.toColor(styleType: styleTypeName),
//     );
//   }
// }
