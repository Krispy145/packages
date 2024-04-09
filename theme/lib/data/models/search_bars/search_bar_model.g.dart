// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchBarModelImpl _$$SearchBarModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchBarModelImpl(
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      overlayColor_themeColorString:
          json['overlayColor_themeColorString'] as String?,
      side_borderSide: json['side_borderSide'] == null
          ? null
          : BorderSideModel.fromJson(
              json['side_borderSide'] as Map<String, dynamic>),
      shape_outlinedBorder: json['shape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['shape_outlinedBorder'] as Map<String, dynamic>),
      padding_edgeInsets: json['padding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['padding_edgeInsets'] as Map<String, dynamic>),
      textStyle_textStyleString: json['textStyle_textStyleString'] as String?,
      hintStyle_textStyleString: json['hintStyle_textStyleString'] as String?,
      constraints_boxConstraints: json['constraints_boxConstraints'] == null
          ? const BoxConstraintsModel()
          : BoxConstraintsModel.fromJson(
              json['constraints_boxConstraints'] as Map<String, dynamic>),
      textCapitalization_enum_textCapitalization: $enumDecodeNullable(
              _$TextCapitalizationEnumMap,
              json['textCapitalization_enum_textCapitalization']) ??
          TextCapitalization.none,
    );

Map<String, dynamic> _$$SearchBarModelImplToJson(
        _$SearchBarModelImpl instance) =>
    <String, dynamic>{
      'elevation_double': instance.elevation_double,
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'overlayColor_themeColorString': instance.overlayColor_themeColorString,
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'padding_edgeInsets': instance.padding_edgeInsets?.toJson(),
      'textStyle_textStyleString': instance.textStyle_textStyleString,
      'hintStyle_textStyleString': instance.hintStyle_textStyleString,
      'constraints_boxConstraints':
          instance.constraints_boxConstraints?.toJson(),
      'textCapitalization_enum_textCapitalization': _$TextCapitalizationEnumMap[
          instance.textCapitalization_enum_textCapitalization],
    };

const _$TextCapitalizationEnumMap = {
  TextCapitalization.words: 'words',
  TextCapitalization.sentences: 'sentences',
  TextCapitalization.characters: 'characters',
  TextCapitalization.none: 'none',
};
