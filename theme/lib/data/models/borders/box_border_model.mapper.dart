// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'box_border_model.dart';

class BoxBorderModelMapper extends ClassMapperBase<BoxBorderModel> {
  BoxBorderModelMapper._();

  static BoxBorderModelMapper? _instance;
  static BoxBorderModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BoxBorderModelMapper._());
      BorderSideModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BoxBorderModel';

  static BorderSideModel? _$top(BoxBorderModel v) => v.top;
  static const Field<BoxBorderModel, BorderSideModel> _f$top =
      Field('top', _$top);
  static BorderSideModel? _$bottom(BoxBorderModel v) => v.bottom;
  static const Field<BoxBorderModel, BorderSideModel> _f$bottom =
      Field('bottom', _$bottom);
  static BorderSideModel? _$left(BoxBorderModel v) => v.left;
  static const Field<BoxBorderModel, BorderSideModel> _f$left =
      Field('left', _$left);
  static BorderSideModel? _$right(BoxBorderModel v) => v.right;
  static const Field<BoxBorderModel, BorderSideModel> _f$right =
      Field('right', _$right);

  @override
  final MappableFields<BoxBorderModel> fields = const {
    #top: _f$top,
    #bottom: _f$bottom,
    #left: _f$left,
    #right: _f$right,
  };

  static BoxBorderModel _instantiate(DecodingData data) {
    return BoxBorderModel(
        top: data.dec(_f$top),
        bottom: data.dec(_f$bottom),
        left: data.dec(_f$left),
        right: data.dec(_f$right));
  }

  @override
  final Function instantiate = _instantiate;

  static BoxBorderModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BoxBorderModel>(map);
  }

  static BoxBorderModel fromJson(String json) {
    return ensureInitialized().decodeJson<BoxBorderModel>(json);
  }
}

mixin BoxBorderModelMappable {
  String toJson() {
    return BoxBorderModelMapper.ensureInitialized()
        .encodeJson<BoxBorderModel>(this as BoxBorderModel);
  }

  Map<String, dynamic> toMap() {
    return BoxBorderModelMapper.ensureInitialized()
        .encodeMap<BoxBorderModel>(this as BoxBorderModel);
  }

  BoxBorderModelCopyWith<BoxBorderModel, BoxBorderModel, BoxBorderModel>
      get copyWith => _BoxBorderModelCopyWithImpl(
          this as BoxBorderModel, $identity, $identity);
  @override
  String toString() {
    return BoxBorderModelMapper.ensureInitialized()
        .stringifyValue(this as BoxBorderModel);
  }

  @override
  bool operator ==(Object other) {
    return BoxBorderModelMapper.ensureInitialized()
        .equalsValue(this as BoxBorderModel, other);
  }

  @override
  int get hashCode {
    return BoxBorderModelMapper.ensureInitialized()
        .hashValue(this as BoxBorderModel);
  }
}

extension BoxBorderModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BoxBorderModel, $Out> {
  BoxBorderModelCopyWith<$R, BoxBorderModel, $Out> get $asBoxBorderModel =>
      $base.as((v, t, t2) => _BoxBorderModelCopyWithImpl(v, t, t2));
}

abstract class BoxBorderModelCopyWith<$R, $In extends BoxBorderModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>? get top;
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>? get bottom;
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>? get left;
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>? get right;
  $R call(
      {BorderSideModel? top,
      BorderSideModel? bottom,
      BorderSideModel? left,
      BorderSideModel? right});
  BoxBorderModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BoxBorderModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BoxBorderModel, $Out>
    implements BoxBorderModelCopyWith<$R, BoxBorderModel, $Out> {
  _BoxBorderModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BoxBorderModel> $mapper =
      BoxBorderModelMapper.ensureInitialized();
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>? get top =>
      $value.top?.copyWith.$chain((v) => call(top: v));
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>? get bottom =>
      $value.bottom?.copyWith.$chain((v) => call(bottom: v));
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>? get left =>
      $value.left?.copyWith.$chain((v) => call(left: v));
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>? get right =>
      $value.right?.copyWith.$chain((v) => call(right: v));
  @override
  $R call(
          {Object? top = $none,
          Object? bottom = $none,
          Object? left = $none,
          Object? right = $none}) =>
      $apply(FieldCopyWithData({
        if (top != $none) #top: top,
        if (bottom != $none) #bottom: bottom,
        if (left != $none) #left: left,
        if (right != $none) #right: right
      }));
  @override
  BoxBorderModel $make(CopyWithData data) => BoxBorderModel(
      top: data.get(#top, or: $value.top),
      bottom: data.get(#bottom, or: $value.bottom),
      left: data.get(#left, or: $value.left),
      right: data.get(#right, or: $value.right));

  @override
  BoxBorderModelCopyWith<$R2, BoxBorderModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BoxBorderModelCopyWithImpl($value, $cast, t);
}
