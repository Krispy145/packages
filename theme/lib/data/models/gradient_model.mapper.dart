// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'gradient_model.dart';

class GradientTypeMapper extends EnumMapper<GradientType> {
  GradientTypeMapper._();

  static GradientTypeMapper? _instance;
  static GradientTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GradientTypeMapper._());
    }
    return _instance!;
  }

  static GradientType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  GradientType decode(dynamic value) {
    switch (value) {
      case 'linear':
        return GradientType.linear;
      case 'radial':
        return GradientType.radial;
      case 'sweep':
        return GradientType.sweep;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(GradientType self) {
    switch (self) {
      case GradientType.linear:
        return 'linear';
      case GradientType.radial:
        return 'radial';
      case GradientType.sweep:
        return 'sweep';
    }
  }
}

extension GradientTypeMapperExtension on GradientType {
  String toValue() {
    GradientTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<GradientType>(this) as String;
  }
}

class GradientModelMapper extends ClassMapperBase<GradientModel> {
  GradientModelMapper._();

  static GradientModelMapper? _instance;
  static GradientModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GradientModelMapper._());
      GradientTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GradientModel';

  static GradientType? _$type_enum_gradientType(GradientModel v) =>
      v.type_enum_gradientType;
  static const Field<GradientModel, GradientType> _f$type_enum_gradientType =
      Field('type_enum_gradientType', _$type_enum_gradientType, opt: true);
  static List<String>? _$colors_list_themeColorString(GradientModel v) =>
      v.colors_list_themeColorString;
  static const Field<GradientModel, List<String>>
      _f$colors_list_themeColorString = Field(
          'colors_list_themeColorString', _$colors_list_themeColorString,
          opt: true);

  @override
  final MappableFields<GradientModel> fields = const {
    #type_enum_gradientType: _f$type_enum_gradientType,
    #colors_list_themeColorString: _f$colors_list_themeColorString,
  };

  static GradientModel _instantiate(DecodingData data) {
    return GradientModel(
        type_enum_gradientType: data.dec(_f$type_enum_gradientType),
        colors_list_themeColorString:
            data.dec(_f$colors_list_themeColorString));
  }

  @override
  final Function instantiate = _instantiate;

  static GradientModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GradientModel>(map);
  }

  static GradientModel fromJson(String json) {
    return ensureInitialized().decodeJson<GradientModel>(json);
  }
}

mixin GradientModelMappable {
  String toJson() {
    return GradientModelMapper.ensureInitialized()
        .encodeJson<GradientModel>(this as GradientModel);
  }

  Map<String, dynamic> toMap() {
    return GradientModelMapper.ensureInitialized()
        .encodeMap<GradientModel>(this as GradientModel);
  }

  GradientModelCopyWith<GradientModel, GradientModel, GradientModel>
      get copyWith => _GradientModelCopyWithImpl(
          this as GradientModel, $identity, $identity);
  @override
  String toString() {
    return GradientModelMapper.ensureInitialized()
        .stringifyValue(this as GradientModel);
  }

  @override
  bool operator ==(Object other) {
    return GradientModelMapper.ensureInitialized()
        .equalsValue(this as GradientModel, other);
  }

  @override
  int get hashCode {
    return GradientModelMapper.ensureInitialized()
        .hashValue(this as GradientModel);
  }
}

extension GradientModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GradientModel, $Out> {
  GradientModelCopyWith<$R, GradientModel, $Out> get $asGradientModel =>
      $base.as((v, t, t2) => _GradientModelCopyWithImpl(v, t, t2));
}

abstract class GradientModelCopyWith<$R, $In extends GradientModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get colors_list_themeColorString;
  $R call(
      {GradientType? type_enum_gradientType,
      List<String>? colors_list_themeColorString});
  GradientModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GradientModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GradientModel, $Out>
    implements GradientModelCopyWith<$R, GradientModel, $Out> {
  _GradientModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GradientModel> $mapper =
      GradientModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get colors_list_themeColorString =>
          $value.colors_list_themeColorString != null
              ? ListCopyWith(
                  $value.colors_list_themeColorString!,
                  (v, t) => ObjectCopyWith(v, $identity, t),
                  (v) => call(colors_list_themeColorString: v))
              : null;
  @override
  $R call(
          {Object? type_enum_gradientType = $none,
          Object? colors_list_themeColorString = $none}) =>
      $apply(FieldCopyWithData({
        if (type_enum_gradientType != $none)
          #type_enum_gradientType: type_enum_gradientType,
        if (colors_list_themeColorString != $none)
          #colors_list_themeColorString: colors_list_themeColorString
      }));
  @override
  GradientModel $make(CopyWithData data) => GradientModel(
      type_enum_gradientType:
          data.get(#type_enum_gradientType, or: $value.type_enum_gradientType),
      colors_list_themeColorString: data.get(#colors_list_themeColorString,
          or: $value.colors_list_themeColorString));

  @override
  GradientModelCopyWith<$R2, GradientModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GradientModelCopyWithImpl($value, $cast, t);
}
