// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'scrollbar_model.dart';

class ScrollbarModelMapper extends ClassMapperBase<ScrollbarModel> {
  ScrollbarModelMapper._();

  static ScrollbarModelMapper? _instance;
  static ScrollbarModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScrollbarModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ScrollbarModel';

  static bool? _$thumbVisibility_bool(ScrollbarModel v) =>
      v.thumbVisibility_bool;
  static const Field<ScrollbarModel, bool> _f$thumbVisibility_bool =
      Field('thumbVisibility_bool', _$thumbVisibility_bool, opt: true);
  static double? _$thickness_double(ScrollbarModel v) => v.thickness_double;
  static const Field<ScrollbarModel, double> _f$thickness_double =
      Field('thickness_double', _$thickness_double, opt: true);
  static bool? _$trackVisibility_bool(ScrollbarModel v) =>
      v.trackVisibility_bool;
  static const Field<ScrollbarModel, bool> _f$trackVisibility_bool =
      Field('trackVisibility_bool', _$trackVisibility_bool, opt: true);
  static double? _$radius_double(ScrollbarModel v) => v.radius_double;
  static const Field<ScrollbarModel, double> _f$radius_double =
      Field('radius_double', _$radius_double, opt: true);
  static String? _$thumbColor_themeColorString(ScrollbarModel v) =>
      v.thumbColor_themeColorString;
  static const Field<ScrollbarModel, String> _f$thumbColor_themeColorString =
      Field('thumbColor_themeColorString', _$thumbColor_themeColorString,
          opt: true);
  static String? _$trackColor_themeColorString(ScrollbarModel v) =>
      v.trackColor_themeColorString;
  static const Field<ScrollbarModel, String> _f$trackColor_themeColorString =
      Field('trackColor_themeColorString', _$trackColor_themeColorString,
          opt: true);
  static String? _$trackBorderColor_themeColorString(ScrollbarModel v) =>
      v.trackBorderColor_themeColorString;
  static const Field<ScrollbarModel, String>
      _f$trackBorderColor_themeColorString = Field(
          'trackBorderColor_themeColorString',
          _$trackBorderColor_themeColorString,
          opt: true);
  static double? _$crossAxisMargin_double(ScrollbarModel v) =>
      v.crossAxisMargin_double;
  static const Field<ScrollbarModel, double> _f$crossAxisMargin_double =
      Field('crossAxisMargin_double', _$crossAxisMargin_double, opt: true);
  static double? _$mainAxisMargin_double(ScrollbarModel v) =>
      v.mainAxisMargin_double;
  static const Field<ScrollbarModel, double> _f$mainAxisMargin_double =
      Field('mainAxisMargin_double', _$mainAxisMargin_double, opt: true);
  static double? _$minThumbLength_double(ScrollbarModel v) =>
      v.minThumbLength_double;
  static const Field<ScrollbarModel, double> _f$minThumbLength_double =
      Field('minThumbLength_double', _$minThumbLength_double, opt: true);
  static bool? _$interactive_bool(ScrollbarModel v) => v.interactive_bool;
  static const Field<ScrollbarModel, bool> _f$interactive_bool =
      Field('interactive_bool', _$interactive_bool, opt: true);

  @override
  final MappableFields<ScrollbarModel> fields = const {
    #thumbVisibility_bool: _f$thumbVisibility_bool,
    #thickness_double: _f$thickness_double,
    #trackVisibility_bool: _f$trackVisibility_bool,
    #radius_double: _f$radius_double,
    #thumbColor_themeColorString: _f$thumbColor_themeColorString,
    #trackColor_themeColorString: _f$trackColor_themeColorString,
    #trackBorderColor_themeColorString: _f$trackBorderColor_themeColorString,
    #crossAxisMargin_double: _f$crossAxisMargin_double,
    #mainAxisMargin_double: _f$mainAxisMargin_double,
    #minThumbLength_double: _f$minThumbLength_double,
    #interactive_bool: _f$interactive_bool,
  };

  static ScrollbarModel _instantiate(DecodingData data) {
    return ScrollbarModel(
        thumbVisibility_bool: data.dec(_f$thumbVisibility_bool),
        thickness_double: data.dec(_f$thickness_double),
        trackVisibility_bool: data.dec(_f$trackVisibility_bool),
        radius_double: data.dec(_f$radius_double),
        thumbColor_themeColorString: data.dec(_f$thumbColor_themeColorString),
        trackColor_themeColorString: data.dec(_f$trackColor_themeColorString),
        trackBorderColor_themeColorString:
            data.dec(_f$trackBorderColor_themeColorString),
        crossAxisMargin_double: data.dec(_f$crossAxisMargin_double),
        mainAxisMargin_double: data.dec(_f$mainAxisMargin_double),
        minThumbLength_double: data.dec(_f$minThumbLength_double),
        interactive_bool: data.dec(_f$interactive_bool));
  }

  @override
  final Function instantiate = _instantiate;

  static ScrollbarModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScrollbarModel>(map);
  }

  static ScrollbarModel fromJson(String json) {
    return ensureInitialized().decodeJson<ScrollbarModel>(json);
  }
}

