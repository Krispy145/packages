// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/box_constraints_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "search_bar_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SearchBarModel with SearchBarModelMappable {
  final double? elevation_double;
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ThemeColorString? overlayColor_themeColorString;
  final BorderSideModel? side_borderSide;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;
  final TextStyleString? textStyle_textStyleString;
  final TextStyleString? hintStyle_textStyleString;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? constraints_boxConstraints;
  @MappableValue(TextCapitalization.none)
  final TextCapitalization? textCapitalization_enum_textCapitalization;

  const SearchBarModel({
    this.elevation_double,
    this.backgroundColor_themeColorString,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.overlayColor_themeColorString,
    this.side_borderSide,
    this.shape_outlinedBorder = const OutlinedBorderModel(),
    this.padding_edgeInsets = const EdgeInsetsModel(),
    this.textStyle_textStyleString,
    this.hintStyle_textStyleString,
    this.constraints_boxConstraints = const BoxConstraintsModel(),
    this.textCapitalization_enum_textCapitalization = TextCapitalization.none,
  });

  static const fromMap = SearchBarModelMapper.fromMap;
  static const fromJson = SearchBarModelMapper.fromJson;

  SearchBarThemeData asSearchBarThemeData({String? styleTypeName}) {
    return SearchBarThemeData(
      elevation: MaterialStateProperty.all(elevation_double),
      backgroundColor: MaterialStateProperty.all(
        backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      shadowColor: MaterialStateProperty.all(
        shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      surfaceTintColor: MaterialStateProperty.all(
        surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      overlayColor: MaterialStateProperty.all(
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      side: MaterialStateProperty.all(
        side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
      ),
      shape: MaterialStateProperty.all(
        shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      ),
      padding: MaterialStateProperty.all(
        padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName) ?? EdgeInsets.zero,
      ),
      textStyle: MaterialStateProperty.all(
        textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      ),
      hintStyle: MaterialStateProperty.all(
        hintStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      ),
      constraints: constraints_boxConstraints?.asBoxConstraints(
        styleTypeName: styleTypeName,
      ),
      textCapitalization: textCapitalization_enum_textCapitalization,
    );
  }

  // static const empty = SearchBarModel(id: "");

  // static const searchBarOne = SearchBarModel(
  // id: "searchBarOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const searchBarTwo = SearchBarModel(
  // id: "searchBarTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const searchBarThree = SearchBarModel(
  // id: "searchBarThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<SearchBarModel> fakeData = [
  // searchBarOne,
  // searchBarTwo,
  // searchBarThree,
  // ];
}

// part "search_bar_model.freezed.dart";
// part "search_bar_model.g.dart";

// @freezed
// class SearchBarModel with _$SearchBarModel {
//   const factory SearchBarModel({
//     double? elevation_double,
//     ThemeColorString? backgroundColor_themeColorString,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     ThemeColorString? overlayColor_themeColorString,
//     BorderSideModel? side_borderSide,
//     @MappableValue(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
//     TextStyleString? textStyle_textStyleString,
//     TextStyleString? hintStyle_textStyleString,
//     @MappableValue(BoxConstraintsModel())
//     BoxConstraintsModel? constraints_boxConstraints,
//     @MappableValue(TextCapitalization.none)
//     TextCapitalization? textCapitalization_enum_textCapitalization,
//   }) = _SearchBarModel;

//   const SearchBarModel._();

//   factory SearchBarModel.fromJson(Map<String, dynamic> json) =>
//       _$SearchBarModelFromJson(json);

//   // static SearchBarModel defaultSearchBarModel() {
//   //   return const SearchBarModel(
//   //     elevation: 0.0,
//   //     backgroundColor: "surface",
//   //     shadowColor: "outline",
//   //     surfaceTintColor: "surface",
//   //     overlayColor: "surface",
//   //     side: BorderSide(
//   //       color: Colors.transparent,
//   //       width: 0.0,
//   //     ),
//   //     shape: RoundedRectangleBorder(
//   //         borderRadius: BorderRadius.only(
//   //       topLeft: Radius.circular(0.0),
//   //       topRight: Radius.circular(0.0),
//   //       bottomLeft: Radius.circular(0.0),
//   //       bottomRight: Radius.circular(0.0),
//   //     )),
//   //     padding: EdgeInsets.only(
//   //       left: 16.0,
//   //       right: 16.0,
//   //       bottom: 16.0,
//   //       top: 16.0,
//   //     ),
//   //     textStyle: "body-medium",
//   //     hintStyle: "body-medium",
//   //     constraints: BoxConstraints(
//   //       minHeight: 48.0,
//   //       minWidth: 48.0,
//   //       maxHeight: 960.0,
//   //       maxWidth: 1600.0,
//   //     ),
//   //     textCapitalization: TextCapitalization.none,
//   //   );
//   // }

//   SearchBarThemeData asSearchBarThemeData({String? styleTypeName}) {
//     return SearchBarThemeData(
//       elevation: MaterialStateProperty.all(elevation_double),
//       backgroundColor: MaterialStateProperty.all(
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),),
//       shadowColor: MaterialStateProperty.all(
//           shadowColor_themeColorString?.toColor(styleType: styleTypeName),),
//       surfaceTintColor: MaterialStateProperty.all(
//           surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),),
//       overlayColor: MaterialStateProperty.all(
//           overlayColor_themeColorString?.toColor(styleType: styleTypeName),),
//       side: MaterialStateProperty.all(
//           side_borderSide?.asBorderSide(styleTypeName: styleTypeName),),
//       shape: MaterialStateProperty.all(
//           shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),),
//       padding: MaterialStateProperty.all(
//           padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName) ??
//               EdgeInsets.zero,),
//       textStyle: MaterialStateProperty.all(textStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,),
//       hintStyle: MaterialStateProperty.all(hintStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,),
//       constraints: constraints_boxConstraints?.asBoxConstraints(
//           styleTypeName: styleTypeName,),
//       textCapitalization: textCapitalization_enum_textCapitalization,
//     );
//   }
// }
