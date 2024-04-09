// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListTileModelImpl _$$ListTileModelImplFromJson(Map<String, dynamic> json) =>
    _$ListTileModelImpl(
      dense_bool: json['dense_bool'] as bool?,
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
      selectedColor_color: json['selectedColor_color'] as String?,
      iconColor_color: json['iconColor_color'] as String?,
      textColor_color: json['textColor_color'] as String?,
      titleTextStyle_textStyle: json['titleTextStyle_textStyle'] as String?,
      subtitleTextStyle_textStyle:
          json['subtitleTextStyle_textStyle'] as String?,
      leadingAndTrailingTextStyle_textStyle:
          json['leadingAndTrailingTextStyle_textStyle'] as String?,
      contentPadding_edgeInsets: json['contentPadding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['contentPadding_edgeInsets'] as Map<String, dynamic>),
      tileColor_color: json['tileColor_color'] as String?,
      selectedTileColor_color: json['selectedTileColor_color'] as String?,
      horizontalTitleGap_double:
          (json['horizontalTitleGap_double'] as num?)?.toDouble(),
      minVerticalPadding_double:
          (json['minVerticalPadding_double'] as num?)?.toDouble(),
      minLeadingWidth_double:
          (json['minLeadingWidth_double'] as num?)?.toDouble(),
      enableFeedback_bool: json['enableFeedback_bool'] as bool?,
      titleAlignment_enum_listTileTitleAlignment: $enumDecodeNullable(
          _$ListTileTitleAlignmentEnumMap,
          json['titleAlignment_enum_listTileTitleAlignment']),
    );

Map<String, dynamic> _$$ListTileModelImplToJson(_$ListTileModelImpl instance) =>
    <String, dynamic>{
      'dense_bool': instance.dense_bool,
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
      'selectedColor_color': instance.selectedColor_color,
      'iconColor_color': instance.iconColor_color,
      'textColor_color': instance.textColor_color,
      'titleTextStyle_textStyle': instance.titleTextStyle_textStyle,
      'subtitleTextStyle_textStyle': instance.subtitleTextStyle_textStyle,
      'leadingAndTrailingTextStyle_textStyle':
          instance.leadingAndTrailingTextStyle_textStyle,
      'contentPadding_edgeInsets': instance.contentPadding_edgeInsets?.toJson(),
      'tileColor_color': instance.tileColor_color,
      'selectedTileColor_color': instance.selectedTileColor_color,
      'horizontalTitleGap_double': instance.horizontalTitleGap_double,
      'minVerticalPadding_double': instance.minVerticalPadding_double,
      'minLeadingWidth_double': instance.minLeadingWidth_double,
      'enableFeedback_bool': instance.enableFeedback_bool,
      'titleAlignment_enum_listTileTitleAlignment':
          _$ListTileTitleAlignmentEnumMap[
              instance.titleAlignment_enum_listTileTitleAlignment],
    };

const _$ListTileTitleAlignmentEnumMap = {
  ListTileTitleAlignment.threeLine: 'threeLine',
  ListTileTitleAlignment.titleHeight: 'titleHeight',
  ListTileTitleAlignment.top: 'top',
  ListTileTitleAlignment.center: 'center',
  ListTileTitleAlignment.bottom: 'bottom',
};
