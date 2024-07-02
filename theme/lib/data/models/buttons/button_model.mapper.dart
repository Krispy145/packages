// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'button_model.dart';

class ButtonModelTypeMapper extends EnumMapper<ButtonModelType> {
  ButtonModelTypeMapper._();

  static ButtonModelTypeMapper? _instance;
  static ButtonModelTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ButtonModelTypeMapper._());
    }
    return _instance!;
  }

  static ButtonModelType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ButtonModelType decode(dynamic value) {
    switch (value) {
      case 'elevated':
        return ButtonModelType.elevated;
      case 'outlined':
        return ButtonModelType.outlined;
      case 'text':
        return ButtonModelType.text;
      case 'toggle':
        return ButtonModelType.toggle;
      case 'icon':
        return ButtonModelType.icon;
      case 'filled':
        return ButtonModelType.filled;
      case 'floating':
        return ButtonModelType.floating;
      case 'menu':
        return ButtonModelType.menu;
      case 'segmented':
        return ButtonModelType.segmented;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ButtonModelType self) {
    switch (self) {
      case ButtonModelType.elevated:
        return 'elevated';
      case ButtonModelType.outlined:
        return 'outlined';
      case ButtonModelType.text:
        return 'text';
      case ButtonModelType.toggle:
        return 'toggle';
      case ButtonModelType.icon:
        return 'icon';
      case ButtonModelType.filled:
        return 'filled';
      case ButtonModelType.floating:
        return 'floating';
      case ButtonModelType.menu:
        return 'menu';
      case ButtonModelType.segmented:
        return 'segmented';
    }
  }
}

extension ButtonModelTypeMapperExtension on ButtonModelType {
  String toValue() {
    ButtonModelTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ButtonModelType>(this) as String;
  }
}

class ButtonModelMapper extends ClassMapperBase<ButtonModel> {
  ButtonModelMapper._();

