// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'navigation_rail_model.dart';

class NavigationRailModelMapper extends ClassMapperBase<NavigationRailModel> {
  NavigationRailModelMapper._();

  static NavigationRailModelMapper? _instance;
  static NavigationRailModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NavigationRailModelMapper._());
      ShapeBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NavigationRailModel';

  static String? _$backgroundColor_themeColorString(NavigationRailModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<NavigationRailModel, String>
      _f$backgroundColor_themeColorString = Field(
          'backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          key: 'background_color_theme_color_string',
          opt: true);
  static double? _$elevation_double(NavigationRailModel v) =>
      v.elevation_double;
  static const Field<NavigationRailModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static String? _$unselectedLabelTextStyle_textStyleString(
          NavigationRailModel v) =>
      v.unselectedLabelTextStyle_textStyleString;
  static const Field<NavigationRailModel, String>
      _f$unselectedLabelTextStyle_textStyleString = Field(
          'unselectedLabelTextStyle_textStyleString',
          _$unselectedLabelTextStyle_textStyleString,
          key: 'unselected_label_text_style_text_style_string',
          opt: true);
  static String? _$selectedLabelTextStyle_textStyleString(
          NavigationRailModel v) =>
      v.selectedLabelTextStyle_textStyleString;
  static const Field<NavigationRailModel, String>
      _f$selectedLabelTextStyle_textStyleString = Field(
          'selectedLabelTextStyle_textStyleString',
          _$selectedLabelTextStyle_textStyleString,
          key: 'selected_label_text_style_text_style_string',
          opt: true);
  static double? _$groupAlignment_double(NavigationRailModel v) =>
      v.groupAlignment_double;
  static const Field<NavigationRailModel, double> _f$groupAlignment_double =
      Field('groupAlignment_double', _$groupAlignment_double,
          key: 'group_alignment_double', opt: true);
  static NavigationRailLabelType? _$labelType_enum_navigationRailLabelType(
          NavigationRailModel v) =>
      v.labelType_enum_navigationRailLabelType;
  static const Field<NavigationRailModel, NavigationRailLabelType>
      _f$labelType_enum_navigationRailLabelType = Field(
          'labelType_enum_navigationRailLabelType',
          _$labelType_enum_navigationRailLabelType,
          key: 'label_type_enum_navigation_rail_label_type',
          opt: true);
  static bool? _$useIndicator_bool(NavigationRailModel v) =>
      v.useIndicator_bool;
  static const Field<NavigationRailModel, bool> _f$useIndicator_bool = Field(
      'useIndicator_bool', _$useIndicator_bool,
      key: 'use_indicator_bool', opt: true);
  static String? _$indicatorColor_themeColorString(NavigationRailModel v) =>
      v.indicatorColor_themeColorString;
  static const Field<NavigationRailModel, String>
      _f$indicatorColor_themeColorString = Field(
          'indicatorColor_themeColorString', _$indicatorColor_themeColorString,
          key: 'indicator_color_theme_color_string', opt: true);
  static ShapeBorderModel? _$indicatorShape_shapeBorder(
          NavigationRailModel v) =>
      v.indicatorShape_shapeBorder;
  static const Field<NavigationRailModel, ShapeBorderModel>
      _f$indicatorShape_shapeBorder = Field(
          'indicatorShape_shapeBorder', _$indicatorShape_shapeBorder,
          key: 'indicator_shape_shape_border', opt: true);
  static double? _$minWidth_double(NavigationRailModel v) => v.minWidth_double;
  static const Field<NavigationRailModel, double> _f$minWidth_double = Field(
      'minWidth_double', _$minWidth_double,
      key: 'min_width_double', opt: true);
  static double? _$minExtendedWidth_double(NavigationRailModel v) =>
      v.minExtendedWidth_double;
  static const Field<NavigationRailModel, double> _f$minExtendedWidth_double =
      Field('minExtendedWidth_double', _$minExtendedWidth_double,
          key: 'min_extended_width_double', opt: true);

  @override
  final MappableFields<NavigationRailModel> fields = const {
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #unselectedLabelTextStyle_textStyleString:
        _f$unselectedLabelTextStyle_textStyleString,
    #selectedLabelTextStyle_textStyleString:
        _f$selectedLabelTextStyle_textStyleString,
    #groupAlignment_double: _f$groupAlignment_double,
    #labelType_enum_navigationRailLabelType:
        _f$labelType_enum_navigationRailLabelType,
    #useIndicator_bool: _f$useIndicator_bool,
    #indicatorColor_themeColorString: _f$indicatorColor_themeColorString,
    #indicatorShape_shapeBorder: _f$indicatorShape_shapeBorder,
    #minWidth_double: _f$minWidth_double,
    #minExtendedWidth_double: _f$minExtendedWidth_double,
  };

  static NavigationRailModel _instantiate(DecodingData data) {
    return NavigationRailModel(
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        unselectedLabelTextStyle_textStyleString:
            data.dec(_f$unselectedLabelTextStyle_textStyleString),
        selectedLabelTextStyle_textStyleString:
            data.dec(_f$selectedLabelTextStyle_textStyleString),
        groupAlignment_double: data.dec(_f$groupAlignment_double),
        labelType_enum_navigationRailLabelType:
            data.dec(_f$labelType_enum_navigationRailLabelType),
        useIndicator_bool: data.dec(_f$useIndicator_bool),
        indicatorColor_themeColorString:
            data.dec(_f$indicatorColor_themeColorString),
        indicatorShape_shapeBorder: data.dec(_f$indicatorShape_shapeBorder),
        minWidth_double: data.dec(_f$minWidth_double),
        minExtendedWidth_double: data.dec(_f$minExtendedWidth_double));
  }

  @override
  final Function instantiate = _instantiate;

  static NavigationRailModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NavigationRailModel>(map);
  }

  static NavigationRailModel fromJson(String json) {
    return ensureInitialized().decodeJson<NavigationRailModel>(json);
  }
}

