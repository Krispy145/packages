// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'menu_style_model.dart';

class MenuStyleModelMapper extends ClassMapperBase<MenuStyleModel> {
  MenuStyleModelMapper._();

  static MenuStyleModelMapper? _instance;
  static MenuStyleModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MenuStyleModelMapper._());
      EdgeInsetsModelMapper.ensureInitialized();
      SizeModelMapper.ensureInitialized();
      BorderSideModelMapper.ensureInitialized();
      OutlinedBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MenuStyleModel';

  static String? _$backgroundColor_themeColorString(MenuStyleModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<MenuStyleModel, String>
      _f$backgroundColor_themeColorString = Field(
          'backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          key: 'background_color_theme_color_string',
          opt: true);
  static String? _$shadowColor_themeColorString(MenuStyleModel v) =>
      v.shadowColor_themeColorString;
  static const Field<MenuStyleModel, String> _f$shadowColor_themeColorString =
      Field('shadowColor_themeColorString', _$shadowColor_themeColorString,
          key: 'shadow_color_theme_color_string', opt: true);
  static String? _$surfaceTintColor_themeColorString(MenuStyleModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<MenuStyleModel, String>
      _f$surfaceTintColor_themeColorString = Field(
          'surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          key: 'surface_tint_color_theme_color_string',
          opt: true);
  static double? _$elevation_double(MenuStyleModel v) => v.elevation_double;
  static const Field<MenuStyleModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static EdgeInsetsModel? _$padding_edgeInsets(MenuStyleModel v) =>
      v.padding_edgeInsets;
  static const Field<MenuStyleModel, EdgeInsetsModel> _f$padding_edgeInsets =
      Field('padding_edgeInsets', _$padding_edgeInsets,
          key: 'padding_edge_insets', opt: true, def: const EdgeInsetsModel());
  static SizeModel? _$minimumSize_size(MenuStyleModel v) => v.minimumSize_size;
  static const Field<MenuStyleModel, SizeModel> _f$minimumSize_size = Field(
      'minimumSize_size', _$minimumSize_size,
      key: 'minimum_size_size', opt: true, def: const SizeModel());
  static SizeModel? _$fixedSize_size(MenuStyleModel v) => v.fixedSize_size;
  static const Field<MenuStyleModel, SizeModel> _f$fixedSize_size = Field(
      'fixedSize_size', _$fixedSize_size,
      key: 'fixed_size_size', opt: true, def: const SizeModel());
  static SizeModel? _$maximumSize_size(MenuStyleModel v) => v.maximumSize_size;
  static const Field<MenuStyleModel, SizeModel> _f$maximumSize_size = Field(
      'maximumSize_size', _$maximumSize_size,
      key: 'maximum_size_size', opt: true, def: const SizeModel());
  static BorderSideModel? _$side_borderSide(MenuStyleModel v) =>
      v.side_borderSide;
  static const Field<MenuStyleModel, BorderSideModel> _f$side_borderSide =
      Field('side_borderSide', _$side_borderSide,
          key: 'side_border_side', opt: true, def: const BorderSideModel());
  static OutlinedBorderModel? _$shape_outlinedBorder(MenuStyleModel v) =>
      v.shape_outlinedBorder;
  static const Field<MenuStyleModel, OutlinedBorderModel>
      _f$shape_outlinedBorder = Field(
          'shape_outlinedBorder', _$shape_outlinedBorder,
          key: 'shape_outlined_border',
          opt: true,
          def: const OutlinedBorderModel());
  static AlignmentOptions? _$alignment_enum_alignmentOptions(
          MenuStyleModel v) =>
      v.alignment_enum_alignmentOptions;
  static const Field<MenuStyleModel, AlignmentOptions>
      _f$alignment_enum_alignmentOptions = Field(
          'alignment_enum_alignmentOptions', _$alignment_enum_alignmentOptions,
          key: 'alignment_enum_alignment_options',
          opt: true,
          def: AlignmentOptions.center);

  @override
  final MappableFields<MenuStyleModel> fields = const {
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #padding_edgeInsets: _f$padding_edgeInsets,
    #minimumSize_size: _f$minimumSize_size,
    #fixedSize_size: _f$fixedSize_size,
    #maximumSize_size: _f$maximumSize_size,
    #side_borderSide: _f$side_borderSide,
    #shape_outlinedBorder: _f$shape_outlinedBorder,
    #alignment_enum_alignmentOptions: _f$alignment_enum_alignmentOptions,
  };

  static MenuStyleModel _instantiate(DecodingData data) {
    return MenuStyleModel(
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        padding_edgeInsets: data.dec(_f$padding_edgeInsets),
        minimumSize_size: data.dec(_f$minimumSize_size),
        fixedSize_size: data.dec(_f$fixedSize_size),
        maximumSize_size: data.dec(_f$maximumSize_size),
        side_borderSide: data.dec(_f$side_borderSide),
        shape_outlinedBorder: data.dec(_f$shape_outlinedBorder),
        alignment_enum_alignmentOptions:
            data.dec(_f$alignment_enum_alignmentOptions));
  }

  @override
  final Function instantiate = _instantiate;

  static MenuStyleModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MenuStyleModel>(map);
  }

  static MenuStyleModel fromJson(String json) {
    return ensureInitialized().decodeJson<MenuStyleModel>(json);
  }
}

