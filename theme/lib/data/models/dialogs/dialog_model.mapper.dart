// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dialog_model.dart';

class DialogModelMapper extends ClassMapperBase<DialogModel> {
  DialogModelMapper._();

  static DialogModelMapper? _instance;
  static DialogModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DialogModelMapper._());
      ShapeBorderModelMapper.ensureInitialized();
      EdgeInsetsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DialogModel';

  static String? _$backgroundColor_themeColorString(DialogModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<DialogModel, String> _f$backgroundColor_themeColorString =
      Field('backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          key: 'background_color_theme_color_string', opt: true);
  static double? _$elevation_double(DialogModel v) => v.elevation_double;
  static const Field<DialogModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static String? _$shadowColor_themeColorString(DialogModel v) =>
      v.shadowColor_themeColorString;
  static const Field<DialogModel, String> _f$shadowColor_themeColorString =
      Field('shadowColor_themeColorString', _$shadowColor_themeColorString,
          key: 'shadow_color_theme_color_string', opt: true);
  static String? _$surfaceTintColor_themeColorString(DialogModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<DialogModel, String> _f$surfaceTintColor_themeColorString =
      Field('surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          key: 'surface_tint_color_theme_color_string', opt: true);
  static ShapeBorderModel? _$shape_shapeBorder(DialogModel v) =>
      v.shape_shapeBorder;
  static const Field<DialogModel, ShapeBorderModel> _f$shape_shapeBorder =
      Field('shape_shapeBorder', _$shape_shapeBorder,
          key: 'shape_shape_border', opt: true);
  static AlignmentOptions? _$alignment_enum_alignmentOptions(DialogModel v) =>
      v.alignment_enum_alignmentOptions;
  static const Field<DialogModel, AlignmentOptions>
      _f$alignment_enum_alignmentOptions = Field(
          'alignment_enum_alignmentOptions', _$alignment_enum_alignmentOptions,
          key: 'alignment_enum_alignment_options', opt: true);
  static String? _$iconColor_themeColorString(DialogModel v) =>
      v.iconColor_themeColorString;
  static const Field<DialogModel, String> _f$iconColor_themeColorString = Field(
      'iconColor_themeColorString', _$iconColor_themeColorString,
      key: 'icon_color_theme_color_string', opt: true);
  static String? _$titleTextStyle_textStyleString(DialogModel v) =>
      v.titleTextStyle_textStyleString;
  static const Field<DialogModel, String> _f$titleTextStyle_textStyleString =
      Field('titleTextStyle_textStyleString', _$titleTextStyle_textStyleString,
          key: 'title_text_style_text_style_string', opt: true);
  static String? _$contentTextStyle_textStyleString(DialogModel v) =>
      v.contentTextStyle_textStyleString;
  static const Field<DialogModel, String> _f$contentTextStyle_textStyleString =
      Field('contentTextStyle_textStyleString',
          _$contentTextStyle_textStyleString,
          key: 'content_text_style_text_style_string', opt: true);
  static EdgeInsetsModel? _$actionsPadding_edgeInsets(DialogModel v) =>
      v.actionsPadding_edgeInsets;
  static const Field<DialogModel, EdgeInsetsModel>
      _f$actionsPadding_edgeInsets = Field(
          'actionsPadding_edgeInsets', _$actionsPadding_edgeInsets,
          key: 'actions_padding_edge_insets',
          opt: true,
          def: const EdgeInsetsModel());

  @override
  final MappableFields<DialogModel> fields = const {
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #shape_shapeBorder: _f$shape_shapeBorder,
    #alignment_enum_alignmentOptions: _f$alignment_enum_alignmentOptions,
    #iconColor_themeColorString: _f$iconColor_themeColorString,
    #titleTextStyle_textStyleString: _f$titleTextStyle_textStyleString,
    #contentTextStyle_textStyleString: _f$contentTextStyle_textStyleString,
    #actionsPadding_edgeInsets: _f$actionsPadding_edgeInsets,
  };

  static DialogModel _instantiate(DecodingData data) {
    return DialogModel(
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        shape_shapeBorder: data.dec(_f$shape_shapeBorder),
        alignment_enum_alignmentOptions:
            data.dec(_f$alignment_enum_alignmentOptions),
        iconColor_themeColorString: data.dec(_f$iconColor_themeColorString),
        titleTextStyle_textStyleString:
            data.dec(_f$titleTextStyle_textStyleString),
        contentTextStyle_textStyleString:
            data.dec(_f$contentTextStyle_textStyleString),
        actionsPadding_edgeInsets: data.dec(_f$actionsPadding_edgeInsets));
  }

  @override
  final Function instantiate = _instantiate;

  static DialogModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DialogModel>(map);
  }

  static DialogModel fromJson(String json) {
    return ensureInitialized().decodeJson<DialogModel>(json);
  }
}

mixin DialogModelMappable {
  String toJson() {
    return DialogModelMapper.ensureInitialized()
        .encodeJson<DialogModel>(this as DialogModel);
  }

  Map<String, dynamic> toMap() {
    return DialogModelMapper.ensureInitialized()
        .encodeMap<DialogModel>(this as DialogModel);
  }

  DialogModelCopyWith<DialogModel, DialogModel, DialogModel> get copyWith =>
      _DialogModelCopyWithImpl(this as DialogModel, $identity, $identity);
  @override
  String toString() {
    return DialogModelMapper.ensureInitialized()
        .stringifyValue(this as DialogModel);
  }

  @override
  bool operator ==(Object other) {
    return DialogModelMapper.ensureInitialized()
        .equalsValue(this as DialogModel, other);
  }

  @override
  int get hashCode {
    return DialogModelMapper.ensureInitialized().hashValue(this as DialogModel);
  }
}

extension DialogModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DialogModel, $Out> {
  DialogModelCopyWith<$R, DialogModel, $Out> get $asDialogModel =>
      $base.as((v, t, t2) => _DialogModelCopyWithImpl(v, t, t2));
}

abstract class DialogModelCopyWith<$R, $In extends DialogModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder;
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get actionsPadding_edgeInsets;
  $R call(
      {String? backgroundColor_themeColorString,
      double? elevation_double,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      ShapeBorderModel? shape_shapeBorder,
      AlignmentOptions? alignment_enum_alignmentOptions,
      String? iconColor_themeColorString,
      String? titleTextStyle_textStyleString,
      String? contentTextStyle_textStyleString,
      EdgeInsetsModel? actionsPadding_edgeInsets});
  DialogModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DialogModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DialogModel, $Out>
    implements DialogModelCopyWith<$R, DialogModel, $Out> {
  _DialogModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DialogModel> $mapper =
      DialogModelMapper.ensureInitialized();
  @override
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder => $value.shape_shapeBorder?.copyWith
          .$chain((v) => call(shape_shapeBorder: v));
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get actionsPadding_edgeInsets =>
          $value.actionsPadding_edgeInsets?.copyWith
              .$chain((v) => call(actionsPadding_edgeInsets: v));
  @override
  $R call(
          {Object? backgroundColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? shape_shapeBorder = $none,
          Object? alignment_enum_alignmentOptions = $none,
          Object? iconColor_themeColorString = $none,
          Object? titleTextStyle_textStyleString = $none,
          Object? contentTextStyle_textStyleString = $none,
          Object? actionsPadding_edgeInsets = $none}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (shape_shapeBorder != $none) #shape_shapeBorder: shape_shapeBorder,
        if (alignment_enum_alignmentOptions != $none)
          #alignment_enum_alignmentOptions: alignment_enum_alignmentOptions,
        if (iconColor_themeColorString != $none)
          #iconColor_themeColorString: iconColor_themeColorString,
        if (titleTextStyle_textStyleString != $none)
          #titleTextStyle_textStyleString: titleTextStyle_textStyleString,
        if (contentTextStyle_textStyleString != $none)
          #contentTextStyle_textStyleString: contentTextStyle_textStyleString,
        if (actionsPadding_edgeInsets != $none)
          #actionsPadding_edgeInsets: actionsPadding_edgeInsets
      }));
  @override
  DialogModel $make(CopyWithData data) => DialogModel(
      backgroundColor_themeColorString: data.get(#backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      shape_shapeBorder:
          data.get(#shape_shapeBorder, or: $value.shape_shapeBorder),
      alignment_enum_alignmentOptions: data.get(#alignment_enum_alignmentOptions,
          or: $value.alignment_enum_alignmentOptions),
      iconColor_themeColorString: data.get(#iconColor_themeColorString,
          or: $value.iconColor_themeColorString),
      titleTextStyle_textStyleString: data.get(#titleTextStyle_textStyleString,
          or: $value.titleTextStyle_textStyleString),
      contentTextStyle_textStyleString: data.get(#contentTextStyle_textStyleString,
          or: $value.contentTextStyle_textStyleString),
      actionsPadding_edgeInsets: data.get(#actionsPadding_edgeInsets,
          or: $value.actionsPadding_edgeInsets));

  @override
  DialogModelCopyWith<$R2, DialogModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DialogModelCopyWithImpl($value, $cast, t);
}
