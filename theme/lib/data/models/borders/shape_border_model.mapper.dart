// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'shape_border_model.dart';

class ShapeBorderModelMapper extends ClassMapperBase<ShapeBorderModel> {
  ShapeBorderModelMapper._();

  static ShapeBorderModelMapper? _instance;
  static ShapeBorderModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShapeBorderModelMapper._());
      BoxBorderModelMapper.ensureInitialized();
      InputBorderModelMapper.ensureInitialized();
      OutlinedBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ShapeBorderModel';

  static ShapeBorderType? _$type_enum_shapeBorderType(ShapeBorderModel v) =>
      v.type_enum_shapeBorderType;
  static const Field<ShapeBorderModel, ShapeBorderType>
      _f$type_enum_shapeBorderType = Field(
          'type_enum_shapeBorderType', _$type_enum_shapeBorderType,
          key: 'type_enum_shape_border_type', opt: true);
  static BoxBorderModel? _$boxBorder_boxBorder(ShapeBorderModel v) =>
      v.boxBorder_boxBorder;
  static const Field<ShapeBorderModel, BoxBorderModel> _f$boxBorder_boxBorder =
      Field('boxBorder_boxBorder', _$boxBorder_boxBorder,
          key: 'box_border_box_border', opt: true);
  static InputBorderModel? _$inputBorder_inputBorder(ShapeBorderModel v) =>
      v.inputBorder_inputBorder;
  static const Field<ShapeBorderModel, InputBorderModel>
      _f$inputBorder_inputBorder = Field(
          'inputBorder_inputBorder', _$inputBorder_inputBorder,
          key: 'input_border_input_border', opt: true);
  static OutlinedBorderModel _$outlinedBorder_outlinedBorder(
          ShapeBorderModel v) =>
      v.outlinedBorder_outlinedBorder;
  static const Field<ShapeBorderModel, OutlinedBorderModel>
      _f$outlinedBorder_outlinedBorder = Field(
          'outlinedBorder_outlinedBorder', _$outlinedBorder_outlinedBorder,
          key: 'outlined_border_outlined_border',
          opt: true,
          def: const OutlinedBorderModel());

  @override
  final MappableFields<ShapeBorderModel> fields = const {
    #type_enum_shapeBorderType: _f$type_enum_shapeBorderType,
    #boxBorder_boxBorder: _f$boxBorder_boxBorder,
    #inputBorder_inputBorder: _f$inputBorder_inputBorder,
    #outlinedBorder_outlinedBorder: _f$outlinedBorder_outlinedBorder,
  };

  static ShapeBorderModel _instantiate(DecodingData data) {
    return ShapeBorderModel(
        type_enum_shapeBorderType: data.dec(_f$type_enum_shapeBorderType),
        boxBorder_boxBorder: data.dec(_f$boxBorder_boxBorder),
        inputBorder_inputBorder: data.dec(_f$inputBorder_inputBorder),
        outlinedBorder_outlinedBorder:
            data.dec(_f$outlinedBorder_outlinedBorder));
  }

  @override
  final Function instantiate = _instantiate;

  static ShapeBorderModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShapeBorderModel>(map);
  }

  static ShapeBorderModel fromJson(String json) {
    return ensureInitialized().decodeJson<ShapeBorderModel>(json);
  }
}

mixin ShapeBorderModelMappable {
  String toJson() {
    return ShapeBorderModelMapper.ensureInitialized()
        .encodeJson<ShapeBorderModel>(this as ShapeBorderModel);
  }

  Map<String, dynamic> toMap() {
    return ShapeBorderModelMapper.ensureInitialized()
        .encodeMap<ShapeBorderModel>(this as ShapeBorderModel);
  }

  ShapeBorderModelCopyWith<ShapeBorderModel, ShapeBorderModel, ShapeBorderModel>
      get copyWith => _ShapeBorderModelCopyWithImpl(
          this as ShapeBorderModel, $identity, $identity);
  @override
  String toString() {
    return ShapeBorderModelMapper.ensureInitialized()
        .stringifyValue(this as ShapeBorderModel);
  }

  @override
  bool operator ==(Object other) {
    return ShapeBorderModelMapper.ensureInitialized()
        .equalsValue(this as ShapeBorderModel, other);
  }

  @override
  int get hashCode {
    return ShapeBorderModelMapper.ensureInitialized()
        .hashValue(this as ShapeBorderModel);
  }
}