mixin MenuStyleModelMappable {
  String toJson() {
    return MenuStyleModelMapper.ensureInitialized()
        .encodeJson<MenuStyleModel>(this as MenuStyleModel);
  }

  Map<String, dynamic> toMap() {
    return MenuStyleModelMapper.ensureInitialized()
        .encodeMap<MenuStyleModel>(this as MenuStyleModel);
  }

  MenuStyleModelCopyWith<MenuStyleModel, MenuStyleModel, MenuStyleModel>
      get copyWith => _MenuStyleModelCopyWithImpl(
          this as MenuStyleModel, $identity, $identity);
  @override
  String toString() {
    return MenuStyleModelMapper.ensureInitialized()
        .stringifyValue(this as MenuStyleModel);
  }

  @override
  bool operator ==(Object other) {
    return MenuStyleModelMapper.ensureInitialized()
        .equalsValue(this as MenuStyleModel, other);
  }

  @override
  int get hashCode {
    return MenuStyleModelMapper.ensureInitialized()
        .hashValue(this as MenuStyleModel);
  }
}

extension MenuStyleModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MenuStyleModel, $Out> {
  MenuStyleModelCopyWith<$R, MenuStyleModel, $Out> get $asMenuStyleModel =>
      $base.as((v, t, t2) => _MenuStyleModelCopyWithImpl(v, t, t2));
}

abstract class MenuStyleModelCopyWith<$R, $In extends MenuStyleModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets;
  SizeModelCopyWith<$R, SizeModel, SizeModel>? get minimumSize_size;
  SizeModelCopyWith<$R, SizeModel, SizeModel>? get fixedSize_size;
  SizeModelCopyWith<$R, SizeModel, SizeModel>? get maximumSize_size;
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide;
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder;
  $R call(
      {String? backgroundColor_themeColorString,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      double? elevation_double,
      EdgeInsetsModel? padding_edgeInsets,
      SizeModel? minimumSize_size,
      SizeModel? fixedSize_size,
      SizeModel? maximumSize_size,
      BorderSideModel? side_borderSide,
      OutlinedBorderModel? shape_outlinedBorder,
      AlignmentOptions? alignment_enum_alignmentOptions});
  MenuStyleModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MenuStyleModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MenuStyleModel, $Out>
    implements MenuStyleModelCopyWith<$R, MenuStyleModel, $Out> {
  _MenuStyleModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MenuStyleModel> $mapper =
      MenuStyleModelMapper.ensureInitialized();
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets => $value.padding_edgeInsets?.copyWith
          .$chain((v) => call(padding_edgeInsets: v));
  @override
  SizeModelCopyWith<$R, SizeModel, SizeModel>? get minimumSize_size =>
      $value.minimumSize_size?.copyWith
          .$chain((v) => call(minimumSize_size: v));
  @override
  SizeModelCopyWith<$R, SizeModel, SizeModel>? get fixedSize_size =>
      $value.fixedSize_size?.copyWith.$chain((v) => call(fixedSize_size: v));
  @override
  SizeModelCopyWith<$R, SizeModel, SizeModel>? get maximumSize_size =>
      $value.maximumSize_size?.copyWith
          .$chain((v) => call(maximumSize_size: v));
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide => $value.side_borderSide?.copyWith
          .$chain((v) => call(side_borderSide: v));
  @override
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder => $value.shape_outlinedBorder?.copyWith
          .$chain((v) => call(shape_outlinedBorder: v));
  @override
  $R call(
          {Object? backgroundColor_themeColorString = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? padding_edgeInsets = $none,
          Object? minimumSize_size = $none,
          Object? fixedSize_size = $none,
          Object? maximumSize_size = $none,
          Object? side_borderSide = $none,
          Object? shape_outlinedBorder = $none,
          Object? alignment_enum_alignmentOptions = $none}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (padding_edgeInsets != $none)
          #padding_edgeInsets: padding_edgeInsets,
        if (minimumSize_size != $none) #minimumSize_size: minimumSize_size,
        if (fixedSize_size != $none) #fixedSize_size: fixedSize_size,
        if (maximumSize_size != $none) #maximumSize_size: maximumSize_size,
        if (side_borderSide != $none) #side_borderSide: side_borderSide,
        if (shape_outlinedBorder != $none)
          #shape_outlinedBorder: shape_outlinedBorder,
        if (alignment_enum_alignmentOptions != $none)
          #alignment_enum_alignmentOptions: alignment_enum_alignmentOptions
      }));
  @override
  MenuStyleModel $make(CopyWithData data) => MenuStyleModel(
      backgroundColor_themeColorString: data.get(
          #backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      padding_edgeInsets:
          data.get(#padding_edgeInsets, or: $value.padding_edgeInsets),
      minimumSize_size:
          data.get(#minimumSize_size, or: $value.minimumSize_size),
      fixedSize_size: data.get(#fixedSize_size, or: $value.fixedSize_size),
      maximumSize_size:
          data.get(#maximumSize_size, or: $value.maximumSize_size),
      side_borderSide: data.get(#side_borderSide, or: $value.side_borderSide),
      shape_outlinedBorder:
          data.get(#shape_outlinedBorder, or: $value.shape_outlinedBorder),
      alignment_enum_alignmentOptions: data.get(
          #alignment_enum_alignmentOptions,
          or: $value.alignment_enum_alignmentOptions));

  @override
  MenuStyleModelCopyWith<$R2, MenuStyleModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MenuStyleModelCopyWithImpl($value, $cast, t);
}
