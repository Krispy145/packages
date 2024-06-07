// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'list_tile_model.dart';

class ListTileModelMapper extends ClassMapperBase<ListTileModel> {
  ListTileModelMapper._();

  static ListTileModelMapper? _instance;
  static ListTileModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ListTileModelMapper._());
      ShapeBorderModelMapper.ensureInitialized();
      EdgeInsetsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ListTileModel';

  static bool? _$dense_bool(ListTileModel v) => v.dense_bool;
  static const Field<ListTileModel, bool> _f$dense_bool =
      Field('dense_bool', _$dense_bool, opt: true);
  static ShapeBorderModel? _$shape_shapeBorder(ListTileModel v) =>
      v.shape_shapeBorder;
  static const Field<ListTileModel, ShapeBorderModel> _f$shape_shapeBorder =
      Field('shape_shapeBorder', _$shape_shapeBorder, opt: true);
  static String? _$selectedColor_themeColorString(ListTileModel v) =>
      v.selectedColor_themeColorString;
  static const Field<ListTileModel, String> _f$selectedColor_themeColorString =
      Field('selectedColor_themeColorString', _$selectedColor_themeColorString,
          opt: true);
  static String? _$iconColor_themeColorString(ListTileModel v) =>
      v.iconColor_themeColorString;
  static const Field<ListTileModel, String> _f$iconColor_themeColorString =
      Field('iconColor_themeColorString', _$iconColor_themeColorString,
          opt: true);
  static String? _$textColor_themeColorString(ListTileModel v) =>
      v.textColor_themeColorString;
  static const Field<ListTileModel, String> _f$textColor_themeColorString =
      Field('textColor_themeColorString', _$textColor_themeColorString,
          opt: true);
  static String? _$titleTextStyle_textStyleString(ListTileModel v) =>
      v.titleTextStyle_textStyleString;
  static const Field<ListTileModel, String> _f$titleTextStyle_textStyleString =
      Field('titleTextStyle_textStyleString', _$titleTextStyle_textStyleString,
          opt: true);
  static String? _$subtitleTextStyle_textStyleString(ListTileModel v) =>
      v.subtitleTextStyle_textStyleString;
  static const Field<ListTileModel, String>
      _f$subtitleTextStyle_textStyleString = Field(
          'subtitleTextStyle_textStyleString',
          _$subtitleTextStyle_textStyleString,
          opt: true);
  static String? _$leadingAndTrailingTextStyle_textStyleString(
          ListTileModel v) =>
      v.leadingAndTrailingTextStyle_textStyleString;
  static const Field<ListTileModel, String>
      _f$leadingAndTrailingTextStyle_textStyleString = Field(
          'leadingAndTrailingTextStyle_textStyleString',
          _$leadingAndTrailingTextStyle_textStyleString,
          opt: true);
  static EdgeInsetsModel? _$contentPadding_edgeInsets(ListTileModel v) =>
      v.contentPadding_edgeInsets;
  static const Field<ListTileModel, EdgeInsetsModel>
      _f$contentPadding_edgeInsets = Field(
          'contentPadding_edgeInsets', _$contentPadding_edgeInsets,
          opt: true, def: const EdgeInsetsModel());
  static String? _$tileColor_themeColorString(ListTileModel v) =>
      v.tileColor_themeColorString;
  static const Field<ListTileModel, String> _f$tileColor_themeColorString =
      Field('tileColor_themeColorString', _$tileColor_themeColorString,
          opt: true);
  static String? _$selectedTileColor_themeColorString(ListTileModel v) =>
      v.selectedTileColor_themeColorString;
  static const Field<ListTileModel, String>
      _f$selectedTileColor_themeColorString = Field(
          'selectedTileColor_themeColorString',
          _$selectedTileColor_themeColorString,
          opt: true);
  static double? _$horizontalTitleGap_double(ListTileModel v) =>
      v.horizontalTitleGap_double;
  static const Field<ListTileModel, double> _f$horizontalTitleGap_double =
      Field('horizontalTitleGap_double', _$horizontalTitleGap_double,
          opt: true);
  static double? _$minVerticalPadding_double(ListTileModel v) =>
      v.minVerticalPadding_double;
  static const Field<ListTileModel, double> _f$minVerticalPadding_double =
      Field('minVerticalPadding_double', _$minVerticalPadding_double,
          opt: true);
  static double? _$minLeadingWidth_double(ListTileModel v) =>
      v.minLeadingWidth_double;
  static const Field<ListTileModel, double> _f$minLeadingWidth_double =
      Field('minLeadingWidth_double', _$minLeadingWidth_double, opt: true);
  static bool? _$enableFeedback_bool(ListTileModel v) => v.enableFeedback_bool;
  static const Field<ListTileModel, bool> _f$enableFeedback_bool =
      Field('enableFeedback_bool', _$enableFeedback_bool, opt: true);
  static ListTileTitleAlignment? _$titleAlignment_enum_listTileTitleAlignment(
          ListTileModel v) =>
      v.titleAlignment_enum_listTileTitleAlignment;
  static const Field<ListTileModel, ListTileTitleAlignment>
      _f$titleAlignment_enum_listTileTitleAlignment = Field(
          'titleAlignment_enum_listTileTitleAlignment',
          _$titleAlignment_enum_listTileTitleAlignment,
          opt: true);

  @override
  final MappableFields<ListTileModel> fields = const {
    #dense_bool: _f$dense_bool,
    #shape_shapeBorder: _f$shape_shapeBorder,
    #selectedColor_themeColorString: _f$selectedColor_themeColorString,
    #iconColor_themeColorString: _f$iconColor_themeColorString,
    #textColor_themeColorString: _f$textColor_themeColorString,
    #titleTextStyle_textStyleString: _f$titleTextStyle_textStyleString,
    #subtitleTextStyle_textStyleString: _f$subtitleTextStyle_textStyleString,
    #leadingAndTrailingTextStyle_textStyleString:
        _f$leadingAndTrailingTextStyle_textStyleString,
    #contentPadding_edgeInsets: _f$contentPadding_edgeInsets,
    #tileColor_themeColorString: _f$tileColor_themeColorString,
    #selectedTileColor_themeColorString: _f$selectedTileColor_themeColorString,
    #horizontalTitleGap_double: _f$horizontalTitleGap_double,
    #minVerticalPadding_double: _f$minVerticalPadding_double,
    #minLeadingWidth_double: _f$minLeadingWidth_double,
    #enableFeedback_bool: _f$enableFeedback_bool,
    #titleAlignment_enum_listTileTitleAlignment:
        _f$titleAlignment_enum_listTileTitleAlignment,
  };

  static ListTileModel _instantiate(DecodingData data) {
    return ListTileModel(
        dense_bool: data.dec(_f$dense_bool),
        shape_shapeBorder: data.dec(_f$shape_shapeBorder),
        selectedColor_themeColorString:
            data.dec(_f$selectedColor_themeColorString),
        iconColor_themeColorString: data.dec(_f$iconColor_themeColorString),
        textColor_themeColorString: data.dec(_f$textColor_themeColorString),
        titleTextStyle_textStyleString:
            data.dec(_f$titleTextStyle_textStyleString),
        subtitleTextStyle_textStyleString:
            data.dec(_f$subtitleTextStyle_textStyleString),
        leadingAndTrailingTextStyle_textStyleString:
            data.dec(_f$leadingAndTrailingTextStyle_textStyleString),
        contentPadding_edgeInsets: data.dec(_f$contentPadding_edgeInsets),
        tileColor_themeColorString: data.dec(_f$tileColor_themeColorString),
        selectedTileColor_themeColorString:
            data.dec(_f$selectedTileColor_themeColorString),
        horizontalTitleGap_double: data.dec(_f$horizontalTitleGap_double),
        minVerticalPadding_double: data.dec(_f$minVerticalPadding_double),
        minLeadingWidth_double: data.dec(_f$minLeadingWidth_double),
        enableFeedback_bool: data.dec(_f$enableFeedback_bool),
        titleAlignment_enum_listTileTitleAlignment:
            data.dec(_f$titleAlignment_enum_listTileTitleAlignment));
  }

  @override
  final Function instantiate = _instantiate;

  static ListTileModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ListTileModel>(map);
  }

  static ListTileModel fromJson(String json) {
    return ensureInitialized().decodeJson<ListTileModel>(json);
  }
}

