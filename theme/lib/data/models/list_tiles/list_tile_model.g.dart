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
      selectedColor_themeColorString:
          json['selectedColor_themeColorString'] as String?,
      iconColor_themeColorString: json['iconColor_themeColorString'] as String?,
      textColor_themeColorString: json['textColor_themeColorString'] as String?,
      titleTextStyle_textStyleString:
          json['titleTextStyle_textStyleString'] as String?,
      subtitleTextStyle_textStyleString:
          json['subtitleTextStyle_textStyleString'] as String?,
      leadingAndTrailingTextStyle_textStyleString:
          json['leadingAndTrailingTextStyle_textStyleString'] as String?,
      contentPadding_edgeInsets: json['contentPadding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['contentPadding_edgeInsets'] as Map<String, dynamic>),
      tileColor_themeColorString: json['tileColor_themeColorString'] as String?,
      selectedTileColor_themeColorString:
          json['selectedTileColor_themeColorString'] as String?,
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
      'selectedColor_themeColorString': instance.selectedColor_themeColorString,
      'iconColor_themeColorString': instance.iconColor_themeColorString,
      'textColor_themeColorString': instance.textColor_themeColorString,
      'titleTextStyle_textStyleString': instance.titleTextStyle_textStyleString,
      'subtitleTextStyle_textStyleString':
          instance.subtitleTextStyle_textStyleString,
      'leadingAndTrailingTextStyle_textStyleString':
          instance.leadingAndTrailingTextStyle_textStyleString,
      'contentPadding_edgeInsets': instance.contentPadding_edgeInsets?.toJson(),
      'tileColor_themeColorString': instance.tileColor_themeColorString,
      'selectedTileColor_themeColorString':
          instance.selectedTileColor_themeColorString,
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
