// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tab_bar_model.dart';

class TabBarModelMapper extends ClassMapperBase<TabBarModel> {
  TabBarModelMapper._();

  static TabBarModelMapper? _instance;
  static TabBarModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TabBarModelMapper._());
      BoxDecorationModelMapper.ensureInitialized();
      EdgeInsetsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TabBarModel';

  static BoxDecorationModel? _$indicator_boxDecoration(TabBarModel v) =>
      v.indicator_boxDecoration;
  static const Field<TabBarModel, BoxDecorationModel>
      _f$indicator_boxDecoration = Field(
          'indicator_boxDecoration', _$indicator_boxDecoration,
          opt: true, def: const BoxDecorationModel());
  static String? _$indicatorColor_themeColorString(TabBarModel v) =>
      v.indicatorColor_themeColorString;
  static const Field<TabBarModel, String> _f$indicatorColor_themeColorString =
      Field(
          'indicatorColor_themeColorString', _$indicatorColor_themeColorString,
          opt: true);
  static String? _$dividerColor_themeColorString(TabBarModel v) =>
      v.dividerColor_themeColorString;
  static const Field<TabBarModel, String> _f$dividerColor_themeColorString =
      Field('dividerColor_themeColorString', _$dividerColor_themeColorString,
          opt: true);
  static TabBarIndicatorSize? _$indicatorSize_enum_tabBarIndicatorSize(
          TabBarModel v) =>
      v.indicatorSize_enum_tabBarIndicatorSize;
  static const Field<TabBarModel, TabBarIndicatorSize>
      _f$indicatorSize_enum_tabBarIndicatorSize = Field(
          'indicatorSize_enum_tabBarIndicatorSize',
          _$indicatorSize_enum_tabBarIndicatorSize,
          opt: true);
  static double? _$dividerHeight_double(TabBarModel v) =>
      v.dividerHeight_double;
  static const Field<TabBarModel, double> _f$dividerHeight_double =
      Field('dividerHeight_double', _$dividerHeight_double, opt: true);
  static String? _$labelColor_themeColorString(TabBarModel v) =>
      v.labelColor_themeColorString;
  static const Field<TabBarModel, String> _f$labelColor_themeColorString =
      Field('labelColor_themeColorString', _$labelColor_themeColorString,
          opt: true);
  static EdgeInsetsModel? _$labelPadding_edgeInsets(TabBarModel v) =>
      v.labelPadding_edgeInsets;
  static const Field<TabBarModel, EdgeInsetsModel> _f$labelPadding_edgeInsets =
      Field('labelPadding_edgeInsets', _$labelPadding_edgeInsets,
          opt: true, def: const EdgeInsetsModel());
  static String? _$labelStyle_textStyleString(TabBarModel v) =>
      v.labelStyle_textStyleString;
  static const Field<TabBarModel, String> _f$labelStyle_textStyleString = Field(
      'labelStyle_textStyleString', _$labelStyle_textStyleString,
      opt: true);
  static String? _$unselectedLabelColor_themeColorString(TabBarModel v) =>
      v.unselectedLabelColor_themeColorString;
  static const Field<TabBarModel, String>
      _f$unselectedLabelColor_themeColorString = Field(
          'unselectedLabelColor_themeColorString',
          _$unselectedLabelColor_themeColorString,
          opt: true);
  static String? _$unselectedLabelStyle_textStyleString(TabBarModel v) =>
      v.unselectedLabelStyle_textStyleString;
  static const Field<TabBarModel, String>
      _f$unselectedLabelStyle_textStyleString = Field(
          'unselectedLabelStyle_textStyleString',
          _$unselectedLabelStyle_textStyleString,
          opt: true);
  static String? _$overlayColor_themeColorString(TabBarModel v) =>
      v.overlayColor_themeColorString;
  static const Field<TabBarModel, String> _f$overlayColor_themeColorString =
      Field('overlayColor_themeColorString', _$overlayColor_themeColorString,
          opt: true);
  static TabAlignment? _$tabAlignment_enum_tabAlignment(TabBarModel v) =>
      v.tabAlignment_enum_tabAlignment;
  static const Field<TabBarModel, TabAlignment>
      _f$tabAlignment_enum_tabAlignment = Field(
          'tabAlignment_enum_tabAlignment', _$tabAlignment_enum_tabAlignment,
          opt: true);

  @override
  final MappableFields<TabBarModel> fields = const {
    #indicator_boxDecoration: _f$indicator_boxDecoration,
    #indicatorColor_themeColorString: _f$indicatorColor_themeColorString,
    #dividerColor_themeColorString: _f$dividerColor_themeColorString,
    #indicatorSize_enum_tabBarIndicatorSize:
        _f$indicatorSize_enum_tabBarIndicatorSize,
    #dividerHeight_double: _f$dividerHeight_double,
    #labelColor_themeColorString: _f$labelColor_themeColorString,
    #labelPadding_edgeInsets: _f$labelPadding_edgeInsets,
    #labelStyle_textStyleString: _f$labelStyle_textStyleString,
    #unselectedLabelColor_themeColorString:
        _f$unselectedLabelColor_themeColorString,
    #unselectedLabelStyle_textStyleString:
        _f$unselectedLabelStyle_textStyleString,
    #overlayColor_themeColorString: _f$overlayColor_themeColorString,
    #tabAlignment_enum_tabAlignment: _f$tabAlignment_enum_tabAlignment,
  };

  static TabBarModel _instantiate(DecodingData data) {
    return TabBarModel(
        indicator_boxDecoration: data.dec(_f$indicator_boxDecoration),
        indicatorColor_themeColorString:
            data.dec(_f$indicatorColor_themeColorString),
        dividerColor_themeColorString:
            data.dec(_f$dividerColor_themeColorString),
        indicatorSize_enum_tabBarIndicatorSize:
            data.dec(_f$indicatorSize_enum_tabBarIndicatorSize),
        dividerHeight_double: data.dec(_f$dividerHeight_double),
        labelColor_themeColorString: data.dec(_f$labelColor_themeColorString),
        labelPadding_edgeInsets: data.dec(_f$labelPadding_edgeInsets),
        labelStyle_textStyleString: data.dec(_f$labelStyle_textStyleString),
        unselectedLabelColor_themeColorString:
            data.dec(_f$unselectedLabelColor_themeColorString),
        unselectedLabelStyle_textStyleString:
            data.dec(_f$unselectedLabelStyle_textStyleString),
        overlayColor_themeColorString:
            data.dec(_f$overlayColor_themeColorString),
        tabAlignment_enum_tabAlignment:
            data.dec(_f$tabAlignment_enum_tabAlignment));
  }

  @override
  final Function instantiate = _instantiate;

  static TabBarModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TabBarModel>(map);
  }

  static TabBarModel fromJson(String json) {
    return ensureInitialized().decodeJson<TabBarModel>(json);
  }
}

