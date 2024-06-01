// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_view_model.dart';

class SearchViewModelMapper extends ClassMapperBase<SearchViewModel> {
  SearchViewModelMapper._();

  static SearchViewModelMapper? _instance;
  static SearchViewModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchViewModelMapper._());
      BoxConstraintsModelMapper.ensureInitialized();
      BorderSideModelMapper.ensureInitialized();
      OutlinedBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchViewModel';

  static String? _$backgroundColor_themeColorString(SearchViewModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<SearchViewModel, String>
      _f$backgroundColor_themeColorString = Field(
          'backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          key: 'background_color_theme_color_string',
          opt: true);
  static double? _$elevation_double(SearchViewModel v) => v.elevation_double;
  static const Field<SearchViewModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static String? _$surfaceTintColor_themeColorString(SearchViewModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<SearchViewModel, String>
      _f$surfaceTintColor_themeColorString = Field(
          'surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          key: 'surface_tint_color_theme_color_string',
          opt: true);
  static BoxConstraintsModel? _$constraints_boxConstraints(SearchViewModel v) =>
      v.constraints_boxConstraints;
  static const Field<SearchViewModel, BoxConstraintsModel>
      _f$constraints_boxConstraints = Field(
          'constraints_boxConstraints', _$constraints_boxConstraints,
          key: 'constraints_box_constraints',
          opt: true,
          def: const BoxConstraintsModel());
  static BorderSideModel? _$side_borderSide(SearchViewModel v) =>
      v.side_borderSide;
  static const Field<SearchViewModel, BorderSideModel> _f$side_borderSide =
      Field('side_borderSide', _$side_borderSide,
          key: 'side_border_side', opt: true);
  static OutlinedBorderModel? _$shape_outlinedBorder(SearchViewModel v) =>
      v.shape_outlinedBorder;
  static const Field<SearchViewModel, OutlinedBorderModel>
      _f$shape_outlinedBorder = Field(
          'shape_outlinedBorder', _$shape_outlinedBorder,
          key: 'shape_outlined_border',
          opt: true,
          def: const OutlinedBorderModel());
  static String? _$headerTextStyle_textStyleString(SearchViewModel v) =>
      v.headerTextStyle_textStyleString;
  static const Field<SearchViewModel, String>
      _f$headerTextStyle_textStyleString = Field(
          'headerTextStyle_textStyleString', _$headerTextStyle_textStyleString,
          key: 'header_text_style_text_style_string', opt: true);
  static String? _$headerHintStyle_textStyleString(SearchViewModel v) =>
      v.headerHintStyle_textStyleString;
  static const Field<SearchViewModel, String>
      _f$headerHintStyle_textStyleString = Field(
          'headerHintStyle_textStyleString', _$headerHintStyle_textStyleString,
          key: 'header_hint_style_text_style_string', opt: true);
  static String? _$dividerColor_themeColorString(SearchViewModel v) =>
      v.dividerColor_themeColorString;
  static const Field<SearchViewModel, String> _f$dividerColor_themeColorString =
      Field('dividerColor_themeColorString', _$dividerColor_themeColorString,
          key: 'divider_color_theme_color_string', opt: true);

  @override
  final MappableFields<SearchViewModel> fields = const {
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #constraints_boxConstraints: _f$constraints_boxConstraints,
    #side_borderSide: _f$side_borderSide,
    #shape_outlinedBorder: _f$shape_outlinedBorder,
    #headerTextStyle_textStyleString: _f$headerTextStyle_textStyleString,
    #headerHintStyle_textStyleString: _f$headerHintStyle_textStyleString,
    #dividerColor_themeColorString: _f$dividerColor_themeColorString,
  };

  static SearchViewModel _instantiate(DecodingData data) {
    return SearchViewModel(
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        constraints_boxConstraints: data.dec(_f$constraints_boxConstraints),
        side_borderSide: data.dec(_f$side_borderSide),
        shape_outlinedBorder: data.dec(_f$shape_outlinedBorder),
        headerTextStyle_textStyleString:
            data.dec(_f$headerTextStyle_textStyleString),
        headerHintStyle_textStyleString:
            data.dec(_f$headerHintStyle_textStyleString),
        dividerColor_themeColorString:
            data.dec(_f$dividerColor_themeColorString));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchViewModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchViewModel>(map);
  }

  static SearchViewModel fromJson(String json) {
    return ensureInitialized().decodeJson<SearchViewModel>(json);
  }
}

mixin SearchViewModelMappable {
  String toJson() {
    return SearchViewModelMapper.ensureInitialized()
        .encodeJson<SearchViewModel>(this as SearchViewModel);
  }

  Map<String, dynamic> toMap() {
    return SearchViewModelMapper.ensureInitialized()
        .encodeMap<SearchViewModel>(this as SearchViewModel);
  }

  SearchViewModelCopyWith<SearchViewModel, SearchViewModel, SearchViewModel>
      get copyWith => _SearchViewModelCopyWithImpl(
          this as SearchViewModel, $identity, $identity);
  @override
  String toString() {
    return SearchViewModelMapper.ensureInitialized()
        .stringifyValue(this as SearchViewModel);
  }

  @override
  bool operator ==(Object other) {
    return SearchViewModelMapper.ensureInitialized()
        .equalsValue(this as SearchViewModel, other);
  }

  @override
  int get hashCode {
    return SearchViewModelMapper.ensureInitialized()
        .hashValue(this as SearchViewModel);
  }
}

extension SearchViewModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchViewModel, $Out> {
  SearchViewModelCopyWith<$R, SearchViewModel, $Out> get $asSearchViewModel =>
      $base.as((v, t, t2) => _SearchViewModelCopyWithImpl(v, t, t2));
}

abstract class SearchViewModelCopyWith<$R, $In extends SearchViewModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BoxConstraintsModelCopyWith<$R, BoxConstraintsModel, BoxConstraintsModel>?
      get constraints_boxConstraints;
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide;
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder;
  $R call(
      {String? backgroundColor_themeColorString,
      double? elevation_double,
      String? surfaceTintColor_themeColorString,
      BoxConstraintsModel? constraints_boxConstraints,
      BorderSideModel? side_borderSide,
      OutlinedBorderModel? shape_outlinedBorder,
      String? headerTextStyle_textStyleString,
      String? headerHintStyle_textStyleString,
      String? dividerColor_themeColorString});
  SearchViewModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchViewModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchViewModel, $Out>
    implements SearchViewModelCopyWith<$R, SearchViewModel, $Out> {
  _SearchViewModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchViewModel> $mapper =
      SearchViewModelMapper.ensureInitialized();
  @override
  BoxConstraintsModelCopyWith<$R, BoxConstraintsModel, BoxConstraintsModel>?
      get constraints_boxConstraints =>
          $value.constraints_boxConstraints?.copyWith
              .$chain((v) => call(constraints_boxConstraints: v));
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
          Object? elevation_double = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? constraints_boxConstraints = $none,
          Object? side_borderSide = $none,
          Object? shape_outlinedBorder = $none,
          Object? headerTextStyle_textStyleString = $none,
          Object? headerHintStyle_textStyleString = $none,
          Object? dividerColor_themeColorString = $none}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (constraints_boxConstraints != $none)
          #constraints_boxConstraints: constraints_boxConstraints,
        if (side_borderSide != $none) #side_borderSide: side_borderSide,
        if (shape_outlinedBorder != $none)
          #shape_outlinedBorder: shape_outlinedBorder,
        if (headerTextStyle_textStyleString != $none)
          #headerTextStyle_textStyleString: headerTextStyle_textStyleString,
        if (headerHintStyle_textStyleString != $none)
          #headerHintStyle_textStyleString: headerHintStyle_textStyleString,
        if (dividerColor_themeColorString != $none)
          #dividerColor_themeColorString: dividerColor_themeColorString
      }));
  @override
  SearchViewModel $make(CopyWithData data) => SearchViewModel(
      backgroundColor_themeColorString: data.get(
          #backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      constraints_boxConstraints: data.get(#constraints_boxConstraints,
          or: $value.constraints_boxConstraints),
      side_borderSide: data.get(#side_borderSide, or: $value.side_borderSide),
      shape_outlinedBorder:
          data.get(#shape_outlinedBorder, or: $value.shape_outlinedBorder),
      headerTextStyle_textStyleString: data.get(
          #headerTextStyle_textStyleString,
          or: $value.headerTextStyle_textStyleString),
      headerHintStyle_textStyleString: data.get(
          #headerHintStyle_textStyleString,
          or: $value.headerHintStyle_textStyleString),
      dividerColor_themeColorString: data.get(#dividerColor_themeColorString,
          or: $value.dividerColor_themeColorString));

  @override
  SearchViewModelCopyWith<$R2, SearchViewModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchViewModelCopyWithImpl($value, $cast, t);
}
