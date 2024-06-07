// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'outlined_border_model.dart';

class OutlinedBorderTypeMapper extends EnumMapper<OutlinedBorderType> {
  OutlinedBorderTypeMapper._();

  static OutlinedBorderTypeMapper? _instance;
  static OutlinedBorderTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OutlinedBorderTypeMapper._());
    }
    return _instance!;
  }

  static OutlinedBorderType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  OutlinedBorderType decode(dynamic value) {
    switch (value) {
      case 'circleBorder':
        return OutlinedBorderType.circleBorder;
      case 'stadiumBorder':
        return OutlinedBorderType.stadiumBorder;
      case 'starBorder':
        return OutlinedBorderType.starBorder;
      case 'beveledRectangleBorder':
        return OutlinedBorderType.beveledRectangleBorder;
      case 'ovalBorder':
        return OutlinedBorderType.ovalBorder;
      case 'continuousRectangleBorder':
        return OutlinedBorderType.continuousRectangleBorder;
      case 'roundedRectangleBorder':
        return OutlinedBorderType.roundedRectangleBorder;
      case 'linearBorder':
        return OutlinedBorderType.linearBorder;
      default:
        return OutlinedBorderType.values[6];
    }
  }

  @override
  dynamic encode(OutlinedBorderType self) {
    switch (self) {
      case OutlinedBorderType.circleBorder:
        return 'circleBorder';
      case OutlinedBorderType.stadiumBorder:
        return 'stadiumBorder';
      case OutlinedBorderType.starBorder:
        return 'starBorder';
      case OutlinedBorderType.beveledRectangleBorder:
        return 'beveledRectangleBorder';
      case OutlinedBorderType.ovalBorder:
        return 'ovalBorder';
      case OutlinedBorderType.continuousRectangleBorder:
        return 'continuousRectangleBorder';
      case OutlinedBorderType.roundedRectangleBorder:
        return 'roundedRectangleBorder';
      case OutlinedBorderType.linearBorder:
        return 'linearBorder';
    }
  }
}

extension OutlinedBorderTypeMapperExtension on OutlinedBorderType {
  String toValue() {
    OutlinedBorderTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<OutlinedBorderType>(this) as String;
  }
}

class OutlinedBorderModelMapper extends ClassMapperBase<OutlinedBorderModel> {
  OutlinedBorderModelMapper._();

  static OutlinedBorderModelMapper? _instance;
  static OutlinedBorderModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OutlinedBorderModelMapper._());
      OutlinedBorderTypeMapper.ensureInitialized();
      BorderSideModelMapper.ensureInitialized();
      BorderRadiusModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OutlinedBorderModel';

  static OutlinedBorderType? _$type_enum_outlinedBorderType(
          OutlinedBorderModel v) =>
      v.type_enum_outlinedBorderType;
  static const Field<OutlinedBorderModel, OutlinedBorderType>
      _f$type_enum_outlinedBorderType = Field(
          'type_enum_outlinedBorderType', _$type_enum_outlinedBorderType,
          opt: true, def: OutlinedBorderType.roundedRectangleBorder);
  static BorderSideModel? _$side_borderSide(OutlinedBorderModel v) =>
      v.side_borderSide;
  static const Field<OutlinedBorderModel, BorderSideModel> _f$side_borderSide =
      Field('side_borderSide', _$side_borderSide, opt: true);
  static BorderRadiusModel? _$borderRadius_borderRadius(
          OutlinedBorderModel v) =>
      v.borderRadius_borderRadius;
  static const Field<OutlinedBorderModel, BorderRadiusModel>
      _f$borderRadius_borderRadius = Field(
          'borderRadius_borderRadius', _$borderRadius_borderRadius,
          opt: true);

  @override
  final MappableFields<OutlinedBorderModel> fields = const {
    #type_enum_outlinedBorderType: _f$type_enum_outlinedBorderType,
    #side_borderSide: _f$side_borderSide,
    #borderRadius_borderRadius: _f$borderRadius_borderRadius,
  };

  static OutlinedBorderModel _instantiate(DecodingData data) {
    return OutlinedBorderModel(
        type_enum_outlinedBorderType: data.dec(_f$type_enum_outlinedBorderType),
        side_borderSide: data.dec(_f$side_borderSide),
        borderRadius_borderRadius: data.dec(_f$borderRadius_borderRadius));
  }

  @override
  final Function instantiate = _instantiate;

  static OutlinedBorderModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OutlinedBorderModel>(map);
  }

  static OutlinedBorderModel fromJson(String json) {
    return ensureInitialized().decodeJson<OutlinedBorderModel>(json);
  }
}

