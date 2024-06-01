// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'snackbar_model.dart';

class SnackbarModelMapper extends ClassMapperBase<SnackbarModel> {
  SnackbarModelMapper._();

  static SnackbarModelMapper? _instance;
  static SnackbarModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SnackbarModelMapper._());
      OutlinedBorderModelMapper.ensureInitialized();
      EdgeInsetsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SnackbarModel';

  static String? _$backgroundColor_themeColorString(SnackbarModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<SnackbarModel, String>
      _f$backgroundColor_themeColorString = Field(
          'backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          key: 'background_color_theme_color_string',
          opt: true);
  static String? _$actionTextColor_themeColorString(SnackbarModel v) =>
      v.actionTextColor_themeColorString;
  static const Field<SnackbarModel, String>
      _f$actionTextColor_themeColorString = Field(
          'actionTextColor_themeColorString',
          _$actionTextColor_themeColorString,
          key: 'action_text_color_theme_color_string',
          opt: true);
  static String? _$disabledActionTextColor_themeColorString(SnackbarModel v) =>
      v.disabledActionTextColor_themeColorString;
  static const Field<SnackbarModel, String>
      _f$disabledActionTextColor_themeColorString = Field(
          'disabledActionTextColor_themeColorString',
          _$disabledActionTextColor_themeColorString,
          key: 'disabled_action_text_color_theme_color_string',
          opt: true);
  static String? _$contentTextStyle_textStyleString(SnackbarModel v) =>
      v.contentTextStyle_textStyleString;
  static const Field<SnackbarModel, String>
      _f$contentTextStyle_textStyleString = Field(
          'contentTextStyle_textStyleString',
          _$contentTextStyle_textStyleString,
          key: 'content_text_style_text_style_string',
          opt: true);
  static double? _$elevation_double(SnackbarModel v) => v.elevation_double;
  static const Field<SnackbarModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static OutlinedBorderModel? _$shape_outlinedBorder(SnackbarModel v) =>
      v.shape_outlinedBorder;
  static const Field<SnackbarModel, OutlinedBorderModel>
      _f$shape_outlinedBorder = Field(
          'shape_outlinedBorder', _$shape_outlinedBorder,
          key: 'shape_outlined_border', opt: true);
  static SnackBarBehavior _$behavior_enum_snackBarBehavior(SnackbarModel v) =>
      v.behavior_enum_snackBarBehavior;
  static const Field<SnackbarModel, SnackBarBehavior>
      _f$behavior_enum_snackBarBehavior = Field(
          'behavior_enum_snackBarBehavior', _$behavior_enum_snackBarBehavior,
          key: 'behavior_enum_snack_bar_behavior',
          opt: true,
          def: SnackBarBehavior.floating);
  static double? _$width_double(SnackbarModel v) => v.width_double;
  static const Field<SnackbarModel, double> _f$width_double =
      Field('width_double', _$width_double, opt: true);
  static EdgeInsetsModel? _$insetPadding_edgeInsets(SnackbarModel v) =>
      v.insetPadding_edgeInsets;
  static const Field<SnackbarModel, EdgeInsetsModel>
      _f$insetPadding_edgeInsets = Field(
          'insetPadding_edgeInsets', _$insetPadding_edgeInsets,
          key: 'inset_padding_edge_insets', opt: true);
  static bool? _$showCloseIcon_bool(SnackbarModel v) => v.showCloseIcon_bool;
  static const Field<SnackbarModel, bool> _f$showCloseIcon_bool = Field(
      'showCloseIcon_bool', _$showCloseIcon_bool,
      key: 'show_close_icon_bool', opt: true);
  static String? _$closeIconColor_themeColorString(SnackbarModel v) =>
      v.closeIconColor_themeColorString;
  static const Field<SnackbarModel, String> _f$closeIconColor_themeColorString =
      Field(
          'closeIconColor_themeColorString', _$closeIconColor_themeColorString,
          key: 'close_icon_color_theme_color_string', opt: true);
  static double? _$actionOverflowThreshold_double(SnackbarModel v) =>
      v.actionOverflowThreshold_double;
  static const Field<SnackbarModel, double> _f$actionOverflowThreshold_double =
      Field('actionOverflowThreshold_double', _$actionOverflowThreshold_double,
          key: 'action_overflow_threshold_double', opt: true);
  static String? _$actionBackgroundColor_themeColorString(SnackbarModel v) =>
      v.actionBackgroundColor_themeColorString;
  static const Field<SnackbarModel, String>
      _f$actionBackgroundColor_themeColorString = Field(
          'actionBackgroundColor_themeColorString',
          _$actionBackgroundColor_themeColorString,
          key: 'action_background_color_theme_color_string',
          opt: true);
  static String? _$disabledActionBackgroundColor_themeColorString(
          SnackbarModel v) =>
      v.disabledActionBackgroundColor_themeColorString;
  static const Field<SnackbarModel, String>
      _f$disabledActionBackgroundColor_themeColorString = Field(
          'disabledActionBackgroundColor_themeColorString',
          _$disabledActionBackgroundColor_themeColorString,
          key: 'disabled_action_background_color_theme_color_string',
          opt: true);

  @override
  final MappableFields<SnackbarModel> fields = const {
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #actionTextColor_themeColorString: _f$actionTextColor_themeColorString,
    #disabledActionTextColor_themeColorString:
        _f$disabledActionTextColor_themeColorString,
    #contentTextStyle_textStyleString: _f$contentTextStyle_textStyleString,
    #elevation_double: _f$elevation_double,
    #shape_outlinedBorder: _f$shape_outlinedBorder,
    #behavior_enum_snackBarBehavior: _f$behavior_enum_snackBarBehavior,
    #width_double: _f$width_double,
    #insetPadding_edgeInsets: _f$insetPadding_edgeInsets,
    #showCloseIcon_bool: _f$showCloseIcon_bool,
    #closeIconColor_themeColorString: _f$closeIconColor_themeColorString,
    #actionOverflowThreshold_double: _f$actionOverflowThreshold_double,
    #actionBackgroundColor_themeColorString:
        _f$actionBackgroundColor_themeColorString,
    #disabledActionBackgroundColor_themeColorString:
        _f$disabledActionBackgroundColor_themeColorString,
  };

  static SnackbarModel _instantiate(DecodingData data) {
    return SnackbarModel(
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        actionTextColor_themeColorString:
            data.dec(_f$actionTextColor_themeColorString),
        disabledActionTextColor_themeColorString:
            data.dec(_f$disabledActionTextColor_themeColorString),
        contentTextStyle_textStyleString:
            data.dec(_f$contentTextStyle_textStyleString),
        elevation_double: data.dec(_f$elevation_double),
        shape_outlinedBorder: data.dec(_f$shape_outlinedBorder),
        behavior_enum_snackBarBehavior:
            data.dec(_f$behavior_enum_snackBarBehavior),
        width_double: data.dec(_f$width_double),
        insetPadding_edgeInsets: data.dec(_f$insetPadding_edgeInsets),
        showCloseIcon_bool: data.dec(_f$showCloseIcon_bool),
        closeIconColor_themeColorString:
            data.dec(_f$closeIconColor_themeColorString),
        actionOverflowThreshold_double:
            data.dec(_f$actionOverflowThreshold_double),
        actionBackgroundColor_themeColorString:
            data.dec(_f$actionBackgroundColor_themeColorString),
        disabledActionBackgroundColor_themeColorString:
            data.dec(_f$disabledActionBackgroundColor_themeColorString));
  }

  @override
  final Function instantiate = _instantiate;

  static SnackbarModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SnackbarModel>(map);
  }

  static SnackbarModel fromJson(String json) {
    return ensureInitialized().decodeJson<SnackbarModel>(json);
  }
}