  static ButtonModelMapper? _instance;
  static ButtonModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ButtonModelMapper._());
      EdgeInsetsModelMapper.ensureInitialized();
      BorderSideModelMapper.ensureInitialized();
      OutlinedBorderModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ButtonModel';

  static String? _$textStyle_textStyleString(ButtonModel v) =>
      v.textStyle_textStyleString;
  static const Field<ButtonModel, String> _f$textStyle_textStyleString = Field(
      'textStyle_textStyleString', _$textStyle_textStyleString,
      opt: true);
  static String? _$backgroundColor_themeColorString(ButtonModel v) =>
      v.backgroundColor_themeColorString;
  static const Field<ButtonModel, String> _f$backgroundColor_themeColorString =
      Field('backgroundColor_themeColorString',
          _$backgroundColor_themeColorString,
          opt: true);
  static String? _$foregroundColor_themeColorString(ButtonModel v) =>
      v.foregroundColor_themeColorString;
  static const Field<ButtonModel, String> _f$foregroundColor_themeColorString =
      Field('foregroundColor_themeColorString',
          _$foregroundColor_themeColorString,
          opt: true);
  static String? _$overlayColor_themeColorString(ButtonModel v) =>
      v.overlayColor_themeColorString;
  static const Field<ButtonModel, String> _f$overlayColor_themeColorString =
      Field('overlayColor_themeColorString', _$overlayColor_themeColorString,
          opt: true);
  static String? _$shadowColor_themeColorString(ButtonModel v) =>
      v.shadowColor_themeColorString;
  static const Field<ButtonModel, String> _f$shadowColor_themeColorString =
      Field('shadowColor_themeColorString', _$shadowColor_themeColorString,
          opt: true);
  static String? _$surfaceTintColor_themeColorString(ButtonModel v) =>
      v.surfaceTintColor_themeColorString;
  static const Field<ButtonModel, String> _f$surfaceTintColor_themeColorString =
      Field('surfaceTintColor_themeColorString',
          _$surfaceTintColor_themeColorString,
          opt: true);
  static double? _$elevation_double(ButtonModel v) => v.elevation_double;
  static const Field<ButtonModel, double> _f$elevation_double =
      Field('elevation_double', _$elevation_double, opt: true);
  static EdgeInsetsModel? _$padding_edgeInsets(ButtonModel v) =>
      v.padding_edgeInsets;
  static const Field<ButtonModel, EdgeInsetsModel> _f$padding_edgeInsets =
      Field('padding_edgeInsets', _$padding_edgeInsets,
          opt: true,
          def: const EdgeInsetsModel(
              left_double: 16,
              right_double: 16,
              top_double: 4,
              bottom_double: 4));
  static String? _$iconColor_themeColorString(ButtonModel v) =>
      v.iconColor_themeColorString;
  static const Field<ButtonModel, String> _f$iconColor_themeColorString = Field(
      'iconColor_themeColorString', _$iconColor_themeColorString,
      opt: true);
  static double? _$iconSize_double(ButtonModel v) => v.iconSize_double;
  static const Field<ButtonModel, double> _f$iconSize_double =
      Field('iconSize_double', _$iconSize_double, opt: true);
  static BorderSideModel? _$side_borderSide(ButtonModel v) => v.side_borderSide;
  static const Field<ButtonModel, BorderSideModel> _f$side_borderSide =
      Field('side_borderSide', _$side_borderSide, opt: true);
  static OutlinedBorderModel? _$shape_outlinedBorder(ButtonModel v) =>
      v.shape_outlinedBorder;
  static const Field<ButtonModel, OutlinedBorderModel> _f$shape_outlinedBorder =
      Field('shape_outlinedBorder', _$shape_outlinedBorder, opt: true);

  @override
  final MappableFields<ButtonModel> fields = const {
    #textStyle_textStyleString: _f$textStyle_textStyleString,
    #backgroundColor_themeColorString: _f$backgroundColor_themeColorString,
    #foregroundColor_themeColorString: _f$foregroundColor_themeColorString,
    #overlayColor_themeColorString: _f$overlayColor_themeColorString,
    #shadowColor_themeColorString: _f$shadowColor_themeColorString,
    #surfaceTintColor_themeColorString: _f$surfaceTintColor_themeColorString,
    #elevation_double: _f$elevation_double,
    #padding_edgeInsets: _f$padding_edgeInsets,
    #iconColor_themeColorString: _f$iconColor_themeColorString,
    #iconSize_double: _f$iconSize_double,
    #side_borderSide: _f$side_borderSide,
    #shape_outlinedBorder: _f$shape_outlinedBorder,
  };

  static ButtonModel _instantiate(DecodingData data) {
    return ButtonModel(
        textStyle_textStyleString: data.dec(_f$textStyle_textStyleString),
        backgroundColor_themeColorString:
            data.dec(_f$backgroundColor_themeColorString),
        foregroundColor_themeColorString:
            data.dec(_f$foregroundColor_themeColorString),
        overlayColor_themeColorString:
            data.dec(_f$overlayColor_themeColorString),
        shadowColor_themeColorString: data.dec(_f$shadowColor_themeColorString),
        surfaceTintColor_themeColorString:
            data.dec(_f$surfaceTintColor_themeColorString),
        elevation_double: data.dec(_f$elevation_double),
        padding_edgeInsets: data.dec(_f$padding_edgeInsets),
        iconColor_themeColorString: data.dec(_f$iconColor_themeColorString),
        iconSize_double: data.dec(_f$iconSize_double),
        side_borderSide: data.dec(_f$side_borderSide),
        shape_outlinedBorder: data.dec(_f$shape_outlinedBorder));
  }

  @override
  final Function instantiate = _instantiate;

  static ButtonModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ButtonModel>(map);
  }

  static ButtonModel fromJson(String json) {
    return ensureInitialized().decodeJson<ButtonModel>(json);
  }
}

mixin ButtonModelMappable {
  String toJson() {
    return ButtonModelMapper.ensureInitialized()
        .encodeJson<ButtonModel>(this as ButtonModel);
  }

  Map<String, dynamic> toMap() {
    return ButtonModelMapper.ensureInitialized()
        .encodeMap<ButtonModel>(this as ButtonModel);
  }

  ButtonModelCopyWith<ButtonModel, ButtonModel, ButtonModel> get copyWith =>
      _ButtonModelCopyWithImpl(this as ButtonModel, $identity, $identity);
  @override
  String toString() {
    return ButtonModelMapper.ensureInitialized()
        .stringifyValue(this as ButtonModel);
  }

  @override
  bool operator ==(Object other) {
    return ButtonModelMapper.ensureInitialized()
        .equalsValue(this as ButtonModel, other);
  }

  @override
  int get hashCode {
    return ButtonModelMapper.ensureInitialized().hashValue(this as ButtonModel);
  }
}

extension ButtonModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ButtonModel, $Out> {
  ButtonModelCopyWith<$R, ButtonModel, $Out> get $asButtonModel =>
      $base.as((v, t, t2) => _ButtonModelCopyWithImpl(v, t, t2));
}