mixin ListTileModelMappable {
  String toJson() {
    return ListTileModelMapper.ensureInitialized()
        .encodeJson<ListTileModel>(this as ListTileModel);
  }

  Map<String, dynamic> toMap() {
    return ListTileModelMapper.ensureInitialized()
        .encodeMap<ListTileModel>(this as ListTileModel);
  }

  ListTileModelCopyWith<ListTileModel, ListTileModel, ListTileModel>
      get copyWith => _ListTileModelCopyWithImpl(
          this as ListTileModel, $identity, $identity);
  @override
  String toString() {
    return ListTileModelMapper.ensureInitialized()
        .stringifyValue(this as ListTileModel);
  }

  @override
  bool operator ==(Object other) {
    return ListTileModelMapper.ensureInitialized()
        .equalsValue(this as ListTileModel, other);
  }

  @override
  int get hashCode {
    return ListTileModelMapper.ensureInitialized()
        .hashValue(this as ListTileModel);
  }
}

extension ListTileModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ListTileModel, $Out> {
  ListTileModelCopyWith<$R, ListTileModel, $Out> get $asListTileModel =>
      $base.as((v, t, t2) => _ListTileModelCopyWithImpl(v, t, t2));
}

abstract class ListTileModelCopyWith<$R, $In extends ListTileModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder;
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get contentPadding_edgeInsets;
  $R call(
      {bool? dense_bool,
      ShapeBorderModel? shape_shapeBorder,
      String? selectedColor_themeColorString,
      String? iconColor_themeColorString,
      String? textColor_themeColorString,
      String? titleTextStyle_textStyleString,
      String? subtitleTextStyle_textStyleString,
      String? leadingAndTrailingTextStyle_textStyleString,
      EdgeInsetsModel? contentPadding_edgeInsets,
      String? tileColor_themeColorString,
      String? selectedTileColor_themeColorString,
      double? horizontalTitleGap_double,
      double? minVerticalPadding_double,
      double? minLeadingWidth_double,
      bool? enableFeedback_bool,
      ListTileTitleAlignment? titleAlignment_enum_listTileTitleAlignment});
  ListTileModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ListTileModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ListTileModel, $Out>
    implements ListTileModelCopyWith<$R, ListTileModel, $Out> {
  _ListTileModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ListTileModel> $mapper =
      ListTileModelMapper.ensureInitialized();
  @override
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder => $value.shape_shapeBorder?.copyWith
          .$chain((v) => call(shape_shapeBorder: v));
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get contentPadding_edgeInsets =>
          $value.contentPadding_edgeInsets?.copyWith
              .$chain((v) => call(contentPadding_edgeInsets: v));
  @override
  $R call(
          {Object? dense_bool = $none,
          Object? shape_shapeBorder = $none,
          Object? selectedColor_themeColorString = $none,
          Object? iconColor_themeColorString = $none,
          Object? textColor_themeColorString = $none,
          Object? titleTextStyle_textStyleString = $none,
          Object? subtitleTextStyle_textStyleString = $none,
          Object? leadingAndTrailingTextStyle_textStyleString = $none,
          Object? contentPadding_edgeInsets = $none,
          Object? tileColor_themeColorString = $none,
          Object? selectedTileColor_themeColorString = $none,
          Object? horizontalTitleGap_double = $none,
          Object? minVerticalPadding_double = $none,
          Object? minLeadingWidth_double = $none,
          Object? enableFeedback_bool = $none,
          Object? titleAlignment_enum_listTileTitleAlignment = $none}) =>
      $apply(FieldCopyWithData({
        if (dense_bool != $none) #dense_bool: dense_bool,
        if (shape_shapeBorder != $none) #shape_shapeBorder: shape_shapeBorder,
        if (selectedColor_themeColorString != $none)
          #selectedColor_themeColorString: selectedColor_themeColorString,
        if (iconColor_themeColorString != $none)
          #iconColor_themeColorString: iconColor_themeColorString,
        if (textColor_themeColorString != $none)
          #textColor_themeColorString: textColor_themeColorString,
        if (titleTextStyle_textStyleString != $none)
          #titleTextStyle_textStyleString: titleTextStyle_textStyleString,
        if (subtitleTextStyle_textStyleString != $none)
          #subtitleTextStyle_textStyleString: subtitleTextStyle_textStyleString,
        if (leadingAndTrailingTextStyle_textStyleString != $none)
          #leadingAndTrailingTextStyle_textStyleString:
              leadingAndTrailingTextStyle_textStyleString,
        if (contentPadding_edgeInsets != $none)
          #contentPadding_edgeInsets: contentPadding_edgeInsets,
        if (tileColor_themeColorString != $none)
          #tileColor_themeColorString: tileColor_themeColorString,
        if (selectedTileColor_themeColorString != $none)
          #selectedTileColor_themeColorString:
              selectedTileColor_themeColorString,
        if (horizontalTitleGap_double != $none)
          #horizontalTitleGap_double: horizontalTitleGap_double,
        if (minVerticalPadding_double != $none)
          #minVerticalPadding_double: minVerticalPadding_double,
        if (minLeadingWidth_double != $none)
          #minLeadingWidth_double: minLeadingWidth_double,
        if (enableFeedback_bool != $none)
          #enableFeedback_bool: enableFeedback_bool,
        if (titleAlignment_enum_listTileTitleAlignment != $none)
          #titleAlignment_enum_listTileTitleAlignment:
              titleAlignment_enum_listTileTitleAlignment
      }));
  @override
  ListTileModel $make(CopyWithData data) => ListTileModel(
      dense_bool: data.get(#dense_bool, or: $value.dense_bool),
      shape_shapeBorder:
          data.get(#shape_shapeBorder, or: $value.shape_shapeBorder),
      selectedColor_themeColorString: data.get(#selectedColor_themeColorString,
          or: $value.selectedColor_themeColorString),
      iconColor_themeColorString: data.get(#iconColor_themeColorString,
          or: $value.iconColor_themeColorString),
      textColor_themeColorString: data.get(#textColor_themeColorString,
          or: $value.textColor_themeColorString),
      titleTextStyle_textStyleString: data.get(#titleTextStyle_textStyleString,
          or: $value.titleTextStyle_textStyleString),
      subtitleTextStyle_textStyleString: data.get(#subtitleTextStyle_textStyleString,
          or: $value.subtitleTextStyle_textStyleString),
      leadingAndTrailingTextStyle_textStyleString: data.get(
          #leadingAndTrailingTextStyle_textStyleString,
          or: $value.leadingAndTrailingTextStyle_textStyleString),
      contentPadding_edgeInsets: data.get(#contentPadding_edgeInsets,
          or: $value.contentPadding_edgeInsets),
      tileColor_themeColorString: data.get(#tileColor_themeColorString,
          or: $value.tileColor_themeColorString),
      selectedTileColor_themeColorString: data.get(
          #selectedTileColor_themeColorString,
          or: $value.selectedTileColor_themeColorString),
      horizontalTitleGap_double:
          data.get(#horizontalTitleGap_double, or: $value.horizontalTitleGap_double),
      minVerticalPadding_double: data.get(#minVerticalPadding_double, or: $value.minVerticalPadding_double),
      minLeadingWidth_double: data.get(#minLeadingWidth_double, or: $value.minLeadingWidth_double),
      enableFeedback_bool: data.get(#enableFeedback_bool, or: $value.enableFeedback_bool),
      titleAlignment_enum_listTileTitleAlignment: data.get(#titleAlignment_enum_listTileTitleAlignment, or: $value.titleAlignment_enum_listTileTitleAlignment));

  @override
  ListTileModelCopyWith<$R2, ListTileModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ListTileModelCopyWithImpl($value, $cast, t);
}
