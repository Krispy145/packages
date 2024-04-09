// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchBarModelImpl _$$SearchBarModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchBarModelImpl(
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      backgroundColor_color: json['backgroundColor_color'] as String?,
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      overlayColor_color: json['overlayColor_color'] as String?,
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
      textStyle_textStyle: json['textStyle_textStyle'] as String?,
      hintStyle_textStyle: json['hintStyle_textStyle'] as String?,
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
      'backgroundColor_color': instance.backgroundColor_color,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'overlayColor_color': instance.overlayColor_color,
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'padding_edgeInsets': instance.padding_edgeInsets?.toJson(),
      'textStyle_textStyle': instance.textStyle_textStyle,
      'hintStyle_textStyle': instance.hintStyle_textStyle,
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
