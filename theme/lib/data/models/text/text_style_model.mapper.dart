// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_style_model.dart';

class TextStyleModelMapper extends ClassMapperBase<TextStyleModel> {
  TextStyleModelMapper._();

  static TextStyleModelMapper? _instance;
  static TextStyleModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextStyleModelMapper._());
      MapperContainer.globals.useAll([DOFontStyleMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'TextStyleModel';

  static String? _$fontFamilyName_font(TextStyleModel v) =>
      v.fontFamilyName_font;
  static const Field<TextStyleModel, String> _f$fontFamilyName_font =
      Field('fontFamilyName_font', _$fontFamilyName_font, opt: true);
  static String? _$color_themeColorString(TextStyleModel v) =>
      v.color_themeColorString;
  static const Field<TextStyleModel, String> _f$color_themeColorString =
      Field('color_themeColorString', _$color_themeColorString, opt: true);
  static FontStyle? _$fontFamilyStyle_enum_fontStyle(TextStyleModel v) =>
      v.fontFamilyStyle_enum_fontStyle;
  static const Field<TextStyleModel, FontStyle>
      _f$fontFamilyStyle_enum_fontStyle = Field(
          'fontFamilyStyle_enum_fontStyle', _$fontFamilyStyle_enum_fontStyle,
          opt: true, def: FontStyle.normal);
  static double? _$fontWeight_double(TextStyleModel v) => v.fontWeight_double;
  static const Field<TextStyleModel, double> _f$fontWeight_double =
      Field('fontWeight_double', _$fontWeight_double, opt: true);
  static double? _$fontSize_double(TextStyleModel v) => v.fontSize_double;
  static const Field<TextStyleModel, double> _f$fontSize_double =
      Field('fontSize_double', _$fontSize_double, opt: true);
  static double? _$lineHeight_double(TextStyleModel v) => v.lineHeight_double;
  static const Field<TextStyleModel, double> _f$lineHeight_double =
      Field('lineHeight_double', _$lineHeight_double, opt: true);
  static double? _$letterSpacing_double(TextStyleModel v) =>
      v.letterSpacing_double;
  static const Field<TextStyleModel, double> _f$letterSpacing_double =
      Field('letterSpacing_double', _$letterSpacing_double, opt: true);

  @override
  final MappableFields<TextStyleModel> fields = const {
    #fontFamilyName_font: _f$fontFamilyName_font,
    #color_themeColorString: _f$color_themeColorString,
    #fontFamilyStyle_enum_fontStyle: _f$fontFamilyStyle_enum_fontStyle,
    #fontWeight_double: _f$fontWeight_double,
    #fontSize_double: _f$fontSize_double,
    #lineHeight_double: _f$lineHeight_double,
    #letterSpacing_double: _f$letterSpacing_double,
  };

  static TextStyleModel _instantiate(DecodingData data) {
    return TextStyleModel(
        fontFamilyName_font: data.dec(_f$fontFamilyName_font),
        color_themeColorString: data.dec(_f$color_themeColorString),
        fontFamilyStyle_enum_fontStyle:
            data.dec(_f$fontFamilyStyle_enum_fontStyle),
        fontWeight_double: data.dec(_f$fontWeight_double),
        fontSize_double: data.dec(_f$fontSize_double),
        lineHeight_double: data.dec(_f$lineHeight_double),
        letterSpacing_double: data.dec(_f$letterSpacing_double));
  }

  @override
  final Function instantiate = _instantiate;

  static TextStyleModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextStyleModel>(map);
  }

  static TextStyleModel fromJson(String json) {
    return ensureInitialized().decodeJson<TextStyleModel>(json);
  }
}

mixin TextStyleModelMappable {
  String toJson() {
    return TextStyleModelMapper.ensureInitialized()
        .encodeJson<TextStyleModel>(this as TextStyleModel);
  }

  Map<String, dynamic> toMap() {
    return TextStyleModelMapper.ensureInitialized()
        .encodeMap<TextStyleModel>(this as TextStyleModel);
  }

  TextStyleModelCopyWith<TextStyleModel, TextStyleModel, TextStyleModel>
      get copyWith => _TextStyleModelCopyWithImpl(
          this as TextStyleModel, $identity, $identity);
  @override
  String toString() {
    return TextStyleModelMapper.ensureInitialized()
        .stringifyValue(this as TextStyleModel);
  }

  @override
  bool operator ==(Object other) {
    return TextStyleModelMapper.ensureInitialized()
        .equalsValue(this as TextStyleModel, other);
  }

  @override
  int get hashCode {
    return TextStyleModelMapper.ensureInitialized()
        .hashValue(this as TextStyleModel);
  }
}

extension TextStyleModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextStyleModel, $Out> {
  TextStyleModelCopyWith<$R, TextStyleModel, $Out> get $asTextStyleModel =>
      $base.as((v, t, t2) => _TextStyleModelCopyWithImpl(v, t, t2));
}

abstract class TextStyleModelCopyWith<$R, $In extends TextStyleModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? fontFamilyName_font,
      String? color_themeColorString,
      FontStyle? fontFamilyStyle_enum_fontStyle,
      double? fontWeight_double,
      double? fontSize_double,
      double? lineHeight_double,
      double? letterSpacing_double});
  TextStyleModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextStyleModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextStyleModel, $Out>
    implements TextStyleModelCopyWith<$R, TextStyleModel, $Out> {
  _TextStyleModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextStyleModel> $mapper =
      TextStyleModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? fontFamilyName_font = $none,
          Object? color_themeColorString = $none,
          Object? fontFamilyStyle_enum_fontStyle = $none,
          Object? fontWeight_double = $none,
          Object? fontSize_double = $none,
          Object? lineHeight_double = $none,
          Object? letterSpacing_double = $none}) =>
      $apply(FieldCopyWithData({
        if (fontFamilyName_font != $none)
          #fontFamilyName_font: fontFamilyName_font,
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (fontFamilyStyle_enum_fontStyle != $none)
          #fontFamilyStyle_enum_fontStyle: fontFamilyStyle_enum_fontStyle,
        if (fontWeight_double != $none) #fontWeight_double: fontWeight_double,
        if (fontSize_double != $none) #fontSize_double: fontSize_double,
        if (lineHeight_double != $none) #lineHeight_double: lineHeight_double,
        if (letterSpacing_double != $none)
          #letterSpacing_double: letterSpacing_double
      }));
  @override
  TextStyleModel $make(CopyWithData data) => TextStyleModel(
      fontFamilyName_font:
          data.get(#fontFamilyName_font, or: $value.fontFamilyName_font),
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      fontFamilyStyle_enum_fontStyle: data.get(#fontFamilyStyle_enum_fontStyle,
          or: $value.fontFamilyStyle_enum_fontStyle),
      fontWeight_double:
          data.get(#fontWeight_double, or: $value.fontWeight_double),
      fontSize_double: data.get(#fontSize_double, or: $value.fontSize_double),
      lineHeight_double:
          data.get(#lineHeight_double, or: $value.lineHeight_double),
      letterSpacing_double:
          data.get(#letterSpacing_double, or: $value.letterSpacing_double));

  @override
  TextStyleModelCopyWith<$R2, TextStyleModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TextStyleModelCopyWithImpl($value, $cast, t);
}
