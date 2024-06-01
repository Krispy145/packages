// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'border_radius_model.dart';

class BorderRadiusModelMapper extends ClassMapperBase<BorderRadiusModel> {
  BorderRadiusModelMapper._();

  static BorderRadiusModelMapper? _instance;
  static BorderRadiusModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BorderRadiusModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BorderRadiusModel';

  static BorderRadiusType? _$type_enum_borderRadiusType(BorderRadiusModel v) =>
      v.type_enum_borderRadiusType;
  static const Field<BorderRadiusModel, BorderRadiusType>
      _f$type_enum_borderRadiusType = Field(
          'type_enum_borderRadiusType', _$type_enum_borderRadiusType,
          key: 'type_enum_border_radius_type', opt: true);
  static double? _$topLeft_double(BorderRadiusModel v) => v.topLeft_double;
  static const Field<BorderRadiusModel, double> _f$topLeft_double = Field(
      'topLeft_double', _$topLeft_double,
      key: 'top_left_double', opt: true);
  static double? _$topRight_double(BorderRadiusModel v) => v.topRight_double;
  static const Field<BorderRadiusModel, double> _f$topRight_double = Field(
      'topRight_double', _$topRight_double,
      key: 'top_right_double', opt: true);
  static double? _$bottomLeft_double(BorderRadiusModel v) =>
      v.bottomLeft_double;
  static const Field<BorderRadiusModel, double> _f$bottomLeft_double = Field(
      'bottomLeft_double', _$bottomLeft_double,
      key: 'bottom_left_double', opt: true);
  static double? _$bottomRight_double(BorderRadiusModel v) =>
      v.bottomRight_double;
  static const Field<BorderRadiusModel, double> _f$bottomRight_double = Field(
      'bottomRight_double', _$bottomRight_double,
      key: 'bottom_right_double', opt: true);
  static double? _$all_double(BorderRadiusModel v) => v.all_double;
  static const Field<BorderRadiusModel, double> _f$all_double =
      Field('all_double', _$all_double, opt: true);

  @override
  final MappableFields<BorderRadiusModel> fields = const {
    #type_enum_borderRadiusType: _f$type_enum_borderRadiusType,
    #topLeft_double: _f$topLeft_double,
    #topRight_double: _f$topRight_double,
    #bottomLeft_double: _f$bottomLeft_double,
    #bottomRight_double: _f$bottomRight_double,
    #all_double: _f$all_double,
  };

  static BorderRadiusModel _instantiate(DecodingData data) {
    return BorderRadiusModel(
        type_enum_borderRadiusType: data.dec(_f$type_enum_borderRadiusType),
        topLeft_double: data.dec(_f$topLeft_double),
        topRight_double: data.dec(_f$topRight_double),
        bottomLeft_double: data.dec(_f$bottomLeft_double),
        bottomRight_double: data.dec(_f$bottomRight_double),
        all_double: data.dec(_f$all_double));
  }

  @override
  final Function instantiate = _instantiate;

  static BorderRadiusModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BorderRadiusModel>(map);
  }

  static BorderRadiusModel fromJson(String json) {
    return ensureInitialized().decodeJson<BorderRadiusModel>(json);
  }
}

mixin BorderRadiusModelMappable {
  String toJson() {
    return BorderRadiusModelMapper.ensureInitialized()
        .encodeJson<BorderRadiusModel>(this as BorderRadiusModel);
  }

  Map<String, dynamic> toMap() {
    return BorderRadiusModelMapper.ensureInitialized()
        .encodeMap<BorderRadiusModel>(this as BorderRadiusModel);
  }

  BorderRadiusModelCopyWith<BorderRadiusModel, BorderRadiusModel,
          BorderRadiusModel>
      get copyWith => _BorderRadiusModelCopyWithImpl(
          this as BorderRadiusModel, $identity, $identity);
  @override
  String toString() {
    return BorderRadiusModelMapper.ensureInitialized()
        .stringifyValue(this as BorderRadiusModel);
  }

  @override
  bool operator ==(Object other) {
    return BorderRadiusModelMapper.ensureInitialized()
        .equalsValue(this as BorderRadiusModel, other);
  }

  @override
  int get hashCode {
    return BorderRadiusModelMapper.ensureInitialized()
        .hashValue(this as BorderRadiusModel);
  }
}

extension BorderRadiusModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BorderRadiusModel, $Out> {
  BorderRadiusModelCopyWith<$R, BorderRadiusModel, $Out>
      get $asBorderRadiusModel =>
          $base.as((v, t, t2) => _BorderRadiusModelCopyWithImpl(v, t, t2));
}

abstract class BorderRadiusModelCopyWith<$R, $In extends BorderRadiusModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {BorderRadiusType? type_enum_borderRadiusType,
      double? topLeft_double,
      double? topRight_double,
      double? bottomLeft_double,
      double? bottomRight_double,
      double? all_double});
  BorderRadiusModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BorderRadiusModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BorderRadiusModel, $Out>
    implements BorderRadiusModelCopyWith<$R, BorderRadiusModel, $Out> {
  _BorderRadiusModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BorderRadiusModel> $mapper =
      BorderRadiusModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? type_enum_borderRadiusType = $none,
          Object? topLeft_double = $none,
          Object? topRight_double = $none,
          Object? bottomLeft_double = $none,
          Object? bottomRight_double = $none,
          Object? all_double = $none}) =>
      $apply(FieldCopyWithData({
        if (type_enum_borderRadiusType != $none)
          #type_enum_borderRadiusType: type_enum_borderRadiusType,
        if (topLeft_double != $none) #topLeft_double: topLeft_double,
        if (topRight_double != $none) #topRight_double: topRight_double,
        if (bottomLeft_double != $none) #bottomLeft_double: bottomLeft_double,
        if (bottomRight_double != $none)
          #bottomRight_double: bottomRight_double,
        if (all_double != $none) #all_double: all_double
      }));
  @override
  BorderRadiusModel $make(CopyWithData data) => BorderRadiusModel(
      type_enum_borderRadiusType: data.get(#type_enum_borderRadiusType,
          or: $value.type_enum_borderRadiusType),
      topLeft_double: data.get(#topLeft_double, or: $value.topLeft_double),
      topRight_double: data.get(#topRight_double, or: $value.topRight_double),
      bottomLeft_double:
          data.get(#bottomLeft_double, or: $value.bottomLeft_double),
      bottomRight_double:
          data.get(#bottomRight_double, or: $value.bottomRight_double),
      all_double: data.get(#all_double, or: $value.all_double));

  @override
  BorderRadiusModelCopyWith<$R2, BorderRadiusModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BorderRadiusModelCopyWithImpl($value, $cast, t);
}
