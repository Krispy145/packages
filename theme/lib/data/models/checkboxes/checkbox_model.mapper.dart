// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'checkbox_model.dart';

class CheckboxModelMapper extends ClassMapperBase<CheckboxModel> {
  CheckboxModelMapper._();

  static CheckboxModelMapper? _instance;
  static CheckboxModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CheckboxModelMapper._());
      OutlinedBorderModelMapper.ensureInitialized();
      BorderSideModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CheckboxModel';

  static String? _$fillColor_themeColorString(CheckboxModel v) =>
      v.fillColor_themeColorString;
  static const Field<CheckboxModel, String> _f$fillColor_themeColorString =
      Field('fillColor_themeColorString', _$fillColor_themeColorString,
          opt: true);
  static String? _$checkColor_themeColorString(CheckboxModel v) =>
      v.checkColor_themeColorString;
  static const Field<CheckboxModel, String> _f$checkColor_themeColorString =
      Field('checkColor_themeColorString', _$checkColor_themeColorString,
          opt: true);
  static String? _$overlayColor_themeColorString(CheckboxModel v) =>
      v.overlayColor_themeColorString;
  static const Field<CheckboxModel, String> _f$overlayColor_themeColorString =
      Field('overlayColor_themeColorString', _$overlayColor_themeColorString,
          opt: true);
  static double? _$splashRadius_double(CheckboxModel v) =>
      v.splashRadius_double;
  static const Field<CheckboxModel, double> _f$splashRadius_double =
      Field('splashRadius_double', _$splashRadius_double, opt: true);
  static OutlinedBorderModel? _$shape_outlinedBorder(CheckboxModel v) =>
      v.shape_outlinedBorder;
  static const Field<CheckboxModel, OutlinedBorderModel>
      _f$shape_outlinedBorder =
      Field('shape_outlinedBorder', _$shape_outlinedBorder, opt: true);
  static BorderSideModel? _$side_borderSide(CheckboxModel v) =>
      v.side_borderSide;
  static const Field<CheckboxModel, BorderSideModel> _f$side_borderSide =
      Field('side_borderSide', _$side_borderSide, opt: true);

  @override
  final MappableFields<CheckboxModel> fields = const {
    #fillColor_themeColorString: _f$fillColor_themeColorString,
    #checkColor_themeColorString: _f$checkColor_themeColorString,
    #overlayColor_themeColorString: _f$overlayColor_themeColorString,
    #splashRadius_double: _f$splashRadius_double,
    #shape_outlinedBorder: _f$shape_outlinedBorder,
    #side_borderSide: _f$side_borderSide,
  };

  static CheckboxModel _instantiate(DecodingData data) {
    return CheckboxModel(
        fillColor_themeColorString: data.dec(_f$fillColor_themeColorString),
        checkColor_themeColorString: data.dec(_f$checkColor_themeColorString),
        overlayColor_themeColorString:
            data.dec(_f$overlayColor_themeColorString),
        splashRadius_double: data.dec(_f$splashRadius_double),
        shape_outlinedBorder: data.dec(_f$shape_outlinedBorder),
        side_borderSide: data.dec(_f$side_borderSide));
  }

  @override
  final Function instantiate = _instantiate;

  static CheckboxModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CheckboxModel>(map);
  }

  static CheckboxModel fromJson(String json) {
    return ensureInitialized().decodeJson<CheckboxModel>(json);
  }
}

mixin CheckboxModelMappable {
  String toJson() {
    return CheckboxModelMapper.ensureInitialized()
        .encodeJson<CheckboxModel>(this as CheckboxModel);
  }

  Map<String, dynamic> toMap() {
    return CheckboxModelMapper.ensureInitialized()
        .encodeMap<CheckboxModel>(this as CheckboxModel);
  }

  CheckboxModelCopyWith<CheckboxModel, CheckboxModel, CheckboxModel>
      get copyWith => _CheckboxModelCopyWithImpl(
          this as CheckboxModel, $identity, $identity);
  @override
  String toString() {
    return CheckboxModelMapper.ensureInitialized()
        .stringifyValue(this as CheckboxModel);
  }

  @override
  bool operator ==(Object other) {
    return CheckboxModelMapper.ensureInitialized()
        .equalsValue(this as CheckboxModel, other);
  }

  @override
  int get hashCode {
    return CheckboxModelMapper.ensureInitialized()
        .hashValue(this as CheckboxModel);
  }
}

extension CheckboxModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CheckboxModel, $Out> {
  CheckboxModelCopyWith<$R, CheckboxModel, $Out> get $asCheckboxModel =>
      $base.as((v, t, t2) => _CheckboxModelCopyWithImpl(v, t, t2));
}

abstract class CheckboxModelCopyWith<$R, $In extends CheckboxModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder;
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide;
  $R call(
      {String? fillColor_themeColorString,
      String? checkColor_themeColorString,
      String? overlayColor_themeColorString,
      double? splashRadius_double,
      OutlinedBorderModel? shape_outlinedBorder,
      BorderSideModel? side_borderSide});
  CheckboxModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CheckboxModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CheckboxModel, $Out>
    implements CheckboxModelCopyWith<$R, CheckboxModel, $Out> {
  _CheckboxModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CheckboxModel> $mapper =
      CheckboxModelMapper.ensureInitialized();
  @override
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder => $value.shape_outlinedBorder?.copyWith
          .$chain((v) => call(shape_outlinedBorder: v));
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide => $value.side_borderSide?.copyWith
          .$chain((v) => call(side_borderSide: v));
  @override
  $R call(
          {Object? fillColor_themeColorString = $none,
          Object? checkColor_themeColorString = $none,
          Object? overlayColor_themeColorString = $none,
          Object? splashRadius_double = $none,
          Object? shape_outlinedBorder = $none,
          Object? side_borderSide = $none}) =>
      $apply(FieldCopyWithData({
        if (fillColor_themeColorString != $none)
          #fillColor_themeColorString: fillColor_themeColorString,
        if (checkColor_themeColorString != $none)
          #checkColor_themeColorString: checkColor_themeColorString,
        if (overlayColor_themeColorString != $none)
          #overlayColor_themeColorString: overlayColor_themeColorString,
        if (splashRadius_double != $none)
          #splashRadius_double: splashRadius_double,
        if (shape_outlinedBorder != $none)
          #shape_outlinedBorder: shape_outlinedBorder,
        if (side_borderSide != $none) #side_borderSide: side_borderSide
      }));
  @override
  CheckboxModel $make(CopyWithData data) => CheckboxModel(
      fillColor_themeColorString: data.get(#fillColor_themeColorString,
          or: $value.fillColor_themeColorString),
      checkColor_themeColorString: data.get(#checkColor_themeColorString,
          or: $value.checkColor_themeColorString),
      overlayColor_themeColorString: data.get(#overlayColor_themeColorString,
          or: $value.overlayColor_themeColorString),
      splashRadius_double:
          data.get(#splashRadius_double, or: $value.splashRadius_double),
      shape_outlinedBorder:
          data.get(#shape_outlinedBorder, or: $value.shape_outlinedBorder),
      side_borderSide: data.get(#side_borderSide, or: $value.side_borderSide));

  @override
  CheckboxModelCopyWith<$R2, CheckboxModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CheckboxModelCopyWithImpl($value, $cast, t);
}