mixin ScrollbarModelMappable {
  String toJson() {
    return ScrollbarModelMapper.ensureInitialized()
        .encodeJson<ScrollbarModel>(this as ScrollbarModel);
  }

  Map<String, dynamic> toMap() {
    return ScrollbarModelMapper.ensureInitialized()
        .encodeMap<ScrollbarModel>(this as ScrollbarModel);
  }

  ScrollbarModelCopyWith<ScrollbarModel, ScrollbarModel, ScrollbarModel>
      get copyWith => _ScrollbarModelCopyWithImpl(
          this as ScrollbarModel, $identity, $identity);
  @override
  String toString() {
    return ScrollbarModelMapper.ensureInitialized()
        .stringifyValue(this as ScrollbarModel);
  }

  @override
  bool operator ==(Object other) {
    return ScrollbarModelMapper.ensureInitialized()
        .equalsValue(this as ScrollbarModel, other);
  }

  @override
  int get hashCode {
    return ScrollbarModelMapper.ensureInitialized()
        .hashValue(this as ScrollbarModel);
  }
}

extension ScrollbarModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ScrollbarModel, $Out> {
  ScrollbarModelCopyWith<$R, ScrollbarModel, $Out> get $asScrollbarModel =>
      $base.as((v, t, t2) => _ScrollbarModelCopyWithImpl(v, t, t2));
}

abstract class ScrollbarModelCopyWith<$R, $In extends ScrollbarModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? thumbVisibility_bool,
      double? thickness_double,
      bool? trackVisibility_bool,
      double? radius_double,
      String? thumbColor_themeColorString,
      String? trackColor_themeColorString,
      String? trackBorderColor_themeColorString,
      double? crossAxisMargin_double,
      double? mainAxisMargin_double,
      double? minThumbLength_double,
      bool? interactive_bool});
  ScrollbarModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ScrollbarModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ScrollbarModel, $Out>
    implements ScrollbarModelCopyWith<$R, ScrollbarModel, $Out> {
  _ScrollbarModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ScrollbarModel> $mapper =
      ScrollbarModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? thumbVisibility_bool = $none,
          Object? thickness_double = $none,
          Object? trackVisibility_bool = $none,
          Object? radius_double = $none,
          Object? thumbColor_themeColorString = $none,
          Object? trackColor_themeColorString = $none,
          Object? trackBorderColor_themeColorString = $none,
          Object? crossAxisMargin_double = $none,
          Object? mainAxisMargin_double = $none,
          Object? minThumbLength_double = $none,
          Object? interactive_bool = $none}) =>
      $apply(FieldCopyWithData({
        if (thumbVisibility_bool != $none)
          #thumbVisibility_bool: thumbVisibility_bool,
        if (thickness_double != $none) #thickness_double: thickness_double,
        if (trackVisibility_bool != $none)
          #trackVisibility_bool: trackVisibility_bool,
        if (radius_double != $none) #radius_double: radius_double,
        if (thumbColor_themeColorString != $none)
          #thumbColor_themeColorString: thumbColor_themeColorString,
        if (trackColor_themeColorString != $none)
          #trackColor_themeColorString: trackColor_themeColorString,
        if (trackBorderColor_themeColorString != $none)
          #trackBorderColor_themeColorString: trackBorderColor_themeColorString,
        if (crossAxisMargin_double != $none)
          #crossAxisMargin_double: crossAxisMargin_double,
        if (mainAxisMargin_double != $none)
          #mainAxisMargin_double: mainAxisMargin_double,
        if (minThumbLength_double != $none)
          #minThumbLength_double: minThumbLength_double,
        if (interactive_bool != $none) #interactive_bool: interactive_bool
      }));
  @override
  ScrollbarModel $make(CopyWithData data) => ScrollbarModel(
      thumbVisibility_bool:
          data.get(#thumbVisibility_bool, or: $value.thumbVisibility_bool),
      thickness_double:
          data.get(#thickness_double, or: $value.thickness_double),
      trackVisibility_bool:
          data.get(#trackVisibility_bool, or: $value.trackVisibility_bool),
      radius_double: data.get(#radius_double, or: $value.radius_double),
      thumbColor_themeColorString: data.get(#thumbColor_themeColorString,
          or: $value.thumbColor_themeColorString),
      trackColor_themeColorString: data.get(#trackColor_themeColorString,
          or: $value.trackColor_themeColorString),
      trackBorderColor_themeColorString: data.get(
          #trackBorderColor_themeColorString,
          or: $value.trackBorderColor_themeColorString),
      crossAxisMargin_double:
          data.get(#crossAxisMargin_double, or: $value.crossAxisMargin_double),
      mainAxisMargin_double:
          data.get(#mainAxisMargin_double, or: $value.mainAxisMargin_double),
      minThumbLength_double:
          data.get(#minThumbLength_double, or: $value.minThumbLength_double),
      interactive_bool:
          data.get(#interactive_bool, or: $value.interactive_bool));

  @override
  ScrollbarModelCopyWith<$R2, ScrollbarModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ScrollbarModelCopyWithImpl($value, $cast, t);
}