mixin NavigationRailModelMappable {
  String toJson() {
    return NavigationRailModelMapper.ensureInitialized()
        .encodeJson<NavigationRailModel>(this as NavigationRailModel);
  }

  Map<String, dynamic> toMap() {
    return NavigationRailModelMapper.ensureInitialized()
        .encodeMap<NavigationRailModel>(this as NavigationRailModel);
  }

  NavigationRailModelCopyWith<NavigationRailModel, NavigationRailModel,
          NavigationRailModel>
      get copyWith => _NavigationRailModelCopyWithImpl(
          this as NavigationRailModel, $identity, $identity);
  @override
  String toString() {
    return NavigationRailModelMapper.ensureInitialized()
        .stringifyValue(this as NavigationRailModel);
  }

  @override
  bool operator ==(Object other) {
    return NavigationRailModelMapper.ensureInitialized()
        .equalsValue(this as NavigationRailModel, other);
  }

  @override
  int get hashCode {
    return NavigationRailModelMapper.ensureInitialized()
        .hashValue(this as NavigationRailModel);
  }
}

extension NavigationRailModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NavigationRailModel, $Out> {
  NavigationRailModelCopyWith<$R, NavigationRailModel, $Out>
      get $asNavigationRailModel =>
          $base.as((v, t, t2) => _NavigationRailModelCopyWithImpl(v, t, t2));
}

