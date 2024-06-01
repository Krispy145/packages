// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'navigation_bar_model.dart';

class NavigationBarModelMapper extends ClassMapperBase<NavigationBarModel> {
  NavigationBarModelMapper._();

  static NavigationBarModelMapper? _instance;
  static NavigationBarModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NavigationBarModelMapper._());
      ShapeBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NavigationBarModel';

  static double? _$height_double(NavigationBarModel v) => v.height_double;
  static const Field<NavigationBarModel, double> _f$height_double =
      Field('height_double', _$height_double, opt: true);
  static String? _$backgroundColor_themeColorString(NavigationBarModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<NavigationBarModel, String>
      _f$backgroundColor_themeColorString = Field(
          'backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          key: 'background_color_theme_color_string',
          opt: true);
  static double? _$elevation_double(NavigationBarModel v) => v.elevation_double;
  static const Field<NavigationBarModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static String? _$shadowColor_themeColorString(NavigationBarModel v) =>
      v.shadowColor_themeColorString;
  static const Field<NavigationBarModel, String>
      _f$shadowColor_themeColorString = Field(
          'shadowColor_themeColorString', _$shadowColor_themeColorString,
          key: 'shadow_color_theme_color_string', opt: true);
  static String? _$surfaceTintColor_themeColorString(NavigationBarModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<NavigationBarModel, String>
      _f$surfaceTintColor_themeColorString = Field(
          'surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          key: 'surface_tint_color_theme_color_string',
          opt: true);
  static String? _$indicatorColor_themeColorString(NavigationBarModel v) =>
      v.indicatorColor_themeColorString;
  static const Field<NavigationBarModel, String>
      _f$indicatorColor_themeColorString = Field(
          'indicatorColor_themeColorString', _$indicatorColor_themeColorString,
          key: 'indicator_color_theme_color_string', opt: true);
  static ShapeBorderModel? _$indicatorShape_shapeBorder(NavigationBarModel v) =>
      v.indicatorShape_shapeBorder;
  static const Field<NavigationBarModel, ShapeBorderModel>
      _f$indicatorShape_shapeBorder = Field(
          'indicatorShape_shapeBorder', _$indicatorShape_shapeBorder,
          key: 'indicator_shape_shape_border', opt: true);
  static String? _$labelTextStyle_textStyleString(NavigationBarModel v) =>
      v.labelTextStyle_textStyleString;
  static const Field<NavigationBarModel, String>
      _f$labelTextStyle_textStyleString = Field(
          'labelTextStyle_textStyleString', _$labelTextStyle_textStyleString,
          key: 'label_text_style_text_style_string', opt: true);
  static NavigationDestinationLabelBehavior?
      _$labelBehavior_enum_navigationDestinationLabelBehavior(
              NavigationBarModel v) =>
          v.labelBehavior_enum_navigationDestinationLabelBehavior;
  static const Field<NavigationBarModel, NavigationDestinationLabelBehavior>
      _f$labelBehavior_enum_navigationDestinationLabelBehavior = Field(
          'labelBehavior_enum_navigationDestinationLabelBehavior',
          _$labelBehavior_enum_navigationDestinationLabelBehavior,
          key: 'label_behavior_enum_navigation_destination_label_behavior',
          opt: true);

  @override
  final MappableFields<NavigationBarModel> fields = const {
    #height_double: _f$height_double,
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #indicatorColor_themeColorString: _f$indicatorColor_themeColorString,
    #indicatorShape_shapeBorder: _f$indicatorShape_shapeBorder,
    #labelTextStyle_textStyleString: _f$labelTextStyle_textStyleString,
    #labelBehavior_enum_navigationDestinationLabelBehavior:
        _f$labelBehavior_enum_navigationDestinationLabelBehavior,
  };

  static NavigationBarModel _instantiate(DecodingData data) {
    return NavigationBarModel(
        height_double: data.dec(_f$height_double),
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        indicatorColor_themeColorString:
            data.dec(_f$indicatorColor_themeColorString),
        indicatorShape_shapeBorder: data.dec(_f$indicatorShape_shapeBorder),
        labelTextStyle_textStyleString:
            data.dec(_f$labelTextStyle_textStyleString),
        labelBehavior_enum_navigationDestinationLabelBehavior:
            data.dec(_f$labelBehavior_enum_navigationDestinationLabelBehavior));
  }

  @override
  final Function instantiate = _instantiate;

  static NavigationBarModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NavigationBarModel>(map);
  }

  static NavigationBarModel fromJson(String json) {
    return ensureInitialized().decodeJson<NavigationBarModel>(json);
  }
}