mixin SnackbarModelMappable {
  String toJson() {
    return SnackbarModelMapper.ensureInitialized()
        .encodeJson<SnackbarModel>(this as SnackbarModel);
  }

  Map<String, dynamic> toMap() {
    return SnackbarModelMapper.ensureInitialized()
        .encodeMap<SnackbarModel>(this as SnackbarModel);
  }

  SnackbarModelCopyWith<SnackbarModel, SnackbarModel, SnackbarModel>
      get copyWith => _SnackbarModelCopyWithImpl(
          this as SnackbarModel, $identity, $identity);
  @override
  String toString() {
    return SnackbarModelMapper.ensureInitialized()
        .stringifyValue(this as SnackbarModel);
  }

  @override
  bool operator ==(Object other) {
    return SnackbarModelMapper.ensureInitialized()
        .equalsValue(this as SnackbarModel, other);
  }

  @override
  int get hashCode {
    return SnackbarModelMapper.ensureInitialized()
        .hashValue(this as SnackbarModel);
  }
}

extension SnackbarModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SnackbarModel, $Out> {
  SnackbarModelCopyWith<$R, SnackbarModel, $Out> get $asSnackbarModel =>
      $base.as((v, t, t2) => _SnackbarModelCopyWithImpl(v, t, t2));
}

