// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'navigation_drawer_model.dart';

class NavigationDrawerModelMapper
    extends ClassMapperBase<NavigationDrawerModel> {
  NavigationDrawerModelMapper._();

  static NavigationDrawerModelMapper? _instance;
  static NavigationDrawerModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NavigationDrawerModelMapper._());
      ShapeBorderModelMapper.ensureInitialized();
      SizeModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NavigationDrawerModel';

  static double? _$tileHeight_double(NavigationDrawerModel v) =>
      v.tileHeight_double;
  static const Field<NavigationDrawerModel, double> _f$tileHeight_double =
      Field('tileHeight_double', _$tileHeight_double, opt: true);
  static String? _$backgroundColor_themeColorString(NavigationDrawerModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<NavigationDrawerModel, String>
      _f$backgroundColor_themeColorString = Field(
          'backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          opt: true);
  static double? _$elevation_double(NavigationDrawerModel v) =>
      v.elevation_double;
  static const Field<NavigationDrawerModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static String? _$shadowColor_themeColorString(NavigationDrawerModel v) =>
      v.shadowColor_themeColorString;
  static const Field<NavigationDrawerModel, String>
      _f$shadowColor_themeColorString = Field(
          'shadowColor_themeColorString', _$shadowColor_themeColorString,
          opt: true);
  static String? _$surfaceTintColor_themeColorString(NavigationDrawerModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<NavigationDrawerModel, String>
      _f$surfaceTintColor_themeColorString = Field(
          'surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          opt: true);
  static String? _$indicatorColor_themeColorString(NavigationDrawerModel v) =>
      v.indicatorColor_themeColorString;
  static const Field<NavigationDrawerModel, String>
      _f$indicatorColor_themeColorString = Field(
          'indicatorColor_themeColorString', _$indicatorColor_themeColorString,
          opt: true);
  static ShapeBorderModel? _$indicatorShape_shapeBorder(
          NavigationDrawerModel v) =>
      v.indicatorShape_shapeBorder;
  static const Field<NavigationDrawerModel, ShapeBorderModel>
      _f$indicatorShape_shapeBorder = Field(
          'indicatorShape_shapeBorder', _$indicatorShape_shapeBorder,
          opt: true, def: const ShapeBorderModel());
  static SizeModel? _$indicatorSize_size(NavigationDrawerModel v) =>
      v.indicatorSize_size;
  static const Field<NavigationDrawerModel, SizeModel> _f$indicatorSize_size =
      Field('indicatorSize_size', _$indicatorSize_size,
          opt: true, def: const SizeModel());
  static String? _$labelTextStyle_textStyleString(NavigationDrawerModel v) =>
      v.labelTextStyle_textStyleString;
  static const Field<NavigationDrawerModel, String>
      _f$labelTextStyle_textStyleString = Field(
          'labelTextStyle_textStyleString', _$labelTextStyle_textStyleString,
          opt: true);

  @override
  final MappableFields<NavigationDrawerModel> fields = const {
    #tileHeight_double: _f$tileHeight_double,
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #indicatorColor_themeColorString: _f$indicatorColor_themeColorString,
    #indicatorShape_shapeBorder: _f$indicatorShape_shapeBorder,
    #indicatorSize_size: _f$indicatorSize_size,
    #labelTextStyle_textStyleString: _f$labelTextStyle_textStyleString,
  };

  static NavigationDrawerModel _instantiate(DecodingData data) {
    return NavigationDrawerModel(
        tileHeight_double: data.dec(_f$tileHeight_double),
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        indicatorColor_themeColorString:
            data.dec(_f$indicatorColor_themeColorString),
        indicatorShape_shapeBorder: data.dec(_f$indicatorShape_shapeBorder),
        indicatorSize_size: data.dec(_f$indicatorSize_size),
        labelTextStyle_textStyleString:
            data.dec(_f$labelTextStyle_textStyleString));
  }

  @override
  final Function instantiate = _instantiate;

  static NavigationDrawerModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NavigationDrawerModel>(map);
  }

  static NavigationDrawerModel fromJson(String json) {
    return ensureInitialized().decodeJson<NavigationDrawerModel>(json);
  }
}

mixin NavigationDrawerModelMappable {
  String toJson() {
    return NavigationDrawerModelMapper.ensureInitialized()
        .encodeJson<NavigationDrawerModel>(this as NavigationDrawerModel);
  }

  Map<String, dynamic> toMap() {
    return NavigationDrawerModelMapper.ensureInitialized()
        .encodeMap<NavigationDrawerModel>(this as NavigationDrawerModel);
  }

  NavigationDrawerModelCopyWith<NavigationDrawerModel, NavigationDrawerModel,
          NavigationDrawerModel>
      get copyWith => _NavigationDrawerModelCopyWithImpl(
          this as NavigationDrawerModel, $identity, $identity);
  @override
  String toString() {
    return NavigationDrawerModelMapper.ensureInitialized()
        .stringifyValue(this as NavigationDrawerModel);
  }

  @override
  bool operator ==(Object other) {
    return NavigationDrawerModelMapper.ensureInitialized()
        .equalsValue(this as NavigationDrawerModel, other);
  }

  @override
  int get hashCode {
    return NavigationDrawerModelMapper.ensureInitialized()
        .hashValue(this as NavigationDrawerModel);
  }
}

extension NavigationDrawerModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NavigationDrawerModel, $Out> {
  NavigationDrawerModelCopyWith<$R, NavigationDrawerModel, $Out>
      get $asNavigationDrawerModel =>
          $base.as((v, t, t2) => _NavigationDrawerModelCopyWithImpl(v, t, t2));
}

abstract class NavigationDrawerModelCopyWith<
    $R,
    $In extends NavigationDrawerModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get indicatorShape_shapeBorder;
  SizeModelCopyWith<$R, SizeModel, SizeModel>? get indicatorSize_size;
  $R call(
      {double? tileHeight_double,
      String? backgroundColor_themeColorString,
      double? elevation_double,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      String? indicatorColor_themeColorString,
      ShapeBorderModel? indicatorShape_shapeBorder,
      SizeModel? indicatorSize_size,
      String? labelTextStyle_textStyleString});
  NavigationDrawerModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NavigationDrawerModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NavigationDrawerModel, $Out>
    implements NavigationDrawerModelCopyWith<$R, NavigationDrawerModel, $Out> {
  _NavigationDrawerModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NavigationDrawerModel> $mapper =
      NavigationDrawerModelMapper.ensureInitialized();
  @override
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get indicatorShape_shapeBorder =>
          $value.indicatorShape_shapeBorder?.copyWith
              .$chain((v) => call(indicatorShape_shapeBorder: v));
  @override
  SizeModelCopyWith<$R, SizeModel, SizeModel>? get indicatorSize_size =>
      $value.indicatorSize_size?.copyWith
          .$chain((v) => call(indicatorSize_size: v));
  @override
  $R call(
          {Object? tileHeight_double = $none,
          Object? backgroundColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? indicatorColor_themeColorString = $none,
          Object? indicatorShape_shapeBorder = $none,
          Object? indicatorSize_size = $none,
          Object? labelTextStyle_textStyleString = $none}) =>
      $apply(FieldCopyWithData({
        if (tileHeight_double != $none) #tileHeight_double: tileHeight_double,
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (indicatorColor_themeColorString != $none)
          #indicatorColor_themeColorString: indicatorColor_themeColorString,
        if (indicatorShape_shapeBorder != $none)
          #indicatorShape_shapeBorder: indicatorShape_shapeBorder,
        if (indicatorSize_size != $none)
          #indicatorSize_size: indicatorSize_size,
        if (labelTextStyle_textStyleString != $none)
          #labelTextStyle_textStyleString: labelTextStyle_textStyleString
      }));
  @override
  NavigationDrawerModel $make(CopyWithData data) => NavigationDrawerModel(
      tileHeight_double:
          data.get(#tileHeight_double, or: $value.tileHeight_double),
      backgroundColor_themeColorString: data.get(
          #backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      indicatorColor_themeColorString: data.get(
          #indicatorColor_themeColorString,
          or: $value.indicatorColor_themeColorString),
      indicatorShape_shapeBorder: data.get(#indicatorShape_shapeBorder,
          or: $value.indicatorShape_shapeBorder),
      indicatorSize_size:
          data.get(#indicatorSize_size, or: $value.indicatorSize_size),
      labelTextStyle_textStyleString: data.get(#labelTextStyle_textStyleString,
          or: $value.labelTextStyle_textStyleString));

  @override
  NavigationDrawerModelCopyWith<$R2, NavigationDrawerModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _NavigationDrawerModelCopyWithImpl($value, $cast, t);
}
