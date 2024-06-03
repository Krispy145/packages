// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'box_constraints_model.dart';

class BoxConstraintsModelMapper extends ClassMapperBase<BoxConstraintsModel> {
  BoxConstraintsModelMapper._();

  static BoxConstraintsModelMapper? _instance;
  static BoxConstraintsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BoxConstraintsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BoxConstraintsModel';

  static double? _$minWidth_double(BoxConstraintsModel v) => v.minWidth_double;
  static const Field<BoxConstraintsModel, double> _f$minWidth_double = Field(
      'minWidth_double', _$minWidth_double,
      key: 'min_width_double', opt: true);
  static double? _$maxWidth_double(BoxConstraintsModel v) => v.maxWidth_double;
  static const Field<BoxConstraintsModel, double> _f$maxWidth_double = Field(
      'maxWidth_double', _$maxWidth_double,
      key: 'max_width_double', opt: true);
  static double? _$minHeight_double(BoxConstraintsModel v) =>
      v.minHeight_double;
  static const Field<BoxConstraintsModel, double> _f$minHeight_double = Field(
      'minHeight_double', _$minHeight_double,
      key: 'min_height_double', opt: true);
  static double? _$maxHeight_double(BoxConstraintsModel v) =>
      v.maxHeight_double;
  static const Field<BoxConstraintsModel, double> _f$maxHeight_double = Field(
      'maxHeight_double', _$maxHeight_double,
      key: 'max_height_double', opt: true);

  @override
  final MappableFields<BoxConstraintsModel> fields = const {
    #minWidth_double: _f$minWidth_double,
    #maxWidth_double: _f$maxWidth_double,
    #minHeight_double: _f$minHeight_double,
    #maxHeight_double: _f$maxHeight_double,
  };

  static BoxConstraintsModel _instantiate(DecodingData data) {
    return BoxConstraintsModel(
        minWidth_double: data.dec(_f$minWidth_double),
        maxWidth_double: data.dec(_f$maxWidth_double),
        minHeight_double: data.dec(_f$minHeight_double),
        maxHeight_double: data.dec(_f$maxHeight_double));
  }

  @override
  final Function instantiate = _instantiate;

  static BoxConstraintsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BoxConstraintsModel>(map);
  }

  static BoxConstraintsModel fromJson(String json) {
    return ensureInitialized().decodeJson<BoxConstraintsModel>(json);
  }
}

mixin BoxConstraintsModelMappable {
  String toJson() {
    return BoxConstraintsModelMapper.ensureInitialized()
        .encodeJson<BoxConstraintsModel>(this as BoxConstraintsModel);
  }

  Map<String, dynamic> toMap() {
    return BoxConstraintsModelMapper.ensureInitialized()
        .encodeMap<BoxConstraintsModel>(this as BoxConstraintsModel);
  }

  BoxConstraintsModelCopyWith<BoxConstraintsModel, BoxConstraintsModel,
          BoxConstraintsModel>
      get copyWith => _BoxConstraintsModelCopyWithImpl(
          this as BoxConstraintsModel, $identity, $identity);
  @override
  String toString() {
    return BoxConstraintsModelMapper.ensureInitialized()
        .stringifyValue(this as BoxConstraintsModel);
  }

  @override
  bool operator ==(Object other) {
    return BoxConstraintsModelMapper.ensureInitialized()
        .equalsValue(this as BoxConstraintsModel, other);
  }

  @override
  int get hashCode {
    return BoxConstraintsModelMapper.ensureInitialized()
        .hashValue(this as BoxConstraintsModel);
  }
}

extension BoxConstraintsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BoxConstraintsModel, $Out> {
  BoxConstraintsModelCopyWith<$R, BoxConstraintsModel, $Out>
      get $asBoxConstraintsModel =>
          $base.as((v, t, t2) => _BoxConstraintsModelCopyWithImpl(v, t, t2));
}

abstract class BoxConstraintsModelCopyWith<$R, $In extends BoxConstraintsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {double? minWidth_double,
      double? maxWidth_double,
      double? minHeight_double,
      double? maxHeight_double});
  BoxConstraintsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BoxConstraintsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BoxConstraintsModel, $Out>
    implements BoxConstraintsModelCopyWith<$R, BoxConstraintsModel, $Out> {
  _BoxConstraintsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BoxConstraintsModel> $mapper =
      BoxConstraintsModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? minWidth_double = $none,
          Object? maxWidth_double = $none,
          Object? minHeight_double = $none,
          Object? maxHeight_double = $none}) =>
      $apply(FieldCopyWithData({
        if (minWidth_double != $none) #minWidth_double: minWidth_double,
        if (maxWidth_double != $none) #maxWidth_double: maxWidth_double,
        if (minHeight_double != $none) #minHeight_double: minHeight_double,
        if (maxHeight_double != $none) #maxHeight_double: maxHeight_double
      }));
  @override
  BoxConstraintsModel $make(CopyWithData data) => BoxConstraintsModel(
      minWidth_double: data.get(#minWidth_double, or: $value.minWidth_double),
      maxWidth_double: data.get(#maxWidth_double, or: $value.maxWidth_double),
      minHeight_double:
          data.get(#minHeight_double, or: $value.minHeight_double),
      maxHeight_double:
          data.get(#maxHeight_double, or: $value.maxHeight_double));

  @override
  BoxConstraintsModelCopyWith<$R2, BoxConstraintsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _BoxConstraintsModelCopyWithImpl($value, $cast, t);
}
