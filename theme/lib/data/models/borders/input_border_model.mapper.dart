// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'input_border_model.dart';

class InputBorderModelMapper extends ClassMapperBase<InputBorderModel> {
  InputBorderModelMapper._();

  static InputBorderModelMapper? _instance;
  static InputBorderModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InputBorderModelMapper._());
      BorderRadiusModelMapper.ensureInitialized();
      BorderSideModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InputBorderModel';

  static InputBorderType? _$type_enum_inputBorderType(InputBorderModel v) =>
      v.type_enum_inputBorderType;
  static const Field<InputBorderModel, InputBorderType>
      _f$type_enum_inputBorderType = Field(
          'type_enum_inputBorderType', _$type_enum_inputBorderType,
          key: 'type_enum_input_border_type',
          opt: true,
          def: InputBorderType.none);
  static BorderRadiusModel? _$borderRadius_borderRadius(InputBorderModel v) =>
      v.borderRadius_borderRadius;
  static const Field<InputBorderModel, BorderRadiusModel>
      _f$borderRadius_borderRadius = Field(
          'borderRadius_borderRadius', _$borderRadius_borderRadius,
          key: 'border_radius_border_radius',
          opt: true,
          def: const BorderRadiusModel());
  static BorderSideModel? _$borderSide_borderSide(InputBorderModel v) =>
      v.borderSide_borderSide;
  static const Field<InputBorderModel, BorderSideModel>
      _f$borderSide_borderSide = Field(
          'borderSide_borderSide', _$borderSide_borderSide,
          key: 'border_side_border_side',
          opt: true,
          def: const BorderSideModel());
  static double? _$gapPadding_double(InputBorderModel v) => v.gapPadding_double;
  static const Field<InputBorderModel, double> _f$gapPadding_double = Field(
      'gapPadding_double', _$gapPadding_double,
      key: 'gap_padding_double', opt: true);

  @override
  final MappableFields<InputBorderModel> fields = const {
    #type_enum_inputBorderType: _f$type_enum_inputBorderType,
    #borderRadius_borderRadius: _f$borderRadius_borderRadius,
    #borderSide_borderSide: _f$borderSide_borderSide,
    #gapPadding_double: _f$gapPadding_double,
  };

  static InputBorderModel _instantiate(DecodingData data) {
    return InputBorderModel(
        type_enum_inputBorderType: data.dec(_f$type_enum_inputBorderType),
        borderRadius_borderRadius: data.dec(_f$borderRadius_borderRadius),
        borderSide_borderSide: data.dec(_f$borderSide_borderSide),
        gapPadding_double: data.dec(_f$gapPadding_double));
  }

  @override
  final Function instantiate = _instantiate;

  static InputBorderModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InputBorderModel>(map);
  }

  static InputBorderModel fromJson(String json) {
    return ensureInitialized().decodeJson<InputBorderModel>(json);
  }
}

mixin InputBorderModelMappable {
  String toJson() {
    return InputBorderModelMapper.ensureInitialized()
        .encodeJson<InputBorderModel>(this as InputBorderModel);
  }

  Map<String, dynamic> toMap() {
    return InputBorderModelMapper.ensureInitialized()
        .encodeMap<InputBorderModel>(this as InputBorderModel);
  }

  InputBorderModelCopyWith<InputBorderModel, InputBorderModel, InputBorderModel>
      get copyWith => _InputBorderModelCopyWithImpl(
          this as InputBorderModel, $identity, $identity);
  @override
  String toString() {
    return InputBorderModelMapper.ensureInitialized()
        .stringifyValue(this as InputBorderModel);
  }

  @override
  bool operator ==(Object other) {
    return InputBorderModelMapper.ensureInitialized()
        .equalsValue(this as InputBorderModel, other);
  }

  @override
  int get hashCode {
    return InputBorderModelMapper.ensureInitialized()
        .hashValue(this as InputBorderModel);
  }
}

extension InputBorderModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InputBorderModel, $Out> {
  InputBorderModelCopyWith<$R, InputBorderModel, $Out>
      get $asInputBorderModel =>
          $base.as((v, t, t2) => _InputBorderModelCopyWithImpl(v, t, t2));
}

abstract class InputBorderModelCopyWith<$R, $In extends InputBorderModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BorderRadiusModelCopyWith<$R, BorderRadiusModel, BorderRadiusModel>?
      get borderRadius_borderRadius;
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get borderSide_borderSide;
  $R call(
      {InputBorderType? type_enum_inputBorderType,
      BorderRadiusModel? borderRadius_borderRadius,
      BorderSideModel? borderSide_borderSide,
      double? gapPadding_double});
  InputBorderModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InputBorderModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InputBorderModel, $Out>
    implements InputBorderModelCopyWith<$R, InputBorderModel, $Out> {
  _InputBorderModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InputBorderModel> $mapper =
      InputBorderModelMapper.ensureInitialized();
  @override
  BorderRadiusModelCopyWith<$R, BorderRadiusModel, BorderRadiusModel>?
      get borderRadius_borderRadius =>
          $value.borderRadius_borderRadius?.copyWith
              .$chain((v) => call(borderRadius_borderRadius: v));
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get borderSide_borderSide => $value.borderSide_borderSide?.copyWith
          .$chain((v) => call(borderSide_borderSide: v));
  @override
  $R call(
          {Object? type_enum_inputBorderType = $none,
          Object? borderRadius_borderRadius = $none,
          Object? borderSide_borderSide = $none,
          Object? gapPadding_double = $none}) =>
      $apply(FieldCopyWithData({
        if (type_enum_inputBorderType != $none)
          #type_enum_inputBorderType: type_enum_inputBorderType,
        if (borderRadius_borderRadius != $none)
          #borderRadius_borderRadius: borderRadius_borderRadius,
        if (borderSide_borderSide != $none)
          #borderSide_borderSide: borderSide_borderSide,
        if (gapPadding_double != $none) #gapPadding_double: gapPadding_double
      }));
  @override
  InputBorderModel $make(CopyWithData data) => InputBorderModel(
      type_enum_inputBorderType: data.get(#type_enum_inputBorderType,
          or: $value.type_enum_inputBorderType),
      borderRadius_borderRadius: data.get(#borderRadius_borderRadius,
          or: $value.borderRadius_borderRadius),
      borderSide_borderSide:
          data.get(#borderSide_borderSide, or: $value.borderSide_borderSide),
      gapPadding_double:
          data.get(#gapPadding_double, or: $value.gapPadding_double));

  @override
  InputBorderModelCopyWith<$R2, InputBorderModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InputBorderModelCopyWithImpl($value, $cast, t);
}
