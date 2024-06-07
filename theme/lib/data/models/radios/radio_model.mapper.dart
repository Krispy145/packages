// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'radio_model.dart';

class RadioModelMapper extends ClassMapperBase<RadioModel> {
  RadioModelMapper._();

  static RadioModelMapper? _instance;
  static RadioModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RadioModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RadioModel';

  static String? _$fillColor_themeColorString(RadioModel v) =>
      v.fillColor_themeColorString;
  static const Field<RadioModel, String> _f$fillColor_themeColorString = Field(
      'fillColor_themeColorString', _$fillColor_themeColorString,
      opt: true);
  static String? _$overlayColor_themeColorString(RadioModel v) =>
      v.overlayColor_themeColorString;
  static const Field<RadioModel, String> _f$overlayColor_themeColorString =
      Field('overlayColor_themeColorString', _$overlayColor_themeColorString,
          opt: true);
  static double? _$splashRadius_double(RadioModel v) => v.splashRadius_double;
  static const Field<RadioModel, double> _f$splashRadius_double =
      Field('splashRadius_double', _$splashRadius_double, opt: true);

  @override
  final MappableFields<RadioModel> fields = const {
    #fillColor_themeColorString: _f$fillColor_themeColorString,
    #overlayColor_themeColorString: _f$overlayColor_themeColorString,
    #splashRadius_double: _f$splashRadius_double,
  };

  static RadioModel _instantiate(DecodingData data) {
    return RadioModel(
        fillColor_themeColorString: data.dec(_f$fillColor_themeColorString),
        overlayColor_themeColorString:
            data.dec(_f$overlayColor_themeColorString),
        splashRadius_double: data.dec(_f$splashRadius_double));
  }

  @override
  final Function instantiate = _instantiate;

  static RadioModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RadioModel>(map);
  }

  static RadioModel fromJson(String json) {
    return ensureInitialized().decodeJson<RadioModel>(json);
  }
}

mixin RadioModelMappable {
  String toJson() {
    return RadioModelMapper.ensureInitialized()
        .encodeJson<RadioModel>(this as RadioModel);
  }

  Map<String, dynamic> toMap() {
    return RadioModelMapper.ensureInitialized()
        .encodeMap<RadioModel>(this as RadioModel);
  }

  RadioModelCopyWith<RadioModel, RadioModel, RadioModel> get copyWith =>
      _RadioModelCopyWithImpl(this as RadioModel, $identity, $identity);
  @override
  String toString() {
    return RadioModelMapper.ensureInitialized()
        .stringifyValue(this as RadioModel);
  }

  @override
  bool operator ==(Object other) {
    return RadioModelMapper.ensureInitialized()
        .equalsValue(this as RadioModel, other);
  }

  @override
  int get hashCode {
    return RadioModelMapper.ensureInitialized().hashValue(this as RadioModel);
  }
}

extension RadioModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RadioModel, $Out> {
  RadioModelCopyWith<$R, RadioModel, $Out> get $asRadioModel =>
      $base.as((v, t, t2) => _RadioModelCopyWithImpl(v, t, t2));
}

abstract class RadioModelCopyWith<$R, $In extends RadioModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? fillColor_themeColorString,
      String? overlayColor_themeColorString,
      double? splashRadius_double});
  RadioModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RadioModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RadioModel, $Out>
    implements RadioModelCopyWith<$R, RadioModel, $Out> {
  _RadioModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RadioModel> $mapper =
      RadioModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? fillColor_themeColorString = $none,
          Object? overlayColor_themeColorString = $none,
          Object? splashRadius_double = $none}) =>
      $apply(FieldCopyWithData({
        if (fillColor_themeColorString != $none)
          #fillColor_themeColorString: fillColor_themeColorString,
        if (overlayColor_themeColorString != $none)
          #overlayColor_themeColorString: overlayColor_themeColorString,
        if (splashRadius_double != $none)
          #splashRadius_double: splashRadius_double
      }));
  @override
  RadioModel $make(CopyWithData data) => RadioModel(
      fillColor_themeColorString: data.get(#fillColor_themeColorString,
          or: $value.fillColor_themeColorString),
      overlayColor_themeColorString: data.get(#overlayColor_themeColorString,
          or: $value.overlayColor_themeColorString),
      splashRadius_double:
          data.get(#splashRadius_double, or: $value.splashRadius_double));

  @override
  RadioModelCopyWith<$R2, RadioModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RadioModelCopyWithImpl($value, $cast, t);
}
