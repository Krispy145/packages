// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListTileModelImpl _$$ListTileModelImplFromJson(Map<String, dynamic> json) =>
    _$ListTileModelImpl(
      dense: json['dense'] as bool?,
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      selectedColor: json['selectedColor'] as String?,
      iconColor: json['iconColor'] as String?,
      textColor: json['textColor'] as String?,
      titleTextStyle: json['titleTextStyle'] as String?,
      subtitleTextStyle: json['subtitleTextStyle'] as String?,
      leadingAndTrailingTextStyle:
          json['leadingAndTrailingTextStyle'] as String?,
      contentPadding: const EdgeInsetsConverter()
          .fromJson(json['contentPadding'] as Map<String, dynamic>?),
      tileColor: json['tileColor'] as String?,
      selectedTileColor: json['selectedTileColor'] as String?,
      horizontalTitleGap: (json['horizontalTitleGap'] as num?)?.toDouble(),
      minVerticalPadding: (json['minVerticalPadding'] as num?)?.toDouble(),
      minLeadingWidth: (json['minLeadingWidth'] as num?)?.toDouble(),
      enableFeedback: json['enableFeedback'] as bool?,
      titleAlignment: const ListTileTitleAlignmentConverter()
          .fromJson(json['titleAlignment'] as String?),
    );

Map<String, dynamic> _$$ListTileModelImplToJson(_$ListTileModelImpl instance) =>
    <String, dynamic>{
      'dense': instance.dense,
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'selectedColor': instance.selectedColor,
      'iconColor': instance.iconColor,
      'textColor': instance.textColor,
      'titleTextStyle': instance.titleTextStyle,
      'subtitleTextStyle': instance.subtitleTextStyle,
      'leadingAndTrailingTextStyle': instance.leadingAndTrailingTextStyle,
      'contentPadding':
          const EdgeInsetsConverter().toJson(instance.contentPadding),
      'tileColor': instance.tileColor,
      'selectedTileColor': instance.selectedTileColor,
      'horizontalTitleGap': instance.horizontalTitleGap,
      'minVerticalPadding': instance.minVerticalPadding,
      'minLeadingWidth': instance.minLeadingWidth,
      'enableFeedback': instance.enableFeedback,
      'titleAlignment': const ListTileTitleAlignmentConverter()
          .toJson(instance.titleAlignment),
    };