extension ShapeBorderModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShapeBorderModel, $Out> {
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, $Out>
      get $asShapeBorderModel =>
          $base.as((v, t, t2) => _ShapeBorderModelCopyWithImpl(v, t, t2));
}

abstract class ShapeBorderModelCopyWith<$R, $In extends ShapeBorderModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BoxBorderModelCopyWith<$R, BoxBorderModel, BoxBorderModel>?
      get boxBorder_boxBorder;
  InputBorderModelCopyWith<$R, InputBorderModel, InputBorderModel>?
      get inputBorder_inputBorder;
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>
      get outlinedBorder_outlinedBorder;
  $R call(
      {ShapeBorderType? type_enum_shapeBorderType,
      BoxBorderModel? boxBorder_boxBorder,
      InputBorderModel? inputBorder_inputBorder,
      OutlinedBorderModel? outlinedBorder_outlinedBorder});
  ShapeBorderModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ShapeBorderModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShapeBorderModel, $Out>
    implements ShapeBorderModelCopyWith<$R, ShapeBorderModel, $Out> {
  _ShapeBorderModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShapeBorderModel> $mapper =
      ShapeBorderModelMapper.ensureInitialized();
  @override
  BoxBorderModelCopyWith<$R, BoxBorderModel, BoxBorderModel>?
      get boxBorder_boxBorder => $value.boxBorder_boxBorder?.copyWith
          .$chain((v) => call(boxBorder_boxBorder: v));
  @override
  InputBorderModelCopyWith<$R, InputBorderModel, InputBorderModel>?
      get inputBorder_inputBorder => $value.inputBorder_inputBorder?.copyWith
          .$chain((v) => call(inputBorder_inputBorder: v));
  @override
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>
      get outlinedBorder_outlinedBorder =>
          $value.outlinedBorder_outlinedBorder.copyWith
              .$chain((v) => call(outlinedBorder_outlinedBorder: v));
  @override
  $R call(
          {Object? type_enum_shapeBorderType = $none,
          Object? boxBorder_boxBorder = $none,
          Object? inputBorder_inputBorder = $none,
          OutlinedBorderModel? outlinedBorder_outlinedBorder}) =>
      $apply(FieldCopyWithData({
        if (type_enum_shapeBorderType != $none)
          #type_enum_shapeBorderType: type_enum_shapeBorderType,
        if (boxBorder_boxBorder != $none)
          #boxBorder_boxBorder: boxBorder_boxBorder,
        if (inputBorder_inputBorder != $none)
          #inputBorder_inputBorder: inputBorder_inputBorder,
        if (outlinedBorder_outlinedBorder != null)
          #outlinedBorder_outlinedBorder: outlinedBorder_outlinedBorder
      }));
  @override
  ShapeBorderModel $make(CopyWithData data) => ShapeBorderModel(
      type_enum_shapeBorderType: data.get(#type_enum_shapeBorderType,
          or: $value.type_enum_shapeBorderType),
      boxBorder_boxBorder:
          data.get(#boxBorder_boxBorder, or: $value.boxBorder_boxBorder),
      inputBorder_inputBorder: data.get(#inputBorder_inputBorder,
          or: $value.inputBorder_inputBorder),
      outlinedBorder_outlinedBorder: data.get(#outlinedBorder_outlinedBorder,
          or: $value.outlinedBorder_outlinedBorder));

  @override
  ShapeBorderModelCopyWith<$R2, ShapeBorderModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ShapeBorderModelCopyWithImpl($value, $cast, t);
}
