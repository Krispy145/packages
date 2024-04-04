// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/data/models/box_constraints_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'search_view_model.freezed.dart';
part 'search_view_model.g.dart';

@freezed
class SearchViewModel with _$SearchViewModel {
  const factory SearchViewModel({
    ThemeColorString? backgroundColor_color,
    double? elevation_double,
    ThemeColorString? surfaceTintColor_color,
    @Default(BoxConstraintsModel()) BoxConstraintsModel? constraints_boxConstraints,
    BorderSideModel? side_borderSide,
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    TextStyleString? headerTextStyle_textStyle,
    TextStyleString? headerHintStyle_textStyle,
    ThemeColorString? dividerColor_color,
  }) = _SearchViewModel;

  const SearchViewModel._();

  factory SearchViewModel.fromJson(Map<String, dynamic> json) => _$SearchViewModelFromJson(json);

  // static SearchViewModel defaultSearchViewModel() {
  //   return const SearchViewModel(
  //     backgroundColor: "surface",
  //     elevation: 0.0,
  //     surfaceTintColor: "surface",
  //     constraints: BoxConstraints(
  //       minHeight: 56.0,
  //       maxHeight: 960.0,
  //       maxWidth: 1600,
  //       minWidth: 400,
  //     ),
  //     side: BorderSide(
  //       color: Colors.transparent,
  //       width: 0.0,
  //     ),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     headerTextStyle: "body-medium",
  //     headerHintStyle: "body-medium",
  //     dividerColor: "surface",
  //   );
  // }

  SearchViewThemeData asSearchViewThemeData({String? styleTypeName}) {
    return SearchViewThemeData(
      backgroundColor: backgroundColor_color?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      surfaceTintColor: surfaceTintColor_color?.toColor(styleType: styleTypeName),
      constraints: constraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      headerTextStyle: headerTextStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      headerHintStyle: headerHintStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      dividerColor: dividerColor_color?.toColor(styleType: styleTypeName),
    );
  }
}
