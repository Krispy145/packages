// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'border_side_model.dart';

class BorderStyleTypeMapper extends EnumMapper<BorderStyleType> {
  BorderStyleTypeMapper._();

  static BorderStyleTypeMapper? _instance;
  static BorderStyleTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BorderStyleTypeMapper._());
    }
    return _instance!;
  }

  static BorderStyleType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  BorderStyleType decode(dynamic value) {
    switch (value) {
      case 'none':
        return BorderStyleType.none;
      case 'solid':
        return BorderStyleType.solid;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(BorderStyleType self) {
    switch (self) {
      case BorderStyleType.none:
        return 'none';
      case BorderStyleType.solid:
        return 'solid';
    }
  }
}

extension BorderStyleTypeMapperExtension on BorderStyleType {
  String toValue() {
    BorderStyleTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<BorderStyleType>(this) as String;
  }
}

class BorderSideModelMapper extends ClassMapperBase<BorderSideModel> {
  BorderSideModelMapper._();

  static BorderSideModelMapper? _instance;
  static BorderSideModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BorderSideModelMapper._());
      BorderStyleTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BorderSideModel';

  static String? _$color_themeColorString(BorderSideModel v) =>
      v.color_themeColorString;
  static const Field<BorderSideModel, String> _f$color_themeColorString =
      Field('color_themeColorString', _$color_themeColorString, opt: true);
  static double? _$width_double(BorderSideModel v) => v.width_double;
  static const Field<BorderSideModel, double> _f$width_double =
      Field('width_double', _$width_double, opt: true);
  static BorderStyleType? _$style_enum_borderStyle(BorderSideModel v) =>
      v.style_enum_borderStyle;
  static const Field<BorderSideModel, BorderStyleType>
      _f$style_enum_borderStyle =
      Field('style_enum_borderStyle', _$style_enum_borderStyle, opt: true);
  static double? _$strokeAlign_double(BorderSideModel v) =>
      v.strokeAlign_double;
  static const Field<BorderSideModel, double> _f$strokeAlign_double =
      Field('strokeAlign_double', _$strokeAlign_double, opt: true);

  @override
  final MappableFields<BorderSideModel> fields = const {
    #color_themeColorString: _f$color_themeColorString,
    #width_double: _f$width_double,
    #style_enum_borderStyle: _f$style_enum_borderStyle,
    #strokeAlign_double: _f$strokeAlign_double,
  };

  static BorderSideModel _instantiate(DecodingData data) {
    return BorderSideModel(
        color_themeColorString: data.dec(_f$color_themeColorString),
        width_double: data.dec(_f$width_double),
        style_enum_borderStyle: data.dec(_f$style_enum_borderStyle),
        strokeAlign_double: data.dec(_f$strokeAlign_double));
  }

  @override
  final Function instantiate = _instantiate;

  static BorderSideModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BorderSideModel>(map);
  }

  static BorderSideModel fromJson(String json) {
    return ensureInitialized().decodeJson<BorderSideModel>(json);
  }
}

mixin BorderSideModelMappable {
  String toJson() {
    return BorderSideModelMapper.ensureInitialized()
        .encodeJson<BorderSideModel>(this as BorderSideModel);
  }

  Map<String, dynamic> toMap() {
    return BorderSideModelMapper.ensureInitialized()
        .encodeMap<BorderSideModel>(this as BorderSideModel);
  }

  BorderSideModelCopyWith<BorderSideModel, BorderSideModel, BorderSideModel>
      get copyWith => _BorderSideModelCopyWithImpl(
          this as BorderSideModel, $identity, $identity);
  @override
  String toString() {
    return BorderSideModelMapper.ensureInitialized()
        .stringifyValue(this as BorderSideModel);
  }

  @override
  bool operator ==(Object other) {
    return BorderSideModelMapper.ensureInitialized()
        .equalsValue(this as BorderSideModel, other);
  }

  @override
  int get hashCode {
    return BorderSideModelMapper.ensureInitialized()
        .hashValue(this as BorderSideModel);
  }
}

extension BorderSideModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BorderSideModel, $Out> {
  BorderSideModelCopyWith<$R, BorderSideModel, $Out> get $asBorderSideModel =>
      $base.as((v, t, t2) => _BorderSideModelCopyWithImpl(v, t, t2));
}

abstract class BorderSideModelCopyWith<$R, $In extends BorderSideModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? color_themeColorString,
      double? width_double,
      BorderStyleType? style_enum_borderStyle,
      double? strokeAlign_double});
  BorderSideModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BorderSideModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BorderSideModel, $Out>
    implements BorderSideModelCopyWith<$R, BorderSideModel, $Out> {
  _BorderSideModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BorderSideModel> $mapper =
      BorderSideModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? color_themeColorString = $none,
          Object? width_double = $none,
          Object? style_enum_borderStyle = $none,
          Object? strokeAlign_double = $none}) =>
      $apply(FieldCopyWithData({
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (width_double != $none) #width_double: width_double,
        if (style_enum_borderStyle != $none)
          #style_enum_borderStyle: style_enum_borderStyle,
        if (strokeAlign_double != $none) #strokeAlign_double: strokeAlign_double
      }));
  @override
  BorderSideModel $make(CopyWithData data) => BorderSideModel(
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      width_double: data.get(#width_double, or: $value.width_double),
      style_enum_borderStyle:
          data.get(#style_enum_borderStyle, or: $value.style_enum_borderStyle),
      strokeAlign_double:
          data.get(#strokeAlign_double, or: $value.strokeAlign_double));

  @override
  BorderSideModelCopyWith<$R2, BorderSideModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BorderSideModelCopyWithImpl($value, $cast, t);
}
