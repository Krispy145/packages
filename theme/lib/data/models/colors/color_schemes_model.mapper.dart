// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'color_schemes_model.dart';

class ColorSchemesModelMapper extends ClassMapperBase<ColorSchemesModel> {
  ColorSchemesModelMapper._();

  static ColorSchemesModelMapper? _instance;
  static ColorSchemesModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorSchemesModelMapper._());
      ColorModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ColorSchemesModel';

  static ColorModel _$light(ColorSchemesModel v) => v.light;
  static const Field<ColorSchemesModel, ColorModel> _f$light =
      Field('light', _$light);
  static ColorModel _$dark(ColorSchemesModel v) => v.dark;
  static const Field<ColorSchemesModel, ColorModel> _f$dark =
      Field('dark', _$dark);

  @override
  final MappableFields<ColorSchemesModel> fields = const {
    #light: _f$light,
    #dark: _f$dark,
  };

  static ColorSchemesModel _instantiate(DecodingData data) {
    return ColorSchemesModel(
        light: data.dec(_f$light), dark: data.dec(_f$dark));
  }

  @override
  final Function instantiate = _instantiate;

  static ColorSchemesModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColorSchemesModel>(map);
  }

  static ColorSchemesModel fromJson(String json) {
    return ensureInitialized().decodeJson<ColorSchemesModel>(json);
  }
}

mixin ColorSchemesModelMappable {
  String toJson() {
    return ColorSchemesModelMapper.ensureInitialized()
        .encodeJson<ColorSchemesModel>(this as ColorSchemesModel);
  }

  Map<String, dynamic> toMap() {
    return ColorSchemesModelMapper.ensureInitialized()
        .encodeMap<ColorSchemesModel>(this as ColorSchemesModel);
  }

  ColorSchemesModelCopyWith<ColorSchemesModel, ColorSchemesModel,
          ColorSchemesModel>
      get copyWith => _ColorSchemesModelCopyWithImpl(
          this as ColorSchemesModel, $identity, $identity);
  @override
  String toString() {
    return ColorSchemesModelMapper.ensureInitialized()
        .stringifyValue(this as ColorSchemesModel);
  }

  @override
  bool operator ==(Object other) {
    return ColorSchemesModelMapper.ensureInitialized()
        .equalsValue(this as ColorSchemesModel, other);
  }

  @override
  int get hashCode {
    return ColorSchemesModelMapper.ensureInitialized()
        .hashValue(this as ColorSchemesModel);
  }
}

extension ColorSchemesModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColorSchemesModel, $Out> {
  ColorSchemesModelCopyWith<$R, ColorSchemesModel, $Out>
      get $asColorSchemesModel =>
          $base.as((v, t, t2) => _ColorSchemesModelCopyWithImpl(v, t, t2));
}

abstract class ColorSchemesModelCopyWith<$R, $In extends ColorSchemesModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ColorModelCopyWith<$R, ColorModel, ColorModel> get light;
  ColorModelCopyWith<$R, ColorModel, ColorModel> get dark;
  $R call({ColorModel? light, ColorModel? dark});
  ColorSchemesModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ColorSchemesModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColorSchemesModel, $Out>
    implements ColorSchemesModelCopyWith<$R, ColorSchemesModel, $Out> {
  _ColorSchemesModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColorSchemesModel> $mapper =
      ColorSchemesModelMapper.ensureInitialized();
  @override
  ColorModelCopyWith<$R, ColorModel, ColorModel> get light =>
      $value.light.copyWith.$chain((v) => call(light: v));
  @override
  ColorModelCopyWith<$R, ColorModel, ColorModel> get dark =>
      $value.dark.copyWith.$chain((v) => call(dark: v));
  @override
  $R call({ColorModel? light, ColorModel? dark}) => $apply(FieldCopyWithData(
      {if (light != null) #light: light, if (dark != null) #dark: dark}));
  @override
  ColorSchemesModel $make(CopyWithData data) => ColorSchemesModel(
      light: data.get(#light, or: $value.light),
      dark: data.get(#dark, or: $value.dark));

  @override
  ColorSchemesModelCopyWith<$R2, ColorSchemesModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ColorSchemesModelCopyWithImpl($value, $cast, t);
}
