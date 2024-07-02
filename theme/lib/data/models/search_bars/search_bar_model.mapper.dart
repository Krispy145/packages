// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_bar_model.dart';

class TextCapitalizationOptionsMapper
    extends EnumMapper<TextCapitalizationOptions> {
  TextCapitalizationOptionsMapper._();

  static TextCapitalizationOptionsMapper? _instance;
  static TextCapitalizationOptionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = TextCapitalizationOptionsMapper._());
    }
    return _instance!;
  }

  static TextCapitalizationOptions fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TextCapitalizationOptions decode(dynamic value) {
    switch (value) {
      case 'none':
        return TextCapitalizationOptions.none;
      case 'characters':
        return TextCapitalizationOptions.characters;
      case 'words':
        return TextCapitalizationOptions.words;
      case 'sentences':
        return TextCapitalizationOptions.sentences;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TextCapitalizationOptions self) {
    switch (self) {
      case TextCapitalizationOptions.none:
        return 'none';
      case TextCapitalizationOptions.characters:
        return 'characters';
      case TextCapitalizationOptions.words:
        return 'words';
      case TextCapitalizationOptions.sentences:
        return 'sentences';
    }
  }
}

extension TextCapitalizationOptionsMapperExtension
    on TextCapitalizationOptions {
  String toValue() {
    TextCapitalizationOptionsMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TextCapitalizationOptions>(this)
        as String;
  }
}

class SearchBarModelMapper extends ClassMapperBase<SearchBarModel> {
  SearchBarModelMapper._();

