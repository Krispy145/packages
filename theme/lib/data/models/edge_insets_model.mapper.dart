// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'edge_insets_model.dart';

class EdgeInsetsModelMapper extends ClassMapperBase<EdgeInsetsModel> {
  EdgeInsetsModelMapper._();

  static EdgeInsetsModelMapper? _instance;
  static EdgeInsetsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EdgeInsetsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EdgeInsetsModel';

  static double? _$top_double(EdgeInsetsModel v) => v.top_double;
  static const Field<EdgeInsetsModel, double> _f$top_double =
      Field('top_double', _$top_double, opt: true);
  static double? _$left_double(EdgeInsetsModel v) => v.left_double;
  static const Field<EdgeInsetsModel, double> _f$left_double =
      Field('left_double', _$left_double, opt: true);
  static double? _$bottom_double(EdgeInsetsModel v) => v.bottom_double;
  static const Field<EdgeInsetsModel, double> _f$bottom_double =
      Field('bottom_double', _$bottom_double, opt: true);
  static double? _$right_double(EdgeInsetsModel v) => v.right_double;
  static const Field<EdgeInsetsModel, double> _f$right_double =
      Field('right_double', _$right_double, opt: true);

  @override
  final MappableFields<EdgeInsetsModel> fields = const {
    #top_double: _f$top_double,
    #left_double: _f$left_double,
    #bottom_double: _f$bottom_double,
    #right_double: _f$right_double,
  };

  static EdgeInsetsModel _instantiate(DecodingData data) {
    return EdgeInsetsModel(
        top_double: data.dec(_f$top_double),
        left_double: data.dec(_f$left_double),
        bottom_double: data.dec(_f$bottom_double),
        right_double: data.dec(_f$right_double));
  }

  @override
  final Function instantiate = _instantiate;

  static EdgeInsetsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EdgeInsetsModel>(map);
  }

  static EdgeInsetsModel fromJson(String json) {
    return ensureInitialized().decodeJson<EdgeInsetsModel>(json);
  }
}

mixin EdgeInsetsModelMappable {
  String toJson() {
    return EdgeInsetsModelMapper.ensureInitialized()
        .encodeJson<EdgeInsetsModel>(this as EdgeInsetsModel);
  }

  Map<String, dynamic> toMap() {
    return EdgeInsetsModelMapper.ensureInitialized()
        .encodeMap<EdgeInsetsModel>(this as EdgeInsetsModel);
  }

  EdgeInsetsModelCopyWith<EdgeInsetsModel, EdgeInsetsModel, EdgeInsetsModel>
      get copyWith => _EdgeInsetsModelCopyWithImpl(
          this as EdgeInsetsModel, $identity, $identity);
  @override
  String toString() {
    return EdgeInsetsModelMapper.ensureInitialized()
        .stringifyValue(this as EdgeInsetsModel);
  }

  @override
  bool operator ==(Object other) {
    return EdgeInsetsModelMapper.ensureInitialized()
        .equalsValue(this as EdgeInsetsModel, other);
  }

  @override
  int get hashCode {
    return EdgeInsetsModelMapper.ensureInitialized()
        .hashValue(this as EdgeInsetsModel);
  }
}

extension EdgeInsetsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EdgeInsetsModel, $Out> {
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, $Out> get $asEdgeInsetsModel =>
      $base.as((v, t, t2) => _EdgeInsetsModelCopyWithImpl(v, t, t2));
}

abstract class EdgeInsetsModelCopyWith<$R, $In extends EdgeInsetsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {double? top_double,
      double? left_double,
      double? bottom_double,
      double? right_double});
  EdgeInsetsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EdgeInsetsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EdgeInsetsModel, $Out>
    implements EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, $Out> {
  _EdgeInsetsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EdgeInsetsModel> $mapper =
      EdgeInsetsModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? top_double = $none,
          Object? left_double = $none,
          Object? bottom_double = $none,
          Object? right_double = $none}) =>
      $apply(FieldCopyWithData({
        if (top_double != $none) #top_double: top_double,
        if (left_double != $none) #left_double: left_double,
        if (bottom_double != $none) #bottom_double: bottom_double,
        if (right_double != $none) #right_double: right_double
      }));
  @override
  EdgeInsetsModel $make(CopyWithData data) => EdgeInsetsModel(
      top_double: data.get(#top_double, or: $value.top_double),
      left_double: data.get(#left_double, or: $value.left_double),
      bottom_double: data.get(#bottom_double, or: $value.bottom_double),
      right_double: data.get(#right_double, or: $value.right_double));

  @override
  EdgeInsetsModelCopyWith<$R2, EdgeInsetsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EdgeInsetsModelCopyWithImpl($value, $cast, t);
}
