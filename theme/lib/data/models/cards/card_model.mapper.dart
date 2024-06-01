// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'card_model.dart';

class CardModelMapper extends ClassMapperBase<CardModel> {
  CardModelMapper._();

  static CardModelMapper? _instance;
  static CardModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CardModelMapper._());
      EdgeInsetsModelMapper.ensureInitialized();
      ShapeBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CardModel';

  static String? _$color_themeColorString(CardModel v) =>
      v.color_themeColorString;
  static const Field<CardModel, String> _f$color_themeColorString = Field(
      'color_themeColorString', _$color_themeColorString,
      key: 'color_theme_color_string', opt: true);
  static String? _$shadowColor_themeColorString(CardModel v) =>
      v.shadowColor_themeColorString;
  static const Field<CardModel, String> _f$shadowColor_themeColorString = Field(
      'shadowColor_themeColorString', _$shadowColor_themeColorString,
      key: 'shadow_color_theme_color_string', opt: true);
  static String? _$surfaceTintColor_themeColorString(CardModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<CardModel, String> _f$surfaceTintColor_themeColorString =
      Field('surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          key: 'surface_tint_color_theme_color_string', opt: true);
  static double? _$elevation_double(CardModel v) => v.elevation_double;
  static const Field<CardModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static EdgeInsetsModel? _$margin_edgeInsets(CardModel v) =>
      v.margin_edgeInsets;
  static const Field<CardModel, EdgeInsetsModel> _f$margin_edgeInsets = Field(
      'margin_edgeInsets', _$margin_edgeInsets,
      key: 'margin_edge_insets', opt: true, def: const EdgeInsetsModel());
  static ShapeBorderModel? _$shape_shapeBorder(CardModel v) =>
      v.shape_shapeBorder;
  static const Field<CardModel, ShapeBorderModel> _f$shape_shapeBorder = Field(
      'shape_shapeBorder', _$shape_shapeBorder,
      key: 'shape_shape_border', opt: true);

  @override
  final MappableFields<CardModel> fields = const {
    #color_themeColorString: _f$color_themeColorString,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #margin_edgeInsets: _f$margin_edgeInsets,
    #shape_shapeBorder: _f$shape_shapeBorder,
  };

  static CardModel _instantiate(DecodingData data) {
    return CardModel(
        color_themeColorString: data.dec(_f$color_themeColorString),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        margin_edgeInsets: data.dec(_f$margin_edgeInsets),
        shape_shapeBorder: data.dec(_f$shape_shapeBorder));
  }

  @override
  final Function instantiate = _instantiate;

  static CardModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CardModel>(map);
  }

  static CardModel fromJson(String json) {
    return ensureInitialized().decodeJson<CardModel>(json);
  }
}

mixin CardModelMappable {
  String toJson() {
    return CardModelMapper.ensureInitialized()
        .encodeJson<CardModel>(this as CardModel);
  }

  Map<String, dynamic> toMap() {
    return CardModelMapper.ensureInitialized()
        .encodeMap<CardModel>(this as CardModel);
  }

  CardModelCopyWith<CardModel, CardModel, CardModel> get copyWith =>
      _CardModelCopyWithImpl(this as CardModel, $identity, $identity);
  @override
  String toString() {
    return CardModelMapper.ensureInitialized()
        .stringifyValue(this as CardModel);
  }

  @override
  bool operator ==(Object other) {
    return CardModelMapper.ensureInitialized()
        .equalsValue(this as CardModel, other);
  }

  @override
  int get hashCode {
    return CardModelMapper.ensureInitialized().hashValue(this as CardModel);
  }
}

extension CardModelValueCopy<$R, $Out> on ObjectCopyWith<$R, CardModel, $Out> {
  CardModelCopyWith<$R, CardModel, $Out> get $asCardModel =>
      $base.as((v, t, t2) => _CardModelCopyWithImpl(v, t, t2));
}

abstract class CardModelCopyWith<$R, $In extends CardModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get margin_edgeInsets;
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder;
  $R call(
      {String? color_themeColorString,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      double? elevation_double,
      EdgeInsetsModel? margin_edgeInsets,
      ShapeBorderModel? shape_shapeBorder});
  CardModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CardModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CardModel, $Out>
    implements CardModelCopyWith<$R, CardModel, $Out> {
  _CardModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CardModel> $mapper =
      CardModelMapper.ensureInitialized();
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get margin_edgeInsets => $value.margin_edgeInsets?.copyWith
          .$chain((v) => call(margin_edgeInsets: v));
  @override
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder => $value.shape_shapeBorder?.copyWith
          .$chain((v) => call(shape_shapeBorder: v));
  @override
  $R call(
          {Object? color_themeColorString = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? margin_edgeInsets = $none,
          Object? shape_shapeBorder = $none}) =>
      $apply(FieldCopyWithData({
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (margin_edgeInsets != $none) #margin_edgeInsets: margin_edgeInsets,
        if (shape_shapeBorder != $none) #shape_shapeBorder: shape_shapeBorder
      }));
  @override
  CardModel $make(CopyWithData data) => CardModel(
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      margin_edgeInsets:
          data.get(#margin_edgeInsets, or: $value.margin_edgeInsets),
      shape_shapeBorder:
          data.get(#shape_shapeBorder, or: $value.shape_shapeBorder));

  @override
  CardModelCopyWith<$R2, CardModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CardModelCopyWithImpl($value, $cast, t);
}
