import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:theme/domain/converters/box/constraints.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'search_view_model.freezed.dart';
part 'search_view_model.g.dart';

@freezed
class SearchViewModel with _$SearchViewModel {
  const factory SearchViewModel({
    String? backgroundColor,
    double? elevation,
    String? surfaceTintColor,
    @BoxConstraintsConverter() BoxConstraints? constraints,
    @BorderSideConverter() BorderSide? side,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    String? headerTextStyle,
    String? headerHintStyle,
    String? dividerColor,
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
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      elevation: elevation,
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      constraints: constraints,
      side: side,
      shape: shape,
      headerTextStyle: headerTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      headerHintStyle: headerHintStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      dividerColor: dividerColor?.toColor(styleType: styleTypeName),
    );
  }
}