abstract class SnackbarModelCopyWith<$R, $In extends SnackbarModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder;
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get insetPadding_edgeInsets;
  $R call(
      {String? backgroundColor_themeColorString,
      String? actionTextColor_themeColorString,
      String? disabledActionTextColor_themeColorString,
      String? contentTextStyle_textStyleString,
      double? elevation_double,
      OutlinedBorderModel? shape_outlinedBorder,
      SnackBarBehavior? behavior_enum_snackBarBehavior,
      double? width_double,
      EdgeInsetsModel? insetPadding_edgeInsets,
      bool? showCloseIcon_bool,
      String? closeIconColor_themeColorString,
      double? actionOverflowThreshold_double,
      String? actionBackgroundColor_themeColorString,
      String? disabledActionBackgroundColor_themeColorString});
  SnackbarModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SnackbarModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SnackbarModel, $Out>
    implements SnackbarModelCopyWith<$R, SnackbarModel, $Out> {
  _SnackbarModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SnackbarModel> $mapper =
      SnackbarModelMapper.ensureInitialized();
  @override
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder => $value.shape_outlinedBorder?.copyWith
          .$chain((v) => call(shape_outlinedBorder: v));
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get insetPadding_edgeInsets => $value.insetPadding_edgeInsets?.copyWith
          .$chain((v) => call(insetPadding_edgeInsets: v));
  @override
  $R call(
          {Object? backgroundColor_themeColorString = $none,
          Object? actionTextColor_themeColorString = $none,
          Object? disabledActionTextColor_themeColorString = $none,
          Object? contentTextStyle_textStyleString = $none,
          Object? elevation_double = $none,
          Object? shape_outlinedBorder = $none,
          SnackBarBehavior? behavior_enum_snackBarBehavior,
          Object? width_double = $none,
          Object? insetPadding_edgeInsets = $none,
          Object? showCloseIcon_bool = $none,
          Object? closeIconColor_themeColorString = $none,
          Object? actionOverflowThreshold_double = $none,
          Object? actionBackgroundColor_themeColorString = $none,
          Object? disabledActionBackgroundColor_themeColorString = $none}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (actionTextColor_themeColorString != $none)
          #actionTextColor_themeColorString: actionTextColor_themeColorString,
        if (disabledActionTextColor_themeColorString != $none)
          #disabledActionTextColor_themeColorString:
              disabledActionTextColor_themeColorString,
        if (contentTextStyle_textStyleString != $none)
          #contentTextStyle_textStyleString: contentTextStyle_textStyleString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (shape_outlinedBorder != $none)
          #shape_outlinedBorder: shape_outlinedBorder,
        if (behavior_enum_snackBarBehavior != null)
          #behavior_enum_snackBarBehavior: behavior_enum_snackBarBehavior,
        if (width_double != $none) #width_double: width_double,
        if (insetPadding_edgeInsets != $none)
          #insetPadding_edgeInsets: insetPadding_edgeInsets,
        if (showCloseIcon_bool != $none)
          #showCloseIcon_bool: showCloseIcon_bool,
        if (closeIconColor_themeColorString != $none)
          #closeIconColor_themeColorString: closeIconColor_themeColorString,
        if (actionOverflowThreshold_double != $none)
          #actionOverflowThreshold_double: actionOverflowThreshold_double,
        if (actionBackgroundColor_themeColorString != $none)
          #actionBackgroundColor_themeColorString:
              actionBackgroundColor_themeColorString,
        if (disabledActionBackgroundColor_themeColorString != $none)
          #disabledActionBackgroundColor_themeColorString:
              disabledActionBackgroundColor_themeColorString
      }));
  @override
  SnackbarModel $make(CopyWithData data) => SnackbarModel(
      backgroundColor_themeColorString: data.get(#backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      actionTextColor_themeColorString: data.get(#actionTextColor_themeColorString,
          or: $value.actionTextColor_themeColorString),
      disabledActionTextColor_themeColorString: data.get(#disabledActionTextColor_themeColorString,
          or: $value.disabledActionTextColor_themeColorString),
      contentTextStyle_textStyleString: data.get(#contentTextStyle_textStyleString,
          or: $value.contentTextStyle_textStyleString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      shape_outlinedBorder:
          data.get(#shape_outlinedBorder, or: $value.shape_outlinedBorder),
      behavior_enum_snackBarBehavior: data.get(#behavior_enum_snackBarBehavior,
          or: $value.behavior_enum_snackBarBehavior),
      width_double: data.get(#width_double, or: $value.width_double),
      insetPadding_edgeInsets: data.get(#insetPadding_edgeInsets,
          or: $value.insetPadding_edgeInsets),
      showCloseIcon_bool:
          data.get(#showCloseIcon_bool, or: $value.showCloseIcon_bool),
      closeIconColor_themeColorString: data.get(#closeIconColor_themeColorString,
          or: $value.closeIconColor_themeColorString),
      actionOverflowThreshold_double:
          data.get(#actionOverflowThreshold_double, or: $value.actionOverflowThreshold_double),
      actionBackgroundColor_themeColorString: data.get(#actionBackgroundColor_themeColorString, or: $value.actionBackgroundColor_themeColorString),
      disabledActionBackgroundColor_themeColorString: data.get(#disabledActionBackgroundColor_themeColorString, or: $value.disabledActionBackgroundColor_themeColorString));

  @override
  SnackbarModelCopyWith<$R2, SnackbarModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SnackbarModelCopyWithImpl($value, $cast, t);
}