mixin TabBarModelMappable {
  String toJson() {
    return TabBarModelMapper.ensureInitialized()
        .encodeJson<TabBarModel>(this as TabBarModel);
  }

  Map<String, dynamic> toMap() {
    return TabBarModelMapper.ensureInitialized()
        .encodeMap<TabBarModel>(this as TabBarModel);
  }

  TabBarModelCopyWith<TabBarModel, TabBarModel, TabBarModel> get copyWith =>
      _TabBarModelCopyWithImpl(this as TabBarModel, $identity, $identity);
  @override
  String toString() {
    return TabBarModelMapper.ensureInitialized()
        .stringifyValue(this as TabBarModel);
  }

  @override
  bool operator ==(Object other) {
    return TabBarModelMapper.ensureInitialized()
        .equalsValue(this as TabBarModel, other);
  }

  @override
  int get hashCode {
    return TabBarModelMapper.ensureInitialized().hashValue(this as TabBarModel);
  }
}

extension TabBarModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TabBarModel, $Out> {
  TabBarModelCopyWith<$R, TabBarModel, $Out> get $asTabBarModel =>
      $base.as((v, t, t2) => _TabBarModelCopyWithImpl(v, t, t2));
}

abstract class TabBarModelCopyWith<$R, $In extends TabBarModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BoxDecorationModelCopyWith<$R, BoxDecorationModel, BoxDecorationModel>?
      get indicator_boxDecoration;
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get labelPadding_edgeInsets;
  $R call(
      {BoxDecorationModel? indicator_boxDecoration,
      String? indicatorColor_themeColorString,
      String? dividerColor_themeColorString,
      TabBarIndicatorSize? indicatorSize_enum_tabBarIndicatorSize,
      double? dividerHeight_double,
      String? labelColor_themeColorString,
      EdgeInsetsModel? labelPadding_edgeInsets,
      String? labelStyle_textStyleString,
      String? unselectedLabelColor_themeColorString,
      String? unselectedLabelStyle_textStyleString,
      String? overlayColor_themeColorString,
      TabAlignment? tabAlignment_enum_tabAlignment});
  TabBarModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TabBarModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TabBarModel, $Out>
    implements TabBarModelCopyWith<$R, TabBarModel, $Out> {
  _TabBarModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TabBarModel> $mapper =
      TabBarModelMapper.ensureInitialized();
  @override
  BoxDecorationModelCopyWith<$R, BoxDecorationModel, BoxDecorationModel>?
      get indicator_boxDecoration => $value.indicator_boxDecoration?.copyWith
          .$chain((v) => call(indicator_boxDecoration: v));
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get labelPadding_edgeInsets => $value.labelPadding_edgeInsets?.copyWith
          .$chain((v) => call(labelPadding_edgeInsets: v));
  @override
  $R call(
          {Object? indicator_boxDecoration = $none,
          Object? indicatorColor_themeColorString = $none,
          Object? dividerColor_themeColorString = $none,
          Object? indicatorSize_enum_tabBarIndicatorSize = $none,
          Object? dividerHeight_double = $none,
          Object? labelColor_themeColorString = $none,
          Object? labelPadding_edgeInsets = $none,
          Object? labelStyle_textStyleString = $none,
          Object? unselectedLabelColor_themeColorString = $none,
          Object? unselectedLabelStyle_textStyleString = $none,
          Object? overlayColor_themeColorString = $none,
          Object? tabAlignment_enum_tabAlignment = $none}) =>
      $apply(FieldCopyWithData({
        if (indicator_boxDecoration != $none)
          #indicator_boxDecoration: indicator_boxDecoration,
        if (indicatorColor_themeColorString != $none)
          #indicatorColor_themeColorString: indicatorColor_themeColorString,
        if (dividerColor_themeColorString != $none)
          #dividerColor_themeColorString: dividerColor_themeColorString,
        if (indicatorSize_enum_tabBarIndicatorSize != $none)
          #indicatorSize_enum_tabBarIndicatorSize:
              indicatorSize_enum_tabBarIndicatorSize,
        if (dividerHeight_double != $none)
          #dividerHeight_double: dividerHeight_double,
        if (labelColor_themeColorString != $none)
          #labelColor_themeColorString: labelColor_themeColorString,
        if (labelPadding_edgeInsets != $none)
          #labelPadding_edgeInsets: labelPadding_edgeInsets,
        if (labelStyle_textStyleString != $none)
          #labelStyle_textStyleString: labelStyle_textStyleString,
        if (unselectedLabelColor_themeColorString != $none)
          #unselectedLabelColor_themeColorString:
              unselectedLabelColor_themeColorString,
        if (unselectedLabelStyle_textStyleString != $none)
          #unselectedLabelStyle_textStyleString:
              unselectedLabelStyle_textStyleString,
        if (overlayColor_themeColorString != $none)
          #overlayColor_themeColorString: overlayColor_themeColorString,
        if (tabAlignment_enum_tabAlignment != $none)
          #tabAlignment_enum_tabAlignment: tabAlignment_enum_tabAlignment
      }));
  @override
  TabBarModel $make(CopyWithData data) => TabBarModel(
      indicator_boxDecoration: data.get(#indicator_boxDecoration,
          or: $value.indicator_boxDecoration),
      indicatorColor_themeColorString: data.get(#indicatorColor_themeColorString,
          or: $value.indicatorColor_themeColorString),
      dividerColor_themeColorString: data.get(#dividerColor_themeColorString,
          or: $value.dividerColor_themeColorString),
      indicatorSize_enum_tabBarIndicatorSize: data.get(
          #indicatorSize_enum_tabBarIndicatorSize,
          or: $value.indicatorSize_enum_tabBarIndicatorSize),
      dividerHeight_double:
          data.get(#dividerHeight_double, or: $value.dividerHeight_double),
      labelColor_themeColorString: data.get(#labelColor_themeColorString,
          or: $value.labelColor_themeColorString),
      labelPadding_edgeInsets: data.get(#labelPadding_edgeInsets,
          or: $value.labelPadding_edgeInsets),
      labelStyle_textStyleString: data.get(#labelStyle_textStyleString,
          or: $value.labelStyle_textStyleString),
      unselectedLabelColor_themeColorString: data.get(#unselectedLabelColor_themeColorString,
          or: $value.unselectedLabelColor_themeColorString),
      unselectedLabelStyle_textStyleString: data.get(#unselectedLabelStyle_textStyleString,
          or: $value.unselectedLabelStyle_textStyleString),
      overlayColor_themeColorString: data.get(#overlayColor_themeColorString, or: $value.overlayColor_themeColorString),
      tabAlignment_enum_tabAlignment: data.get(#tabAlignment_enum_tabAlignment, or: $value.tabAlignment_enum_tabAlignment));

  @override
  TabBarModelCopyWith<$R2, TabBarModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TabBarModelCopyWithImpl($value, $cast, t);
}
