// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'switch_model.dart';

class SwitchModelMapper extends ClassMapperBase<SwitchModel> {
  SwitchModelMapper._();

  static SwitchModelMapper? _instance;
  static SwitchModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SwitchModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SwitchModel';

  static String? _$thumbColor_themeColorString(SwitchModel v) =>
      v.thumbColor_themeColorString;
  static const Field<SwitchModel, String> _f$thumbColor_themeColorString =
      Field('thumbColor_themeColorString', _$thumbColor_themeColorString,
          opt: true);
  static String? _$trackColor_themeColorString(SwitchModel v) =>
      v.trackColor_themeColorString;
  static const Field<SwitchModel, String> _f$trackColor_themeColorString =
      Field('trackColor_themeColorString', _$trackColor_themeColorString,
          opt: true);
  static String? _$trackOutlineColor_themeColorString(SwitchModel v) =>
      v.trackOutlineColor_themeColorString;
  static const Field<SwitchModel, String>
      _f$trackOutlineColor_themeColorString = Field(
          'trackOutlineColor_themeColorString',
          _$trackOutlineColor_themeColorString,
          opt: true);
  static double? _$trackOutlineWidth_double(SwitchModel v) =>
      v.trackOutlineWidth_double;
  static const Field<SwitchModel, double> _f$trackOutlineWidth_double =
      Field('trackOutlineWidth_double', _$trackOutlineWidth_double, opt: true);
  static String? _$overlayColor_themeColorString(SwitchModel v) =>
      v.overlayColor_themeColorString;
  static const Field<SwitchModel, String> _f$overlayColor_themeColorString =
      Field('overlayColor_themeColorString', _$overlayColor_themeColorString,
          opt: true);
  static double? _$splashRadius_double(SwitchModel v) => v.splashRadius_double;
  static const Field<SwitchModel, double> _f$splashRadius_double =
      Field('splashRadius_double', _$splashRadius_double, opt: true);

  @override
  final MappableFields<SwitchModel> fields = const {
    #thumbColor_themeColorString: _f$thumbColor_themeColorString,
    #trackColor_themeColorString: _f$trackColor_themeColorString,
    #trackOutlineColor_themeColorString: _f$trackOutlineColor_themeColorString,
    #trackOutlineWidth_double: _f$trackOutlineWidth_double,
    #overlayColor_themeColorString: _f$overlayColor_themeColorString,
    #splashRadius_double: _f$splashRadius_double,
  };

  static SwitchModel _instantiate(DecodingData data) {
    return SwitchModel(
        thumbColor_themeColorString: data.dec(_f$thumbColor_themeColorString),
        trackColor_themeColorString: data.dec(_f$trackColor_themeColorString),
        trackOutlineColor_themeColorString:
            data.dec(_f$trackOutlineColor_themeColorString),
        trackOutlineWidth_double: data.dec(_f$trackOutlineWidth_double),
        overlayColor_themeColorString:
            data.dec(_f$overlayColor_themeColorString),
        splashRadius_double: data.dec(_f$splashRadius_double));
  }

  @override
  final Function instantiate = _instantiate;

  static SwitchModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SwitchModel>(map);
  }

  static SwitchModel fromJson(String json) {
    return ensureInitialized().decodeJson<SwitchModel>(json);
  }
}

mixin SwitchModelMappable {
  String toJson() {
    return SwitchModelMapper.ensureInitialized()
        .encodeJson<SwitchModel>(this as SwitchModel);
  }

  Map<String, dynamic> toMap() {
    return SwitchModelMapper.ensureInitialized()
        .encodeMap<SwitchModel>(this as SwitchModel);
  }

  SwitchModelCopyWith<SwitchModel, SwitchModel, SwitchModel> get copyWith =>
      _SwitchModelCopyWithImpl(this as SwitchModel, $identity, $identity);
  @override
  String toString() {
    return SwitchModelMapper.ensureInitialized()
        .stringifyValue(this as SwitchModel);
  }

  @override
  bool operator ==(Object other) {
    return SwitchModelMapper.ensureInitialized()
        .equalsValue(this as SwitchModel, other);
  }

  @override
  int get hashCode {
    return SwitchModelMapper.ensureInitialized().hashValue(this as SwitchModel);
  }
}

extension SwitchModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SwitchModel, $Out> {
  SwitchModelCopyWith<$R, SwitchModel, $Out> get $asSwitchModel =>
      $base.as((v, t, t2) => _SwitchModelCopyWithImpl(v, t, t2));
}

abstract class SwitchModelCopyWith<$R, $In extends SwitchModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? thumbColor_themeColorString,
      String? trackColor_themeColorString,
      String? trackOutlineColor_themeColorString,
      double? trackOutlineWidth_double,
      String? overlayColor_themeColorString,
      double? splashRadius_double});
  SwitchModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SwitchModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SwitchModel, $Out>
    implements SwitchModelCopyWith<$R, SwitchModel, $Out> {
  _SwitchModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SwitchModel> $mapper =
      SwitchModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? thumbColor_themeColorString = $none,
          Object? trackColor_themeColorString = $none,
          Object? trackOutlineColor_themeColorString = $none,
          Object? trackOutlineWidth_double = $none,
          Object? overlayColor_themeColorString = $none,
          Object? splashRadius_double = $none}) =>
      $apply(FieldCopyWithData({
        if (thumbColor_themeColorString != $none)
          #thumbColor_themeColorString: thumbColor_themeColorString,
        if (trackColor_themeColorString != $none)
          #trackColor_themeColorString: trackColor_themeColorString,
        if (trackOutlineColor_themeColorString != $none)
          #trackOutlineColor_themeColorString:
              trackOutlineColor_themeColorString,
        if (trackOutlineWidth_double != $none)
          #trackOutlineWidth_double: trackOutlineWidth_double,
        if (overlayColor_themeColorString != $none)
          #overlayColor_themeColorString: overlayColor_themeColorString,
        if (splashRadius_double != $none)
          #splashRadius_double: splashRadius_double
      }));
  @override
  SwitchModel $make(CopyWithData data) => SwitchModel(
      thumbColor_themeColorString: data.get(#thumbColor_themeColorString,
          or: $value.thumbColor_themeColorString),
      trackColor_themeColorString: data.get(#trackColor_themeColorString,
          or: $value.trackColor_themeColorString),
      trackOutlineColor_themeColorString: data.get(
          #trackOutlineColor_themeColorString,
          or: $value.trackOutlineColor_themeColorString),
      trackOutlineWidth_double: data.get(#trackOutlineWidth_double,
          or: $value.trackOutlineWidth_double),
      overlayColor_themeColorString: data.get(#overlayColor_themeColorString,
          or: $value.overlayColor_themeColorString),
      splashRadius_double:
          data.get(#splashRadius_double, or: $value.splashRadius_double));

  @override
  SwitchModelCopyWith<$R2, SwitchModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SwitchModelCopyWithImpl($value, $cast, t);
}
