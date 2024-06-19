// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'popup_menu_model.dart';

class PopupMenuPositionTypeMapper extends EnumMapper<PopupMenuPositionType> {
  PopupMenuPositionTypeMapper._();

  static PopupMenuPositionTypeMapper? _instance;
  static PopupMenuPositionTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PopupMenuPositionTypeMapper._());
    }
    return _instance!;
  }

  static PopupMenuPositionType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PopupMenuPositionType decode(dynamic value) {
    switch (value) {
      case 'over':
        return PopupMenuPositionType.over;
      case 'under':
        return PopupMenuPositionType.under;
      default:
        return PopupMenuPositionType.values[1];
    }
  }

  @override
  dynamic encode(PopupMenuPositionType self) {
    switch (self) {
      case PopupMenuPositionType.over:
        return 'over';
      case PopupMenuPositionType.under:
        return 'under';
    }
  }
}

extension PopupMenuPositionTypeMapperExtension on PopupMenuPositionType {
  String toValue() {
    PopupMenuPositionTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PopupMenuPositionType>(this)
        as String;
  }
}

class PopupMenuModelMapper extends ClassMapperBase<PopupMenuModel> {
  PopupMenuModelMapper._();

  static PopupMenuModelMapper? _instance;
  static PopupMenuModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PopupMenuModelMapper._());
      ShapeBorderModelMapper.ensureInitialized();
      PopupMenuPositionTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PopupMenuModel';

  static String? _$color_themeColorString(PopupMenuModel v) =>
      v.color_themeColorString;
  static const Field<PopupMenuModel, String> _f$color_themeColorString =
      Field('color_themeColorString', _$color_themeColorString, opt: true);
  static ShapeBorderModel? _$shape_shapeBorder(PopupMenuModel v) =>
      v.shape_shapeBorder;
  static const Field<PopupMenuModel, ShapeBorderModel> _f$shape_shapeBorder =
      Field('shape_shapeBorder', _$shape_shapeBorder, opt: true);
  static double? _$elevation_double(PopupMenuModel v) => v.elevation_double;
  static const Field<PopupMenuModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static String? _$shadowColor_themeColorString(PopupMenuModel v) =>
      v.shadowColor_themeColorString;
  static const Field<PopupMenuModel, String> _f$shadowColor_themeColorString =
      Field('shadowColor_themeColorString', _$shadowColor_themeColorString,
          opt: true);
  static String? _$surfaceTintColor_themeColorString(PopupMenuModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<PopupMenuModel, String>
      _f$surfaceTintColor_themeColorString = Field(
          'surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          opt: true);
  static String? _$textStyle_textStyleString(PopupMenuModel v) =>
      v.textStyle_textStyleString;
  static const Field<PopupMenuModel, String> _f$textStyle_textStyleString =
      Field('textStyle_textStyleString', _$textStyle_textStyleString,
          opt: true);
  static String? _$labelTextStyle_textStyleString(PopupMenuModel v) =>
      v.labelTextStyle_textStyleString;
  static const Field<PopupMenuModel, String> _f$labelTextStyle_textStyleString =
      Field('labelTextStyle_textStyleString', _$labelTextStyle_textStyleString,
          opt: true);
  static bool? _$enableFeedback_bool(PopupMenuModel v) => v.enableFeedback_bool;
  static const Field<PopupMenuModel, bool> _f$enableFeedback_bool =
      Field('enableFeedback_bool', _$enableFeedback_bool, opt: true);
  static PopupMenuPositionType _$position(PopupMenuModel v) => v.position;
  static const Field<PopupMenuModel, PopupMenuPositionType> _f$position = Field(
      'position', _$position,
      opt: true, def: PopupMenuPositionType.under);
  static String? _$iconColor_themeColorString(PopupMenuModel v) =>
      v.iconColor_themeColorString;
  static const Field<PopupMenuModel, String> _f$iconColor_themeColorString =
      Field('iconColor_themeColorString', _$iconColor_themeColorString,
          opt: true);
  static double? _$iconSize_double(PopupMenuModel v) => v.iconSize_double;
  static const Field<PopupMenuModel, double> _f$iconSize_double =
      Field('iconSize_double', _$iconSize_double, opt: true);

  @override
  final MappableFields<PopupMenuModel> fields = const {
    #color_themeColorString: _f$color_themeColorString,
    #shape_shapeBorder: _f$shape_shapeBorder,
    #elevation_double: _f$elevation_double,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #textStyle_textStyleString: _f$textStyle_textStyleString,
    #labelTextStyle_textStyleString: _f$labelTextStyle_textStyleString,
    #enableFeedback_bool: _f$enableFeedback_bool,
    #position: _f$position,
    #iconColor_themeColorString: _f$iconColor_themeColorString,
    #iconSize_double: _f$iconSize_double,
  };

  static PopupMenuModel _instantiate(DecodingData data) {
    return PopupMenuModel(
        color_themeColorString: data.dec(_f$color_themeColorString),
        shape_shapeBorder: data.dec(_f$shape_shapeBorder),
        elevation_double: data.dec(_f$elevation_double),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        textStyle_textStyleString: data.dec(_f$textStyle_textStyleString),
        labelTextStyle_textStyleString:
            data.dec(_f$labelTextStyle_textStyleString),
        enableFeedback_bool: data.dec(_f$enableFeedback_bool),
        position: data.dec(_f$position),
        iconColor_themeColorString: data.dec(_f$iconColor_themeColorString),
        iconSize_double: data.dec(_f$iconSize_double));
  }

  @override
  final Function instantiate = _instantiate;

  static PopupMenuModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PopupMenuModel>(map);
  }

  static PopupMenuModel fromJson(String json) {
    return ensureInitialized().decodeJson<PopupMenuModel>(json);
  }
}