abstract class ButtonModelCopyWith<$R, $In extends ButtonModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets;
  BorderSideModelCopyWith<$R, BorderSideModel, BorderSideModel>?
      get side_borderSide;
  OutlinedBorderModelCopyWith<$R, OutlinedBorderModel, OutlinedBorderModel>?
      get shape_outlinedBorder;
  $R call(
      {String? textStyle_textStyleString,
      String? backgroundColor_themeColorString,
      String? foregroundColor_themeColorString,
      String? overlayColor_themeColorString,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      double? elevation_double,
      EdgeInsetsModel? padding_edgeInsets,
      String? iconColor_themeColorString,
      double? iconSize_double,
      BorderSideModel? side_borderSide,
      OutlinedBorderModel? shape_outlinedBorder});
  ButtonModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ButtonModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ButtonModel, $Out>
    implements ButtonModelCopyWith<$R, ButtonModel, $Out> {
  _ButtonModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ButtonModel> $mapper =
      ButtonModelMapper.ensureInitialized();
  @override
  EdgeInsetsModelCopyWith<$R, EdgeInsetsModel, EdgeInsetsModel>?
      get padding_edgeInsets => $value.padding_edgeInsets?.copyWith
          .$chain((v) => call(padding_edgeInsets: v));
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
          {Object? textStyle_textStyleString = $none,
          Object? backgroundColor_themeColorString = $none,
          Object? foregroundColor_themeColorString = $none,
          Object? overlayColor_themeColorString = $none,
          Object? shadowColor_themeColorString = $none,
          Object? surfaceTintColor_themeColorString = $none,
          Object? elevation_double = $none,
          Object? padding_edgeInsets = $none,
          Object? iconColor_themeColorString = $none,
          Object? iconSize_double = $none,
          Object? side_borderSide = $none,
          Object? shape_outlinedBorder = $none}) =>
      $apply(FieldCopyWithData({
        if (textStyle_textStyleString != $none)
          #textStyle_textStyleString: textStyle_textStyleString,
        if (backgroundColor_themeColorString != $none)
          #backgroundColor_themeColorString: backgroundColor_themeColorString,
        if (foregroundColor_themeColorString != $none)
          #foregroundColor_themeColorString: foregroundColor_themeColorString,
        if (overlayColor_themeColorString != $none)
          #overlayColor_themeColorString: overlayColor_themeColorString,
        if (shadowColor_themeColorString != $none)
          #shadowColor_themeColorString: shadowColor_themeColorString,
        if (surfaceTintColor_themeColorString != $none)
          #surfaceTintColor_themeColorString: surfaceTintColor_themeColorString,
        if (elevation_double != $none) #elevation_double: elevation_double,
        if (padding_edgeInsets != $none)
          #padding_edgeInsets: padding_edgeInsets,
        if (iconColor_themeColorString != $none)
          #iconColor_themeColorString: iconColor_themeColorString,
        if (iconSize_double != $none) #iconSize_double: iconSize_double,
        if (side_borderSide != $none) #side_borderSide: side_borderSide,
        if (shape_outlinedBorder != $none)
          #shape_outlinedBorder: shape_outlinedBorder
      }));
  @override
  ButtonModel $make(CopyWithData data) => ButtonModel(
      textStyle_textStyleString: data.get(#textStyle_textStyleString,
          or: $value.textStyle_textStyleString),
      backgroundColor_themeColorString: data.get(#backgroundColor_themeColorString,
          or: $value.backgroundColor_themeColorString),
      foregroundColor_themeColorString: data.get(
          #foregroundColor_themeColorString,
          or: $value.foregroundColor_themeColorString),
      overlayColor_themeColorString: data.get(#overlayColor_themeColorString,
          or: $value.overlayColor_themeColorString),
      shadowColor_themeColorString: data.get(#shadowColor_themeColorString,
          or: $value.shadowColor_themeColorString),
      surfaceTintColor_themeColorString: data.get(
          #surfaceTintColor_themeColorString,
          or: $value.surfaceTintColor_themeColorString),
      elevation_double:
          data.get(#elevation_double, or: $value.elevation_double),
      padding_edgeInsets:
          data.get(#padding_edgeInsets, or: $value.padding_edgeInsets),
      iconColor_themeColorString: data.get(#iconColor_themeColorString,
          or: $value.iconColor_themeColorString),
      iconSize_double: data.get(#iconSize_double, or: $value.iconSize_double),
      side_borderSide: data.get(#side_borderSide, or: $value.side_borderSide),
      shape_outlinedBorder:
          data.get(#shape_outlinedBorder, or: $value.shape_outlinedBorder));

  @override
  ButtonModelCopyWith<$R2, ButtonModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ButtonModelCopyWithImpl($value, $cast, t);
}
