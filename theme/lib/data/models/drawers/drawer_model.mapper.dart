// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'drawer_model.dart';

class DrawerModelMapper extends ClassMapperBase<DrawerModel> {
  DrawerModelMapper._();

  static DrawerModelMapper? _instance;
  static DrawerModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DrawerModelMapper._());
      OutlinedBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DrawerModel';

  static String? _$backgroundColor_themeColorString(DrawerModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<DrawerModel, String> _f$backgroundColor_themeColorString =
      Field('backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          opt: true);
  static String? _$scrimColor_themeColorString(DrawerModel v) =>
      v.scrimColor_themeColorString;
  static const Field<DrawerModel, String> _f$scrimColor_themeColorString =
      Field('scrimColor_themeColorString', _$scrimColor_themeColorString,
          opt: true);
  static double? _$elevation_double(DrawerModel v) => v.elevation_double;
  static const Field<DrawerModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static String? _$shadowColor_themeColorString(DrawerModel v) =>
      v.shadowColor_themeColorString;
  static const Field<DrawerModel, String> _f$shadowColor_themeColorString =
      Field('shadowColor_themeColorString', _$shadowColor_themeColorString,
          opt: true);
  static String? _$surfaceTintColor_themeColorString(DrawerModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<DrawerModel, String> _f$surfaceTintColor_themeColorString =
      Field('surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          opt: true);
  static OutlinedBorderModel? _$shape_outlinedBorder(DrawerModel v) =>
      v.shape_outlinedBorder;
  static const Field<DrawerModel, OutlinedBorderModel> _f$shape_outlinedBorder =
      Field('shape_outlinedBorder', _$shape_outlinedBorder,
          opt: true, def: const OutlinedBorderModel());
  static OutlinedBorderModel? _$endShape_outlinedBorder(DrawerModel v) =>
      v.endShape_outlinedBorder;
  static const Field<DrawerModel, OutlinedBorderModel>
      _f$endShape_outlinedBorder = Field(
          'endShape_outlinedBorder', _$endShape_outlinedBorder,
          opt: true, def: const OutlinedBorderModel());
  static double? _$width_double(DrawerModel v) => v.width_double;
  static const Field<DrawerModel, double> _f$width_double =
      Field('width_double', _$width_double, opt: true);

  @override
  final MappableFields<DrawerModel> fields = const {
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #scrimColor_themeColorString: _f$scrimColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #shape_outlinedBorder: _f$shape_outlinedBorder,
    #endShape_outlinedBorder: _f$endShape_outlinedBorder,
    #width_double: _f$width_double,
  };

  static DrawerModel _instantiate(DecodingData data) {
    return DrawerModel(
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        scrimColor_themeColorString: data.dec(_f$scrimColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        shape_outlinedBorder: data.dec(_f$shape_outlinedBorder),
        endShape_outlinedBorder: data.dec(_f$endShape_outlinedBorder),
        width_double: data.dec(_f$width_double));
  }

  @override
  final Function instantiate = _instantiate;

  static DrawerModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DrawerModel>(map);
  }

  static DrawerModel fromJson(String json) {
    return ensureInitialized().decodeJson<DrawerModel>(json);
  }
}

mixin DrawerModelMappable {
  String toJson() {
    return DrawerModelMapper.ensureInitialized()
        .encodeJson<DrawerModel>(this as DrawerModel);
  }

  Map<String, dynamic> toMap() {
    return DrawerModelMapper.ensureInitialized()
        .encodeMap<DrawerModel>(this as DrawerModel);
  }

  DrawerModelCopyWith<DrawerModel, DrawerModel, DrawerModel> get copyWith =>
      _DrawerModelCopyWithImpl(this as DrawerModel, $identity, $identity);
  @override
  String toString() {
    return DrawerModelMapper.ensureInitialized()
        .stringifyValue(this as DrawerModel);
  }

  @override
  bool operator ==(Object other) {
    return DrawerModelMapper.ensureInitialized()
        .equalsValue(this as DrawerModel, other);
  }

  @override
  int get hashCode {
    return DrawerModelMapper.ensureInitialized().hashValue(this as DrawerModel);
  }
}

extension DrawerModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DrawerModel, $Out> {
  DrawerModelCopyWith<$R, DrawerModel, $Out> get $asDrawerModel =>
      $base.as((v, t, t2) => _DrawerModelCopyWithImpl(v, t, t2));
}

abstract class DrawerModelCopyWith<$R, $In extends DrawerModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder;
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get endShape_outlinedBorder;
  $R call(
      {String? backgroundColor_themeColorString,
      String? scrimColor_themeColorString,
      double? elevation_double,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      OutlinedBorderModel? shape_outlinedBorder,
      OutlinedBorderModel? endShape_outlinedBorder,
      double? width_double});
  DrawerModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DrawerModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DrawerModel, $Out>
    implements DrawerModelCopyWith<$R, DrawerModel, $Out> {
  _DrawerModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DrawerModel> $mapper =
      DrawerModelMapper.ensureInitialized();
  @override
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder => $value.shape_outlinedBorder?.copyWith
          .$chain((v) => call(shape_outlinedBorder: v));
  @override
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get endShape_outlinedBorder => $value.endShape_outlinedBorder?.copyWith
          .$chain((v) => call(endShape_outlinedBorder: v));
  @override
  $R call(
          {Object? backgroundColor_themeColorString = $none,
          Object? scrimColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? shape_outlinedBorder = $none,
          Object? endShape_outlinedBorder = $none,
          Object? width_double = $none}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (scrimColor_themeColorString != $none)
          #scrimColor_themeColorString: scrimColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (shape_outlinedBorder != $none)
          #shape_outlinedBorder: shape_outlinedBorder,
        if (endShape_outlinedBorder != $none)
          #endShape_outlinedBorder: endShape_outlinedBorder,
        if (width_double != $none) #width_double: width_double
      }));
  @override
  DrawerModel $make(CopyWithData data) => DrawerModel(
      backgroundColor_themeColorString: data.get(
          #backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      scrimColor_themeColorString: data.get(#scrimColor_themeColorString,
          or: $value.scrimColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      shape_outlinedBorder:
          data.get(#shape_outlinedBorder, or: $value.shape_outlinedBorder),
      endShape_outlinedBorder: data.get(#endShape_outlinedBorder,
          or: $value.endShape_outlinedBorder),
      width_double: data.get(#width_double, or: $value.width_double));

  @override
  DrawerModelCopyWith<$R2, DrawerModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DrawerModelCopyWithImpl($value, $cast, t);
}