abstract class NavigationRailModelCopyWith<$R, $In extends NavigationRailModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get indicatorShape_shapeBorder;
  $R call(
      {String? backgroundColor_themeColorString,
      double? elevation_double,
      String? unselectedLabelTextStyle_textStyleString,
      String? selectedLabelTextStyle_textStyleString,
      double? groupAlignment_double,
      NavigationRailLabelType? labelType_enum_navigationRailLabelType,
      bool? useIndicator_bool,
      String? indicatorColor_themeColorString,
      ShapeBorderModel? indicatorShape_shapeBorder,
      double? minWidth_double,
      double? minExtendedWidth_double});
  NavigationRailModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NavigationRailModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NavigationRailModel, $Out>
    implements NavigationRailModelCopyWith<$R, NavigationRailModel, $Out> {
  _NavigationRailModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NavigationRailModel> $mapper =
      NavigationRailModelMapper.ensureInitialized();
  @override
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get indicatorShape_shapeBorder =>
          $value.indicatorShape_shapeBorder?.copyWith
              .$chain((v) => call(indicatorShape_shapeBorder: v));
  @override
  $R call(
          {Object? backgroundColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? unselectedLabelTextStyle_textStyleString = $none,
          Object? selectedLabelTextStyle_textStyleString = $none,
          Object? groupAlignment_double = $none,
          Object? labelType_enum_navigationRailLabelType = $none,
          Object? useIndicator_bool = $none,
          Object? indicatorColor_themeColorString = $none,
          Object? indicatorShape_shapeBorder = $none,
          Object? minWidth_double = $none,
          Object? minExtendedWidth_double = $none}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (unselectedLabelTextStyle_textStyleString != $none)
          #unselectedLabelTextStyle_textStyleString:
              unselectedLabelTextStyle_textStyleString,
        if (selectedLabelTextStyle_textStyleString != $none)
          #selectedLabelTextStyle_textStyleString:
              selectedLabelTextStyle_textStyleString,
        if (groupAlignment_double != $none)
          #groupAlignment_double: groupAlignment_double,
        if (labelType_enum_navigationRailLabelType != $none)
          #labelType_enum_navigationRailLabelType:
              labelType_enum_navigationRailLabelType,
        if (useIndicator_bool != $none) #useIndicator_bool: useIndicator_bool,
        if (indicatorColor_themeColorString != $none)
          #indicatorColor_themeColorString: indicatorColor_themeColorString,
        if (indicatorShape_shapeBorder != $none)
          #indicatorShape_shapeBorder: indicatorShape_shapeBorder,
        if (minWidth_double != $none) #minWidth_double: minWidth_double,
        if (minExtendedWidth_double != $none)
          #minExtendedWidth_double: minExtendedWidth_double
      }));
  @override
  NavigationRailModel $make(CopyWithData data) => NavigationRailModel(
      backgroundColor_themeColorString: data.get(#backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      unselectedLabelTextStyle_textStyleString: data.get(
          #unselectedLabelTextStyle_textStyleString,
          or: $value.unselectedLabelTextStyle_textStyleString),
      selectedLabelTextStyle_textStyleString: data.get(#selectedLabelTextStyle_textStyleString,
          or: $value.selectedLabelTextStyle_textStyleString),
      groupAlignment_double:
          data.get(#groupAlignment_double, or: $value.groupAlignment_double),
      labelType_enum_navigationRailLabelType: data.get(
          #labelType_enum_navigationRailLabelType,
          or: $value.labelType_enum_navigationRailLabelType),
      useIndicator_bool:
          data.get(#useIndicator_bool, or: $value.useIndicator_bool),
      indicatorColor_themeColorString: data.get(#indicatorColor_themeColorString,
          or: $value.indicatorColor_themeColorString),
      indicatorShape_shapeBorder: data.get(#indicatorShape_shapeBorder,
          or: $value.indicatorShape_shapeBorder),
      minWidth_double: data.get(#minWidth_double, or: $value.minWidth_double),
      minExtendedWidth_double:
          data.get(#minExtendedWidth_double, or: $value.minExtendedWidth_double));

  @override
  NavigationRailModelCopyWith<$R2, NavigationRailModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _NavigationRailModelCopyWithImpl($value, $cast, t);
}
