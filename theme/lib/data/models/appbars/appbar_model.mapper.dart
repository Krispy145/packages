// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'appbar_model.dart';

class AppbarModelMapper extends ClassMapperBase<AppbarModel> {
  AppbarModelMapper._();

  static AppbarModelMapper? _instance;
  static AppbarModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppbarModelMapper._());
      ShapeBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppbarModel';

  static String? _$color_themeColorString(AppbarModel v) =>
      v.color_themeColorString;
  static const Field<AppbarModel, String> _f$color_themeColorString = Field(
      'color_themeColorString', _$color_themeColorString,
      key: 'color_theme_color_string');
  static String? _$backgroundColor_themeColorString(AppbarModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<AppbarModel, String> _f$backgroundColor_themeColorString =
      Field('backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          key: 'background_color_theme_color_string');
  static String? _$foregroundColor_themeColorString(AppbarModel v) =>
      v.foregroundColor_themeColorString;
  static const Field<AppbarModel, String> _f$foregroundColor_themeColorString =
      Field('foregroundColor_themeColorString',
          _$foregroundColor_themeColorString,
          key: 'foreground_color_theme_color_string');
  static double? _$elevation_double(AppbarModel v) => v.elevation_double;
  static const Field<AppbarModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double);
  static double? _$scrolledUnderElevation_double(AppbarModel v) =>
      v.scrolledUnderElevation_double;
  static const Field<AppbarModel, double> _f$scrolledUnderElevation_double =
      Field('scrolledUnderElevation_double', _$scrolledUnderElevation_double,
          key: 'scrolled_under_elevation_double');
  static String? _$shadowColor_themeColorString(AppbarModel v) =>
      v.shadowColor_themeColorString;
  static const Field<AppbarModel, String> _f$shadowColor_themeColorString =
      Field('shadowColor_themeColorString', _$shadowColor_themeColorString,
          key: 'shadow_color_theme_color_string');
  static String? _$surfaceTintColor_themeColorString(AppbarModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<AppbarModel, String> _f$surfaceTintColor_themeColorString =
      Field('surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          key: 'surface_tint_color_theme_color_string');
  static ShapeBorderModel? _$shape_shapeBorder(AppbarModel v) =>
      v.shape_shapeBorder;
  static const Field<AppbarModel, ShapeBorderModel> _f$shape_shapeBorder =
      Field('shape_shapeBorder', _$shape_shapeBorder,
          key: 'shape_shape_border');
  static bool? _$centerTitle_bool(AppbarModel v) => v.centerTitle_bool;
  static const Field<AppbarModel, bool> _f$centerTitle_bool =
      Field('centerTitle_bool', _$centerTitle_bool, key: 'center_title_bool');
  static double? _$titleSpacing_double(AppbarModel v) => v.titleSpacing_double;
  static const Field<AppbarModel, double> _f$titleSpacing_double = Field(
      'titleSpacing_double', _$titleSpacing_double,
      key: 'title_spacing_double');
  static double? _$toolbarHeight_double(AppbarModel v) =>
      v.toolbarHeight_double;
  static const Field<AppbarModel, double> _f$toolbarHeight_double = Field(
      'toolbarHeight_double', _$toolbarHeight_double,
      key: 'toolbar_height_double');
  static String? _$toolbarTextStyle_textStyleString(AppbarModel v) =>
      v.toolbarTextStyle_textStyleString;
  static const Field<AppbarModel, String> _f$toolbarTextStyle_textStyleString =
      Field('toolbarTextStyle_textStyleString',
          _$toolbarTextStyle_textStyleString,
          key: 'toolbar_text_style_text_style_string');
  static String? _$titleTextStyle_textStyleString(AppbarModel v) =>
      v.titleTextStyle_textStyleString;
  static const Field<AppbarModel, String> _f$titleTextStyle_textStyleString =
      Field('titleTextStyle_textStyleString', _$titleTextStyle_textStyleString,
          key: 'title_text_style_text_style_string');

  @override
  final MappableFields<AppbarModel> fields = const {
    #color_themeColorString: _f$color_themeColorString,
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #foregroundColor_themeColorString: _f$foregroundColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #scrolledUnderElevation_double: _f$scrolledUnderElevation_double,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #shape_shapeBorder: _f$shape_shapeBorder,
    #centerTitle_bool: _f$centerTitle_bool,
    #titleSpacing_double: _f$titleSpacing_double,
    #toolbarHeight_double: _f$toolbarHeight_double,
    #toolbarTextStyle_textStyleString: _f$toolbarTextStyle_textStyleString,
    #titleTextStyle_textStyleString: _f$titleTextStyle_textStyleString,
  };

  static AppbarModel _instantiate(DecodingData data) {
    return AppbarModel(
        color_themeColorString: data.dec(_f$color_themeColorString),
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        foregroundColor_themeColorString:
            data.dec(_f$foregroundColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        scrolledUnderElevation_double:
            data.dec(_f$scrolledUnderElevation_double),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        shape_shapeBorder: data.dec(_f$shape_shapeBorder),
        centerTitle_bool: data.dec(_f$centerTitle_bool),
        titleSpacing_double: data.dec(_f$titleSpacing_double),
        toolbarHeight_double: data.dec(_f$toolbarHeight_double),
        toolbarTextStyle_textStyleString:
            data.dec(_f$toolbarTextStyle_textStyleString),
        titleTextStyle_textStyleString:
            data.dec(_f$titleTextStyle_textStyleString));
  }

  @override
  final Function instantiate = _instantiate;

  static AppbarModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppbarModel>(map);
  }

  static AppbarModel fromJson(String json) {
    return ensureInitialized().decodeJson<AppbarModel>(json);
  }
}

mixin AppbarModelMappable {
  String toJson() {
    return AppbarModelMapper.ensureInitialized()
        .encodeJson<AppbarModel>(this as AppbarModel);
  }

  Map<String, dynamic> toMap() {
    return AppbarModelMapper.ensureInitialized()
        .encodeMap<AppbarModel>(this as AppbarModel);
  }

  AppbarModelCopyWith<AppbarModel, AppbarModel, AppbarModel> get copyWith =>
      _AppbarModelCopyWithImpl(this as AppbarModel, $identity, $identity);
  @override
  String toString() {
    return AppbarModelMapper.ensureInitialized()
        .stringifyValue(this as AppbarModel);
  }

  @override
  bool operator ==(Object other) {
    return AppbarModelMapper.ensureInitialized()
        .equalsValue(this as AppbarModel, other);
  }

  @override
  int get hashCode {
    return AppbarModelMapper.ensureInitialized().hashValue(this as AppbarModel);
  }
}

extension AppbarModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AppbarModel, $Out> {
  AppbarModelCopyWith<$R, AppbarModel, $Out> get $asAppbarModel =>
      $base.as((v, t, t2) => _AppbarModelCopyWithImpl(v, t, t2));
}

abstract class AppbarModelCopyWith<$R, $In extends AppbarModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder;
  $R call(
      {String? color_themeColorString,
      String? backgroundColor_themeColorString,
      String? foregroundColor_themeColorString,
      double? elevation_double,
      double? scrolledUnderElevation_double,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      ShapeBorderModel? shape_shapeBorder,
      bool? centerTitle_bool,
      double? titleSpacing_double,
      double? toolbarHeight_double,
      String? toolbarTextStyle_textStyleString,
      String? titleTextStyle_textStyleString});
  AppbarModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AppbarModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppbarModel, $Out>
    implements AppbarModelCopyWith<$R, AppbarModel, $Out> {
  _AppbarModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppbarModel> $mapper =
      AppbarModelMapper.ensureInitialized();
  @override
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder => $value.shape_shapeBorder?.copyWith
          .$chain((v) => call(shape_shapeBorder: v));
  @override
  $R call(
          {Object? color_themeColorString = $none,
          Object? backgroundColor_themeColorString = $none,
          Object? foregroundColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? scrolledUnderElevation_double = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? shape_shapeBorder = $none,
          Object? centerTitle_bool = $none,
          Object? titleSpacing_double = $none,
          Object? toolbarHeight_double = $none,
          Object? toolbarTextStyle_textStyleString = $none,
          Object? titleTextStyle_textStyleString = $none}) =>
      $apply(FieldCopyWithData({
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (foregroundColor_themeColorString != $none)
          #foregroundColor_themeColorString: foregroundColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (scrolledUnderElevation_double != $none)
          #scrolledUnderElevation_double: scrolledUnderElevation_double,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (shape_shapeBorder != $none) #shape_shapeBorder: shape_shapeBorder,
        if (centerTitle_bool != $none) #centerTitle_bool: centerTitle_bool,
        if (titleSpacing_double != $none)
          #titleSpacing_double: titleSpacing_double,
        if (toolbarHeight_double != $none)
          #toolbarHeight_double: toolbarHeight_double,
        if (toolbarTextStyle_textStyleString != $none)
          #toolbarTextStyle_textStyleString: toolbarTextStyle_textStyleString,
        if (titleTextStyle_textStyleString != $none)
          #titleTextStyle_textStyleString: titleTextStyle_textStyleString
      }));
  @override
  AppbarModel $make(CopyWithData data) => AppbarModel(
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      backgroundColor_themeColorString: data.get(#backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      foregroundColor_themeColorString: data.get(#foregroundColor_themeColorString,
          or: $value.foregroundColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      scrolledUnderElevation_double: data.get(#scrolledUnderElevation_double,
          or: $value.scrolledUnderElevation_double),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(#surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      shape_shapeBorder:
          data.get(#shape_shapeBorder, or: $value.shape_shapeBorder),
      centerTitle_bool:
          data.get(#centerTitle_bool, or: $value.centerTitle_bool),
      titleSpacing_double:
          data.get(#titleSpacing_double, or: $value.titleSpacing_double),
      toolbarHeight_double:
          data.get(#toolbarHeight_double, or: $value.toolbarHeight_double),
      toolbarTextStyle_textStyleString: data.get(#toolbarTextStyle_textStyleString,
          or: $value.toolbarTextStyle_textStyleString),
      titleTextStyle_textStyleString: data.get(#titleTextStyle_textStyleString, or: $value.titleTextStyle_textStyleString));

  @override
  AppbarModelCopyWith<$R2, AppbarModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AppbarModelCopyWithImpl($value, $cast, t);
}