mixin NavigationBarModelMappable {
  String toJson() {
    return NavigationBarModelMapper.ensureInitialized()
        .encodeJson<NavigationBarModel>(this as NavigationBarModel);
  }

  Map<String, dynamic> toMap() {
    return NavigationBarModelMapper.ensureInitialized()
        .encodeMap<NavigationBarModel>(this as NavigationBarModel);
  }

  NavigationBarModelCopyWith<NavigationBarModel, NavigationBarModel,
          NavigationBarModel>
      get copyWith => _NavigationBarModelCopyWithImpl(
          this as NavigationBarModel, $identity, $identity);
  @override
  String toString() {
    return NavigationBarModelMapper.ensureInitialized()
        .stringifyValue(this as NavigationBarModel);
  }

  @override
  bool operator ==(Object other) {
    return NavigationBarModelMapper.ensureInitialized()
        .equalsValue(this as NavigationBarModel, other);
  }

  @override
  int get hashCode {
    return NavigationBarModelMapper.ensureInitialized()
        .hashValue(this as NavigationBarModel);
  }
}

extension NavigationBarModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NavigationBarModel, $Out> {
  NavigationBarModelCopyWith<$R, NavigationBarModel, $Out>
      get $asNavigationBarModel =>
          $base.as((v, t, t2) => _NavigationBarModelCopyWithImpl(v, t, t2));
}

abstract class NavigationBarModelCopyWith<$R, $In extends NavigationBarModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get indicatorShape_shapeBorder;
  $R call(
      {double? height_double,
      String? backgroundColor_themeColorString,
      double? elevation_double,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      String? indicatorColor_themeColorString,
      ShapeBorderModel? indicatorShape_shapeBorder,
      String? labelTextStyle_textStyleString,
      NavigationDestinationLabelBehavior?
          labelBehavior_enum_navigationDestinationLabelBehavior});
  NavigationBarModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NavigationBarModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NavigationBarModel, $Out>
    implements NavigationBarModelCopyWith<$R, NavigationBarModel, $Out> {
  _NavigationBarModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NavigationBarModel> $mapper =
      NavigationBarModelMapper.ensureInitialized();
  @override
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get indicatorShape_shapeBorder =>
          $value.indicatorShape_shapeBorder?.copyWith
              .$chain((v) => call(indicatorShape_shapeBorder: v));
  @override
  $R call(
          {Object? height_double = $none,
          Object? backgroundColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? indicatorColor_themeColorString = $none,
          Object? indicatorShape_shapeBorder = $none,
          Object? labelTextStyle_textStyleString = $none,
          Object? labelBehavior_enum_navigationDestinationLabelBehavior =
              $none}) =>
      $apply(FieldCopyWithData({
        if (height_double != $none) #height_double: height_double,
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
        if (labelTextStyle_textStyleString != $none)
          #labelTextStyle_textStyleString: labelTextStyle_textStyleString,
        if (labelBehavior_enum_navigationDestinationLabelBehavior != $none)
          #labelBehavior_enum_navigationDestinationLabelBehavior:
              labelBehavior_enum_navigationDestinationLabelBehavior
      }));
  @override
  NavigationBarModel $make(CopyWithData data) => NavigationBarModel(
      height_double: data.get(#height_double, or: $value.height_double),
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
      labelTextStyle_textStyleString: data.get(#labelTextStyle_textStyleString,
          or: $value.labelTextStyle_textStyleString),
      labelBehavior_enum_navigationDestinationLabelBehavior: data.get(
          #labelBehavior_enum_navigationDestinationLabelBehavior,
          or: $value.labelBehavior_enum_navigationDestinationLabelBehavior));

  @override
  NavigationBarModelCopyWith<$R2, NavigationBarModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NavigationBarModelCopyWithImpl($value, $cast, t);
}