mixin PopupMenuModelMappable {
  String toJson() {
    return PopupMenuModelMapper.ensureInitialized()
        .encodeJson<PopupMenuModel>(this as PopupMenuModel);
  }

  Map<String, dynamic> toMap() {
    return PopupMenuModelMapper.ensureInitialized()
        .encodeMap<PopupMenuModel>(this as PopupMenuModel);
  }

  PopupMenuModelCopyWith<PopupMenuModel, PopupMenuModel, PopupMenuModel>
      get copyWith => _PopupMenuModelCopyWithImpl(
          this as PopupMenuModel, $identity, $identity);
  @override
  String toString() {
    return PopupMenuModelMapper.ensureInitialized()
        .stringifyValue(this as PopupMenuModel);
  }

  @override
  bool operator ==(Object other) {
    return PopupMenuModelMapper.ensureInitialized()
        .equalsValue(this as PopupMenuModel, other);
  }

  @override
  int get hashCode {
    return PopupMenuModelMapper.ensureInitialized()
        .hashValue(this as PopupMenuModel);
  }
}

extension PopupMenuModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PopupMenuModel, $Out> {
  PopupMenuModelCopyWith<$R, PopupMenuModel, $Out> get $asPopupMenuModel =>
      $base.as((v, t, t2) => _PopupMenuModelCopyWithImpl(v, t, t2));
}

abstract class PopupMenuModelCopyWith<$R, $In extends PopupMenuModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder;
  $R call(
      {String? color_themeColorString,
      ShapeBorderModel? shape_shapeBorder,
      double? elevation_double,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      String? textStyle_textStyleString,
      String? labelTextStyle_textStyleString,
      bool? enableFeedback_bool,
      PopupMenuPositionType? position,
      String? iconColor_themeColorString,
      double? iconSize_double});
  PopupMenuModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PopupMenuModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PopupMenuModel, $Out>
    implements PopupMenuModelCopyWith<$R, PopupMenuModel, $Out> {
  _PopupMenuModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PopupMenuModel> $mapper =
      PopupMenuModelMapper.ensureInitialized();
  @override
  ShapeBorderModelCopyWith<$R, ShapeBorderModel, ShapeBorderModel>?
      get shape_shapeBorder => $value.shape_shapeBorder?.copyWith
          .$chain((v) => call(shape_shapeBorder: v));
  @override
  $R call(
          {Object? color_themeColorString = $none,
          Object? shape_shapeBorder = $none,
          Object? elevation_double = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? textStyle_textStyleString = $none,
          Object? labelTextStyle_textStyleString = $none,
          Object? enableFeedback_bool = $none,
          PopupMenuPositionType? position,
          Object? iconColor_themeColorString = $none,
          Object? iconSize_double = $none}) =>
      $apply(FieldCopyWithData({
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (shape_shapeBorder != $none) #shape_shapeBorder: shape_shapeBorder,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (textStyle_textStyleString != $none)
          #textStyle_textStyleString: textStyle_textStyleString,
        if (labelTextStyle_textStyleString != $none)
          #labelTextStyle_textStyleString: labelTextStyle_textStyleString,
        if (enableFeedback_bool != $none)
          #enableFeedback_bool: enableFeedback_bool,
        if (position != null) #position: position,
        if (iconColor_themeColorString != $none)
          #iconColor_themeColorString: iconColor_themeColorString,
        if (iconSize_double != $none) #iconSize_double: iconSize_double
      }));
  @override
  PopupMenuModel $make(CopyWithData data) => PopupMenuModel(
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      shape_shapeBorder:
          data.get(#shape_shapeBorder, or: $value.shape_shapeBorder),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      textStyle_textStyleString: data.get(#textStyle_textStyleString,
          or: $value.textStyle_textStyleString),
      labelTextStyle_textStyleString: data.get(#labelTextStyle_textStyleString,
          or: $value.labelTextStyle_textStyleString),
      enableFeedback_bool:
          data.get(#enableFeedback_bool, or: $value.enableFeedback_bool),
      position: data.get(#position, or: $value.position),
      iconColor_themeColorString: data.get(#iconColor_themeColorString,
          or: $value.iconColor_themeColorString),
      iconSize_double: data.get(#iconSize_double, or: $value.iconSize_double));

  @override
  PopupMenuModelCopyWith<$R2, PopupMenuModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PopupMenuModelCopyWithImpl($value, $cast, t);
}
