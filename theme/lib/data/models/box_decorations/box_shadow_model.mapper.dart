// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'box_shadow_model.dart';

class BoxShadowModelMapper extends ClassMapperBase<BoxShadowModel> {
  BoxShadowModelMapper._();

  static BoxShadowModelMapper? _instance;
  static BoxShadowModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BoxShadowModelMapper._());
      OffsetModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BoxShadowModel';

  static String? _$color_themeColorString(BoxShadowModel v) =>
      v.color_themeColorString;
  static const Field<BoxShadowModel, String> _f$color_themeColorString =
      Field('color_themeColorString', _$color_themeColorString);
  static OffsetModel? _$offset_offset(BoxShadowModel v) => v.offset_offset;
  static const Field<BoxShadowModel, OffsetModel> _f$offset_offset =
      Field('offset_offset', _$offset_offset);
  static double? _$blurRadius_double(BoxShadowModel v) => v.blurRadius_double;
  static const Field<BoxShadowModel, double> _f$blurRadius_double =
      Field('blurRadius_double', _$blurRadius_double);
  static double? _$spreadRadius_double(BoxShadowModel v) =>
      v.spreadRadius_double;
  static const Field<BoxShadowModel, double> _f$spreadRadius_double =
      Field('spreadRadius_double', _$spreadRadius_double);

  @override
  final MappableFields<BoxShadowModel> fields = const {
    #color_themeColorString: _f$color_themeColorString,
    #offset_offset: _f$offset_offset,
    #blurRadius_double: _f$blurRadius_double,
    #spreadRadius_double: _f$spreadRadius_double,
  };

  static BoxShadowModel _instantiate(DecodingData data) {
    return BoxShadowModel(
        color_themeColorString: data.dec(_f$color_themeColorString),
        offset_offset: data.dec(_f$offset_offset),
        blurRadius_double: data.dec(_f$blurRadius_double),
        spreadRadius_double: data.dec(_f$spreadRadius_double));
  }

  @override
  final Function instantiate = _instantiate;

  static BoxShadowModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BoxShadowModel>(map);
  }

  static BoxShadowModel fromJson(String json) {
    return ensureInitialized().decodeJson<BoxShadowModel>(json);
  }
}

mixin BoxShadowModelMappable {
  String toJson() {
    return BoxShadowModelMapper.ensureInitialized()
        .encodeJson<BoxShadowModel>(this as BoxShadowModel);
  }

  Map<String, dynamic> toMap() {
    return BoxShadowModelMapper.ensureInitialized()
        .encodeMap<BoxShadowModel>(this as BoxShadowModel);
  }

  BoxShadowModelCopyWith<BoxShadowModel, BoxShadowModel, BoxShadowModel>
      get copyWith => _BoxShadowModelCopyWithImpl(
          this as BoxShadowModel, $identity, $identity);
  @override
  String toString() {
    return BoxShadowModelMapper.ensureInitialized()
        .stringifyValue(this as BoxShadowModel);
  }

  @override
  bool operator ==(Object other) {
    return BoxShadowModelMapper.ensureInitialized()
        .equalsValue(this as BoxShadowModel, other);
  }

  @override
  int get hashCode {
    return BoxShadowModelMapper.ensureInitialized()
        .hashValue(this as BoxShadowModel);
  }
}

extension BoxShadowModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BoxShadowModel, $Out> {
  BoxShadowModelCopyWith<$R, BoxShadowModel, $Out> get $asBoxShadowModel =>
      $base.as((v, t, t2) => _BoxShadowModelCopyWithImpl(v, t, t2));
}

abstract class BoxShadowModelCopyWith<$R, $In extends BoxShadowModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  OffsetModelCopyWith<$R, OffsetModel, OffsetModel>? get offset_offset;
  $R call(
      {String? color_themeColorString,
      OffsetModel? offset_offset,
      double? blurRadius_double,
      double? spreadRadius_double});
  BoxShadowModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BoxShadowModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BoxShadowModel, $Out>
    implements BoxShadowModelCopyWith<$R, BoxShadowModel, $Out> {
  _BoxShadowModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BoxShadowModel> $mapper =
      BoxShadowModelMapper.ensureInitialized();
  @override
  OffsetModelCopyWith<$R, OffsetModel, OffsetModel>? get offset_offset =>
      $value.offset_offset?.copyWith.$chain((v) => call(offset_offset: v));
  @override
  $R call(
          {Object? color_themeColorString = $none,
          Object? offset_offset = $none,
          Object? blurRadius_double = $none,
          Object? spreadRadius_double = $none}) =>
      $apply(FieldCopyWithData({
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (offset_offset != $none) #offset_offset: offset_offset,
        if (blurRadius_double != $none) #blurRadius_double: blurRadius_double,
        if (spreadRadius_double != $none)
          #spreadRadius_double: spreadRadius_double
      }));
  @override
  BoxShadowModel $make(CopyWithData data) => BoxShadowModel(
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      offset_offset: data.get(#offset_offset, or: $value.offset_offset),
      blurRadius_double:
          data.get(#blurRadius_double, or: $value.blurRadius_double),
      spreadRadius_double:
          data.get(#spreadRadius_double, or: $value.spreadRadius_double));

  @override
  BoxShadowModelCopyWith<$R2, BoxShadowModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BoxShadowModelCopyWithImpl($value, $cast, t);
}