mixin OutlinedBorderModelMappable {
  String toJson() {
    return OutlinedBorderModelMapper.ensureInitialized()
        .encodeJson<OutlinedBorderModel>(this as OutlinedBorderModel);
  }

  Map<String, dynamic> toMap() {
    return OutlinedBorderModelMapper.ensureInitialized()
        .encodeMap<OutlinedBorderModel>(this as OutlinedBorderModel);
  }

  OutlinedBorderModelCopyWith<OutlinedBorderModel, OutlinedBorderModel,
          OutlinedBorderModel>
      get copyWith => _OutlinedBorderModelCopyWithImpl(
          this as OutlinedBorderModel, $identity, $identity);
  @override
  String toString() {
    return OutlinedBorderModelMapper.ensureInitialized()
        .stringifyValue(this as OutlinedBorderModel);
  }

  @override
  bool operator ==(Object other) {
    return OutlinedBorderModelMapper.ensureInitialized()
        .equalsValue(this as OutlinedBorderModel, other);
  }

  @override
  int get hashCode {
    return OutlinedBorderModelMapper.ensureInitialized()
        .hashValue(this as OutlinedBorderModel);
  }
}

extension OutlinedBorderModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OutlinedBorderModel, $Out> {
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, $Out>
      get $asOutlinedBorderModel =>
          $base.as((v, t, t2) => _OutlinedBorderModelCopyWithImpl(v, t, t2));
}

abstract class OutlinedBorderModelCopyWith<$R, $In extends OutlinedBorderModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide;
  BorderRadiusModelCopyWith<$R, BorderRadiusModel, BorderRadiusModel>?
      get borderRadius_borderRadius;
  $R call(
      {OutlinedBorderType? type_enum_outlinedBorderType,
      BorderSideModel? side_borderSide,
      BorderRadiusModel? borderRadius_borderRadius});
  OutlinedBorderModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OutlinedBorderModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OutlinedBorderModel, $Out>
    implements OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, $Out> {
  _OutlinedBorderModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OutlinedBorderModel> $mapper =
      OutlinedBorderModelMapper.ensureInitialized();
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide => $value.side_borderSide?.copyWith
          .$chain((v) => call(side_borderSide: v));
  @override
  BorderRadiusModelCopyWith<$R, BorderRadiusModel, BorderRadiusModel>?
      get borderRadius_borderRadius =>
          $value.borderRadius_borderRadius?.copyWith
              .$chain((v) => call(borderRadius_borderRadius: v));
  @override
  $R call(
          {Object? type_enum_outlinedBorderType = $none,
          Object? side_borderSide = $none,
          Object? borderRadius_borderRadius = $none}) =>
      $apply(FieldCopyWithData({
        if (type_enum_outlinedBorderType != $none)
          #type_enum_outlinedBorderType: type_enum_outlinedBorderType,
        if (side_borderSide != $none) #side_borderSide: side_borderSide,
        if (borderRadius_borderRadius != $none)
          #borderRadius_borderRadius: borderRadius_borderRadius
      }));
  @override
  OutlinedBorderModel $make(CopyWithData data) => OutlinedBorderModel(
      type_enum_outlinedBorderType: data.get(#type_enum_outlinedBorderType,
          or: $value.type_enum_outlinedBorderType),
      side_borderSide: data.get(#side_borderSide, or: $value.side_borderSide),
      borderRadius_borderRadius: data.get(#borderRadius_borderRadius,
          or: $value.borderRadius_borderRadius));

  @override
  OutlinedBorderModelCopyWith<$R2, OutlinedBorderModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _OutlinedBorderModelCopyWithImpl($value, $cast, t);
}
