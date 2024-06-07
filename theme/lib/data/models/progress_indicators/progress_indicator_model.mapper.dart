// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'progress_indicator_model.dart';

class ProgressIndicatorModelMapper
    extends ClassMapperBase<ProgressIndicatorModel> {
  ProgressIndicatorModelMapper._();

  static ProgressIndicatorModelMapper? _instance;
  static ProgressIndicatorModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProgressIndicatorModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProgressIndicatorModel';

  static String? _$color_themeColorString(ProgressIndicatorModel v) =>
      v.color_themeColorString;
  static const Field<ProgressIndicatorModel, String> _f$color_themeColorString =
      Field('color_themeColorString', _$color_themeColorString, opt: true);
  static String? _$linearTrackColor_themeColorString(
          ProgressIndicatorModel v) =>
      v.linearTrackColor_themeColorString;
  static const Field<ProgressIndicatorModel, String>
      _f$linearTrackColor_themeColorString = Field(
          'linearTrackColor_themeColorString',
          _$linearTrackColor_themeColorString,
          opt: true);
  static double? _$linearMinHeight_double(ProgressIndicatorModel v) =>
      v.linearMinHeight_double;
  static const Field<ProgressIndicatorModel, double> _f$linearMinHeight_double =
      Field('linearMinHeight_double', _$linearMinHeight_double, opt: true);
  static String? _$circularTrackColor_themeColorString(
          ProgressIndicatorModel v) =>
      v.circularTrackColor_themeColorString;
  static const Field<ProgressIndicatorModel, String>
      _f$circularTrackColor_themeColorString = Field(
          'circularTrackColor_themeColorString',
          _$circularTrackColor_themeColorString,
          opt: true);
  static String? _$refreshBackgroundColor_themeColorString(
          ProgressIndicatorModel v) =>
      v.refreshBackgroundColor_themeColorString;
  static const Field<ProgressIndicatorModel, String>
      _f$refreshBackgroundColor_themeColorString = Field(
          'refreshBackgroundColor_themeColorString',
          _$refreshBackgroundColor_themeColorString,
          opt: true);

  @override
  final MappableFields<ProgressIndicatorModel> fields = const {
    #color_themeColorString: _f$color_themeColorString,
    #linearTrackColor_themeColorString: _f$linearTrackColor_themeColorString,
    #linearMinHeight_double: _f$linearMinHeight_double,
    #circularTrackColor_themeColorString:
        _f$circularTrackColor_themeColorString,
    #refreshBackgroundColor_themeColorString:
        _f$refreshBackgroundColor_themeColorString,
  };

  static ProgressIndicatorModel _instantiate(DecodingData data) {
    return ProgressIndicatorModel(
        color_themeColorString: data.dec(_f$color_themeColorString),
        linearTrackColor_themeColorString:
            data.dec(_f$linearTrackColor_themeColorString),
        linearMinHeight_double: data.dec(_f$linearMinHeight_double),
        circularTrackColor_themeColorString:
            data.dec(_f$circularTrackColor_themeColorString),
        refreshBackgroundColor_themeColorString:
            data.dec(_f$refreshBackgroundColor_themeColorString));
  }

  @override
  final Function instantiate = _instantiate;

  static ProgressIndicatorModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProgressIndicatorModel>(map);
  }

  static ProgressIndicatorModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProgressIndicatorModel>(json);
  }
}

mixin ProgressIndicatorModelMappable {
  String toJson() {
    return ProgressIndicatorModelMapper.ensureInitialized()
        .encodeJson<ProgressIndicatorModel>(this as ProgressIndicatorModel);
  }

  Map<String, dynamic> toMap() {
    return ProgressIndicatorModelMapper.ensureInitialized()
        .encodeMap<ProgressIndicatorModel>(this as ProgressIndicatorModel);
  }

  ProgressIndicatorModelCopyWith<ProgressIndicatorModel, ProgressIndicatorModel,
          ProgressIndicatorModel>
      get copyWith => _ProgressIndicatorModelCopyWithImpl(
          this as ProgressIndicatorModel, $identity, $identity);
  @override
  String toString() {
    return ProgressIndicatorModelMapper.ensureInitialized()
        .stringifyValue(this as ProgressIndicatorModel);
  }

  @override
  bool operator ==(Object other) {
    return ProgressIndicatorModelMapper.ensureInitialized()
        .equalsValue(this as ProgressIndicatorModel, other);
  }

  @override
  int get hashCode {
    return ProgressIndicatorModelMapper.ensureInitialized()
        .hashValue(this as ProgressIndicatorModel);
  }
}

extension ProgressIndicatorModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProgressIndicatorModel, $Out> {
  ProgressIndicatorModelCopyWith<$R, ProgressIndicatorModel, $Out>
      get $asProgressIndicatorModel =>
          $base.as((v, t, t2) => _ProgressIndicatorModelCopyWithImpl(v, t, t2));
}

abstract class ProgressIndicatorModelCopyWith<
    $R,
    $In extends ProgressIndicatorModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? color_themeColorString,
      String? linearTrackColor_themeColorString,
      double? linearMinHeight_double,
      String? circularTrackColor_themeColorString,
      String? refreshBackgroundColor_themeColorString});
  ProgressIndicatorModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ProgressIndicatorModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProgressIndicatorModel, $Out>
    implements
        ProgressIndicatorModelCopyWith<$R, ProgressIndicatorModel, $Out> {
  _ProgressIndicatorModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProgressIndicatorModel> $mapper =
      ProgressIndicatorModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? color_themeColorString = $none,
          Object? linearTrackColor_themeColorString = $none,
          Object? linearMinHeight_double = $none,
          Object? circularTrackColor_themeColorString = $none,
          Object? refreshBackgroundColor_themeColorString = $none}) =>
      $apply(FieldCopyWithData({
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (linearTrackColor_themeColorString != $none)
          #linearTrackColor_themeColorString: linearTrackColor_themeColorString,
        if (linearMinHeight_double != $none)
          #linearMinHeight_double: linearMinHeight_double,
        if (circularTrackColor_themeColorString != $none)
          #circularTrackColor_themeColorString:
              circularTrackColor_themeColorString,
        if (refreshBackgroundColor_themeColorString != $none)
          #refreshBackgroundColor_themeColorString:
              refreshBackgroundColor_themeColorString
      }));
  @override
  ProgressIndicatorModel $make(CopyWithData data) => ProgressIndicatorModel(
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      linearTrackColor_themeColorString: data.get(
          #linearTrackColor_themeColorString,
          or: $value.linearTrackColor_themeColorString),
      linearMinHeight_double:
          data.get(#linearMinHeight_double, or: $value.linearMinHeight_double),
      circularTrackColor_themeColorString: data.get(
          #circularTrackColor_themeColorString,
          or: $value.circularTrackColor_themeColorString),
      refreshBackgroundColor_themeColorString: data.get(
          #refreshBackgroundColor_themeColorString,
          or: $value.refreshBackgroundColor_themeColorString));

  @override
  ProgressIndicatorModelCopyWith<$R2, ProgressIndicatorModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ProgressIndicatorModelCopyWithImpl($value, $cast, t);
}
