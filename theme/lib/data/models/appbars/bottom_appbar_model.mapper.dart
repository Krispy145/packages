// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bottom_appbar_model.dart';

class BottomAppbarModelMapper extends ClassMapperBase<BottomAppbarModel> {
  BottomAppbarModelMapper._();

  static BottomAppbarModelMapper? _instance;
  static BottomAppbarModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BottomAppbarModelMapper._());
      EdgeInsetsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BottomAppbarModel';

  static String? _$color_themeColorString(BottomAppbarModel v) =>
      v.color_themeColorString;
  static const Field<BottomAppbarModel, String> _f$color_themeColorString =
      Field('color_themeColorString', _$color_themeColorString,
          key: 'color_theme_color_string');
  static double? _$elevation_double(BottomAppbarModel v) => v.elevation_double;
  static const Field<BottomAppbarModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double);
  static double? _$height_double(BottomAppbarModel v) => v.height_double;
  static const Field<BottomAppbarModel, double> _f$height_double =
      Field('height_double', _$height_double);
  static String? _$surfaceTintColor_themeColorString(BottomAppbarModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<BottomAppbarModel, String>
      _f$surfaceTintColor_themeColorString = Field(
          'surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          key: 'surface_tint_color_theme_color_string');
  static String? _$shadowColor_themeColorString(BottomAppbarModel v) =>
      v.shadowColor_themeColorString;
  static const Field<BottomAppbarModel, String>
      _f$shadowColor_themeColorString = Field(
          'shadowColor_themeColorString', _$shadowColor_themeColorString,
          key: 'shadow_color_theme_color_string');
  static EdgeInsetsModel? _$padding_edgeInsets(BottomAppbarModel v) =>
      v.padding_edgeInsets;
  static const Field<BottomAppbarModel, EdgeInsetsModel> _f$padding_edgeInsets =
      Field('padding_edgeInsets', _$padding_edgeInsets,
          key: 'padding_edge_insets');

  @override
  final MappableFields<BottomAppbarModel> fields = const {
    #color_themeColorString: _f$color_themeColorString,
    #elevation_double: _f$elevation_double,
    #height_double: _f$height_double,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #padding_edgeInsets: _f$padding_edgeInsets,
  };

  static BottomAppbarModel _instantiate(DecodingData data) {
    return BottomAppbarModel(
        color_themeColorString: data.dec(_f$color_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        height_double: data.dec(_f$height_double),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        padding_edgeInsets: data.dec(_f$padding_edgeInsets));
  }

  @override
  final Function instantiate = _instantiate;

  static BottomAppbarModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BottomAppbarModel>(map);
  }

  static BottomAppbarModel fromJson(String json) {
    return ensureInitialized().decodeJson<BottomAppbarModel>(json);
  }
}

mixin BottomAppbarModelMappable {
  String toJson() {
    return BottomAppbarModelMapper.ensureInitialized()
        .encodeJson<BottomAppbarModel>(this as BottomAppbarModel);
  }

  Map<String, dynamic> toMap() {
    return BottomAppbarModelMapper.ensureInitialized()
        .encodeMap<BottomAppbarModel>(this as BottomAppbarModel);
  }

  BottomAppbarModelCopyWith<BottomAppbarModel, BottomAppbarModel,
          BottomAppbarModel>
      get copyWith => _BottomAppbarModelCopyWithImpl(
          this as BottomAppbarModel, $identity, $identity);
  @override
  String toString() {
    return BottomAppbarModelMapper.ensureInitialized()
        .stringifyValue(this as BottomAppbarModel);
  }

  @override
  bool operator ==(Object other) {
    return BottomAppbarModelMapper.ensureInitialized()
        .equalsValue(this as BottomAppbarModel, other);
  }

  @override
  int get hashCode {
    return BottomAppbarModelMapper.ensureInitialized()
        .hashValue(this as BottomAppbarModel);
  }
}

extension BottomAppbarModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BottomAppbarModel, $Out> {
  BottomAppbarModelCopyWith<$R, BottomAppbarModel, $Out>
      get $asBottomAppbarModel =>
          $base.as((v, t, t2) => _BottomAppbarModelCopyWithImpl(v, t, t2));
}

abstract class BottomAppbarModelCopyWith<$R, $In extends BottomAppbarModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets;
  $R call(
      {String? color_themeColorString,
      double? elevation_double,
      double? height_double,
      String? surfaceTintColor_themeColorString,
      String? shadowColor_themeColorString,
      EdgeInsetsModel? padding_edgeInsets});
  BottomAppbarModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BottomAppbarModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BottomAppbarModel, $Out>
    implements BottomAppbarModelCopyWith<$R, BottomAppbarModel, $Out> {
  _BottomAppbarModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BottomAppbarModel> $mapper =
      BottomAppbarModelMapper.ensureInitialized();
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets => $value.padding_edgeInsets?.copyWith
          .$chain((v) => call(padding_edgeInsets: v));
  @override
  $R call(
          {Object? color_themeColorString = $none,
          Object? elevation_double = $none,
          Object? height_double = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? shadowColor_themeColorString = $none,
          Object? padding_edgeInsets = $none}) =>
      $apply(FieldCopyWithData({
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (height_double != $none) #height_double: height_double,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (padding_edgeInsets != $none) #padding_edgeInsets: padding_edgeInsets
      }));
  @override
  BottomAppbarModel $make(CopyWithData data) => BottomAppbarModel(
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      height_double: data.get(#height_double, or: $value.height_double),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      padding_edgeInsets:
          data.get(#padding_edgeInsets, or: $value.padding_edgeInsets));

  @override
  BottomAppbarModelCopyWith<$R2, BottomAppbarModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BottomAppbarModelCopyWithImpl($value, $cast, t);
}