  static SearchBarModelMapper? _instance;
  static SearchBarModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchBarModelMapper._());
      BorderSideModelMapper.ensureInitialized();
      OutlinedBorderModelMapper.ensureInitialized();
      EdgeInsetsModelMapper.ensureInitialized();
      BoxConstraintsModelMapper.ensureInitialized();
      TextCapitalizationOptionsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchBarModel';

  static double? _$elevation_double(SearchBarModel v) => v.elevation_double;
  static const Field<SearchBarModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static String? _$backgroundColor_themeColorString(SearchBarModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<SearchBarModel, String>
      _f$backgroundColor_themeColorString = Field(
          'backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          opt: true);
  static String? _$shadowColor_themeColorString(SearchBarModel v) =>
      v.shadowColor_themeColorString;
  static const Field<SearchBarModel, String> _f$shadowColor_themeColorString =
      Field('shadowColor_themeColorString', _$shadowColor_themeColorString,
          opt: true);
  static String? _$surfaceTintColor_themeColorString(SearchBarModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<SearchBarModel, String>
      _f$surfaceTintColor_themeColorString = Field(
          'surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          opt: true);
  static String? _$overlayColor_themeColorString(SearchBarModel v) =>
      v.overlayColor_themeColorString;
  static const Field<SearchBarModel, String> _f$overlayColor_themeColorString =
      Field('overlayColor_themeColorString', _$overlayColor_themeColorString,
          opt: true);
  static BorderSideModel? _$side_borderSide(SearchBarModel v) =>
      v.side_borderSide;
  static const Field<SearchBarModel, BorderSideModel> _f$side_borderSide =
      Field('side_borderSide', _$side_borderSide, opt: true);
  static OutlinedBorderModel? _$shape_outlinedBorder(SearchBarModel v) =>
      v.shape_outlinedBorder;
  static const Field<SearchBarModel, OutlinedBorderModel>
      _f$shape_outlinedBorder = Field(
          'shape_outlinedBorder', _$shape_outlinedBorder,
          opt: true, def: const OutlinedBorderModel());
  static EdgeInsetsModel? _$padding_edgeInsets(SearchBarModel v) =>
      v.padding_edgeInsets;
  static const Field<SearchBarModel, EdgeInsetsModel> _f$padding_edgeInsets =
      Field('padding_edgeInsets', _$padding_edgeInsets,
          opt: true, def: const EdgeInsetsModel());
  static String? _$textStyle_textStyleString(SearchBarModel v) =>
      v.textStyle_textStyleString;
  static const Field<SearchBarModel, String> _f$textStyle_textStyleString =
      Field('textStyle_textStyleString', _$textStyle_textStyleString,
          opt: true);
  static String? _$hintStyle_textStyleString(SearchBarModel v) =>
      v.hintStyle_textStyleString;
  static const Field<SearchBarModel, String> _f$hintStyle_textStyleString =
      Field('hintStyle_textStyleString', _$hintStyle_textStyleString,
          opt: true);
  static BoxConstraintsModel? _$constraints_boxConstraints(SearchBarModel v) =>
      v.constraints_boxConstraints;
  static const Field<SearchBarModel, BoxConstraintsModel>
      _f$constraints_boxConstraints = Field(
          'constraints_boxConstraints', _$constraints_boxConstraints,
          opt: true, def: const BoxConstraintsModel());
  static TextCapitalizationOptions?
      _$textCapitalization_enum_textCapitalization(SearchBarModel v) =>
          v.textCapitalization_enum_textCapitalization;
  static const Field<SearchBarModel, TextCapitalizationOptions>
      _f$textCapitalization_enum_textCapitalization = Field(
          'textCapitalization_enum_textCapitalization',
          _$textCapitalization_enum_textCapitalization,
          opt: true,
          def: TextCapitalizationOptions.none);

  @override
  final MappableFields<SearchBarModel> fields = const {
    #elevation_double: _f$elevation_double,
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #overlayColor_themeColorString: _f$overlayColor_themeColorString,
    #side_borderSide: _f$side_borderSide,
    #shape_outlinedBorder: _f$shape_outlinedBorder,
    #padding_edgeInsets: _f$padding_edgeInsets,
    #textStyle_textStyleString: _f$textStyle_textStyleString,
    #hintStyle_textStyleString: _f$hintStyle_textStyleString,
    #constraints_boxConstraints: _f$constraints_boxConstraints,
    #textCapitalization_enum_textCapitalization:
        _f$textCapitalization_enum_textCapitalization,
  };

  static SearchBarModel _instantiate(DecodingData data) {
    return SearchBarModel(
        elevation_double: data.dec(_f$elevation_double),
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        overlayColor_themeColorString:
            data.dec(_f$overlayColor_themeColorString),
        side_borderSide: data.dec(_f$side_borderSide),
        shape_outlinedBorder: data.dec(_f$shape_outlinedBorder),
        padding_edgeInsets: data.dec(_f$padding_edgeInsets),
        textStyle_textStyleString: data.dec(_f$textStyle_textStyleString),
        hintStyle_textStyleString: data.dec(_f$hintStyle_textStyleString),
        constraints_boxConstraints: data.dec(_f$constraints_boxConstraints),
        textCapitalization_enum_textCapitalization:
            data.dec(_f$textCapitalization_enum_textCapitalization));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchBarModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchBarModel>(map);
  }

  static SearchBarModel fromJson(String json) {
    return ensureInitialized().decodeJson<SearchBarModel>(json);
  }
}

mixin SearchBarModelMappable {
  String toJson() {
    return SearchBarModelMapper.ensureInitialized()
        .encodeJson<SearchBarModel>(this as SearchBarModel);
  }

  Map<String, dynamic> toMap() {
    return SearchBarModelMapper.ensureInitialized()
        .encodeMap<SearchBarModel>(this as SearchBarModel);
  }

  SearchBarModelCopyWith<SearchBarModel, SearchBarModel, SearchBarModel>
      get copyWith => _SearchBarModelCopyWithImpl(
          this as SearchBarModel, $identity, $identity);
  @override
  String toString() {
    return SearchBarModelMapper.ensureInitialized()
        .stringifyValue(this as SearchBarModel);
  }

  @override
  bool operator ==(Object other) {
    return SearchBarModelMapper.ensureInitialized()
        .equalsValue(this as SearchBarModel, other);
  }

  @override
  int get hashCode {
    return SearchBarModelMapper.ensureInitialized()
        .hashValue(this as SearchBarModel);
  }
}

extension SearchBarModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchBarModel, $Out> {
  SearchBarModelCopyWith<$R, SearchBarModel, $Out> get $asSearchBarModel =>
      $base.as((v, t, t2) => _SearchBarModelCopyWithImpl(v, t, t2));
}

abstract class SearchBarModelCopyWith<$R, $In extends SearchBarModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide;
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder;
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets;
  BoxConstraintsModelCopyWith<$R, BoxConstraintsModel, BoxConstraintsModel>?
      get constraints_boxConstraints;
  $R call(
      {double? elevation_double,
      String? backgroundColor_themeColorString,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      String? overlayColor_themeColorString,
      BorderSideModel? side_borderSide,
      OutlinedBorderModel? shape_outlinedBorder,
      EdgeInsetsModel? padding_edgeInsets,
      String? textStyle_textStyleString,
      String? hintStyle_textStyleString,
      BoxConstraintsModel? constraints_boxConstraints,
      TextCapitalizationOptions? textCapitalization_enum_textCapitalization});
  SearchBarModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchBarModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchBarModel, $Out>
    implements SearchBarModelCopyWith<$R, SearchBarModel, $Out> {
  _SearchBarModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchBarModel> $mapper =
      SearchBarModelMapper.ensureInitialized();
  @override
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide => $value.side_borderSide?.copyWith
          .$chain((v) => call(side_borderSide: v));
  @override
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder => $value.shape_outlinedBorder?.copyWith
          .$chain((v) => call(shape_outlinedBorder: v));
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets => $value.padding_edgeInsets?.copyWith
          .$chain((v) => call(padding_edgeInsets: v));
  @override
  BoxConstraintsModelCopyWith<$R, BoxConstraintsModel, BoxConstraintsModel>?
      get constraints_boxConstraints =>
          $value.constraints_boxConstraints?.copyWith
              .$chain((v) => call(constraints_boxConstraints: v));
  @override
  $R call(
          {Object? elevation_double = $none,
          Object? backgroundColor_themeColorString = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? overlayColor_themeColorString = $none,
          Object? side_borderSide = $none,
          Object? shape_outlinedBorder = $none,
          Object? padding_edgeInsets = $none,
          Object? textStyle_textStyleString = $none,
          Object? hintStyle_textStyleString = $none,
          Object? constraints_boxConstraints = $none,
          Object? textCapitalization_enum_textCapitalization = $none}) =>
      $apply(FieldCopyWithData({
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (overlayColor_themeColorString != $none)
          #overlayColor_themeColorString: overlayColor_themeColorString,
        if (side_borderSide != $none) #side_borderSide: side_borderSide,
        if (shape_outlinedBorder != $none)
          #shape_outlinedBorder: shape_outlinedBorder,
        if (padding_edgeInsets != $none)
          #padding_edgeInsets: padding_edgeInsets,
        if (textStyle_textStyleString != $none)
          #textStyle_textStyleString: textStyle_textStyleString,
        if (hintStyle_textStyleString != $none)
          #hintStyle_textStyleString: hintStyle_textStyleString,
        if (constraints_boxConstraints != $none)
          #constraints_boxConstraints: constraints_boxConstraints,
        if (textCapitalization_enum_textCapitalization != $none)
          #textCapitalization_enum_textCapitalization:
              textCapitalization_enum_textCapitalization
      }));
  @override
  SearchBarModel $make(CopyWithData data) => SearchBarModel(
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      backgroundColor_themeColorString: data.get(#backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(#surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      overlayColor_themeColorString: data.get(#overlayColor_themeColorString,
          or: $value.overlayColor_themeColorString),
      side_borderSide: data.get(#side_borderSide, or: $value.side_borderSide),
      shape_outlinedBorder:
          data.get(#shape_outlinedBorder, or: $value.shape_outlinedBorder),
      padding_edgeInsets:
          data.get(#padding_edgeInsets, or: $value.padding_edgeInsets),
      textStyle_textStyleString: data.get(#textStyle_textStyleString,
          or: $value.textStyle_textStyleString),
      hintStyle_textStyleString: data.get(#hintStyle_textStyleString,
          or: $value.hintStyle_textStyleString),
      constraints_boxConstraints: data.get(#constraints_boxConstraints,
          or: $value.constraints_boxConstraints),
      textCapitalization_enum_textCapitalization:
          data.get(#textCapitalization_enum_textCapitalization, or: $value.textCapitalization_enum_textCapitalization));

  @override
  SearchBarModelCopyWith<$R2, SearchBarModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchBarModelCopyWithImpl($value, $cast, t);
}
