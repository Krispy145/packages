// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'badge_model.dart';

class BadgeModelMapper extends ClassMapperBase<BadgeModel> {
  BadgeModelMapper._();

  static BadgeModelMapper? _instance;
  static BadgeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BadgeModelMapper._());
      EdgeInsetsModelMapper.ensureInitialized();
      OffsetModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BadgeModel';

  static String? _$backgroundColor_themeColorString(BadgeModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<BadgeModel, String> _f$backgroundColor_themeColorString =
      Field('backgroundColor_themeColorString',
          _$backgroundColor_themeColorString);
  static String? _$textColor_themeColorString(BadgeModel v) =>
      v.textColor_themeColorString;
  static const Field<BadgeModel, String> _f$textColor_themeColorString =
      Field('textColor_themeColorString', _$textColor_themeColorString);
  static double? _$smallSize_double(BadgeModel v) => v.smallSize_double;
  static const Field<BadgeModel, double> _f$smallSize_double =
      Field('smallSize_double', _$smallSize_double);
  static double? _$largeSize_double(BadgeModel v) => v.largeSize_double;
  static const Field<BadgeModel, double> _f$largeSize_double =
      Field('largeSize_double', _$largeSize_double);
  static String? _$textStyle_textStyleString(BadgeModel v) =>
      v.textStyle_textStyleString;
  static const Field<BadgeModel, String> _f$textStyle_textStyleString =
      Field('textStyle_textStyleString', _$textStyle_textStyleString);
  static EdgeInsetsModel? _$padding_edgeInsets(BadgeModel v) =>
      v.padding_edgeInsets;
  static const Field<BadgeModel, EdgeInsetsModel> _f$padding_edgeInsets =
      Field('padding_edgeInsets', _$padding_edgeInsets);
  static AlignmentOptions? _$alignment_enum_alignmentOptions(BadgeModel v) =>
      v.alignment_enum_alignmentOptions;
  static const Field<BadgeModel, AlignmentOptions>
      _f$alignment_enum_alignmentOptions = Field(
          'alignment_enum_alignmentOptions', _$alignment_enum_alignmentOptions);
  static OffsetModel? _$offset_offset(BadgeModel v) => v.offset_offset;
  static const Field<BadgeModel, OffsetModel> _f$offset_offset =
      Field('offset_offset', _$offset_offset);

  @override
  final MappableFields<BadgeModel> fields = const {
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #textColor_themeColorString: _f$textColor_themeColorString,
    #smallSize_double: _f$smallSize_double,
    #largeSize_double: _f$largeSize_double,
    #textStyle_textStyleString: _f$textStyle_textStyleString,
    #padding_edgeInsets: _f$padding_edgeInsets,
    #alignment_enum_alignmentOptions: _f$alignment_enum_alignmentOptions,
    #offset_offset: _f$offset_offset,
  };

  static BadgeModel _instantiate(DecodingData data) {
    return BadgeModel(
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        textColor_themeColorString: data.dec(_f$textColor_themeColorString),
        smallSize_double: data.dec(_f$smallSize_double),
        largeSize_double: data.dec(_f$largeSize_double),
        textStyle_textStyleString: data.dec(_f$textStyle_textStyleString),
        padding_edgeInsets: data.dec(_f$padding_edgeInsets),
        alignment_enum_alignmentOptions:
            data.dec(_f$alignment_enum_alignmentOptions),
        offset_offset: data.dec(_f$offset_offset));
  }

  @override
  final Function instantiate = _instantiate;

  static BadgeModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BadgeModel>(map);
  }

  static BadgeModel fromJson(String json) {
    return ensureInitialized().decodeJson<BadgeModel>(json);
  }
}

mixin BadgeModelMappable {
  String toJson() {
    return BadgeModelMapper.ensureInitialized()
        .encodeJson<BadgeModel>(this as BadgeModel);
  }

  Map<String, dynamic> toMap() {
    return BadgeModelMapper.ensureInitialized()
        .encodeMap<BadgeModel>(this as BadgeModel);
  }

  BadgeModelCopyWith<BadgeModel, BadgeModel, BadgeModel> get copyWith =>
      _BadgeModelCopyWithImpl(this as BadgeModel, $identity, $identity);
  @override
  String toString() {
    return BadgeModelMapper.ensureInitialized()
        .stringifyValue(this as BadgeModel);
  }

  @override
  bool operator ==(Object other) {
    return BadgeModelMapper.ensureInitialized()
        .equalsValue(this as BadgeModel, other);
  }

  @override
  int get hashCode {
    return BadgeModelMapper.ensureInitialized().hashValue(this as BadgeModel);
  }
}

extension BadgeModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BadgeModel, $Out> {
  BadgeModelCopyWith<$R, BadgeModel, $Out> get $asBadgeModel =>
      $base.as((v, t, t2) => _BadgeModelCopyWithImpl(v, t, t2));
}

abstract class BadgeModelCopyWith<$R, $In extends BadgeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets;
  OffsetModelCopyWith<$R, OffsetModel, OffsetModel>? get offset_offset;
  $R call(
      {String? backgroundColor_themeColorString,
      String? textColor_themeColorString,
      double? smallSize_double,
      double? largeSize_double,
      String? textStyle_textStyleString,
      EdgeInsetsModel? padding_edgeInsets,
      AlignmentOptions? alignment_enum_alignmentOptions,
      OffsetModel? offset_offset});
  BadgeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BadgeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BadgeModel, $Out>
    implements BadgeModelCopyWith<$R, BadgeModel, $Out> {
  _BadgeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BadgeModel> $mapper =
      BadgeModelMapper.ensureInitialized();
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets => $value.padding_edgeInsets?.copyWith
          .$chain((v) => call(padding_edgeInsets: v));
  @override
  OffsetModelCopyWith<$R, OffsetModel, OffsetModel>? get offset_offset =>
      $value.offset_offset?.copyWith.$chain((v) => call(offset_offset: v));
  @override
  $R call(
          {Object? backgroundColor_themeColorString = $none,
          Object? textColor_themeColorString = $none,
          Object? smallSize_double = $none,
          Object? largeSize_double = $none,
          Object? textStyle_textStyleString = $none,
          Object? padding_edgeInsets = $none,
          Object? alignment_enum_alignmentOptions = $none,
          Object? offset_offset = $none}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (textColor_themeColorString != $none)
          #textColor_themeColorString: textColor_themeColorString,
        if (smallSize_double != $none) #smallSize_double: smallSize_double,
        if (largeSize_double != $none) #largeSize_double: largeSize_double,
        if (textStyle_textStyleString != $none)
          #textStyle_textStyleString: textStyle_textStyleString,
        if (padding_edgeInsets != $none)
          #padding_edgeInsets: padding_edgeInsets,
        if (alignment_enum_alignmentOptions != $none)
          #alignment_enum_alignmentOptions: alignment_enum_alignmentOptions,
        if (offset_offset != $none) #offset_offset: offset_offset
      }));
  @override
  BadgeModel $make(CopyWithData data) => BadgeModel(
      backgroundColor_themeColorString: data.get(
          #backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      textColor_themeColorString: data.get(#textColor_themeColorString,
          or: $value.textColor_themeColorString),
      smallSize_double:
          data.get(#smallSize_double, or: $value.smallSize_double),
      largeSize_double:
          data.get(#largeSize_double, or: $value.largeSize_double),
      textStyle_textStyleString: data.get(#textStyle_textStyleString,
          or: $value.textStyle_textStyleString),
      padding_edgeInsets:
          data.get(#padding_edgeInsets, or: $value.padding_edgeInsets),
      alignment_enum_alignmentOptions: data.get(
          #alignment_enum_alignmentOptions,
          or: $value.alignment_enum_alignmentOptions),
      offset_offset: data.get(#offset_offset, or: $value.offset_offset));

  @override
  BadgeModelCopyWith<$R2, BadgeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BadgeModelCopyWithImpl($value, $cast, t);
}
