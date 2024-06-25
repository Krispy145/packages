// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'box_decoration_model.dart';

class BoxShapeTypeMapper extends EnumMapper<BoxShapeType> {
  BoxShapeTypeMapper._();

  static BoxShapeTypeMapper? _instance;
  static BoxShapeTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BoxShapeTypeMapper._());
    }
    return _instance!;
  }

  static BoxShapeType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  BoxShapeType decode(dynamic value) {
    switch (value) {
      case 'rectangle':
        return BoxShapeType.rectangle;
      case 'circle':
        return BoxShapeType.circle;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(BoxShapeType self) {
    switch (self) {
      case BoxShapeType.rectangle:
        return 'rectangle';
      case BoxShapeType.circle:
        return 'circle';
    }
  }
}

extension BoxShapeTypeMapperExtension on BoxShapeType {
  String toValue() {
    BoxShapeTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<BoxShapeType>(this) as String;
  }
}

class BoxDecorationModelMapper extends ClassMapperBase<BoxDecorationModel> {
  BoxDecorationModelMapper._();

  static BoxDecorationModelMapper? _instance;
  static BoxDecorationModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BoxDecorationModelMapper._());
      BoxBorderModelMapper.ensureInitialized();
      BorderRadiusModelMapper.ensureInitialized();
      BoxShadowModelMapper.ensureInitialized();
      GradientModelMapper.ensureInitialized();
      BoxShapeTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BoxDecorationModel';

  static String? _$color_themeColorString(BoxDecorationModel v) =>
      v.color_themeColorString;
  static const Field<BoxDecorationModel, String> _f$color_themeColorString =
      Field('color_themeColorString', _$color_themeColorString, opt: true);
  static BoxBorderModel? _$border_boxBorder(BoxDecorationModel v) =>
      v.border_boxBorder;
  static const Field<BoxDecorationModel, BoxBorderModel> _f$border_boxBorder =
      Field('border_boxBorder', _$border_boxBorder, opt: true);
  static BorderRadiusModel? _$borderRadius_borderRadius(BoxDecorationModel v) =>
      v.borderRadius_borderRadius;
  static const Field<BoxDecorationModel, BorderRadiusModel>
      _f$borderRadius_borderRadius = Field(
          'borderRadius_borderRadius', _$borderRadius_borderRadius,
          opt: true);
  static List<BoxShadowModel>? _$boxShadows_list_boxShadow(
          BoxDecorationModel v) =>
      v.boxShadows_list_boxShadow;
  static const Field<BoxDecorationModel, List<BoxShadowModel>>
      _f$boxShadows_list_boxShadow = Field(
          'boxShadows_list_boxShadow', _$boxShadows_list_boxShadow,
          opt: true, def: const []);
  static GradientModel? _$gradient_gradient(BoxDecorationModel v) =>
      v.gradient_gradient;
  static const Field<BoxDecorationModel, GradientModel> _f$gradient_gradient =
      Field('gradient_gradient', _$gradient_gradient,
          opt: true, def: const GradientModel());
  static BlendMode? _$backgroundBlendMode_enum_blendMode(
          BoxDecorationModel v) =>
      v.backgroundBlendMode_enum_blendMode;
  static const Field<BoxDecorationModel, BlendMode>
      _f$backgroundBlendMode_enum_blendMode = Field(
          'backgroundBlendMode_enum_blendMode',
          _$backgroundBlendMode_enum_blendMode,
          opt: true);
  static BoxShapeType? _$shape_enum_boxShape(BoxDecorationModel v) =>
      v.shape_enum_boxShape;
  static const Field<BoxDecorationModel, BoxShapeType> _f$shape_enum_boxShape =
      Field('shape_enum_boxShape', _$shape_enum_boxShape,
          opt: true, def: BoxShapeType.rectangle);

  @override
  final MappableFields<BoxDecorationModel> fields = const {
    #color_themeColorString: _f$color_themeColorString,
    #border_boxBorder: _f$border_boxBorder,
    #borderRadius_borderRadius: _f$borderRadius_borderRadius,
    #boxShadows_list_boxShadow: _f$boxShadows_list_boxShadow,
    #gradient_gradient: _f$gradient_gradient,
    #backgroundBlendMode_enum_blendMode: _f$backgroundBlendMode_enum_blendMode,
    #shape_enum_boxShape: _f$shape_enum_boxShape,
  };

  static BoxDecorationModel _instantiate(DecodingData data) {
    return BoxDecorationModel(
        color_themeColorString: data.dec(_f$color_themeColorString),
        border_boxBorder: data.dec(_f$border_boxBorder),
        borderRadius_borderRadius: data.dec(_f$borderRadius_borderRadius),
        boxShadows_list_boxShadow: data.dec(_f$boxShadows_list_boxShadow),
        gradient_gradient: data.dec(_f$gradient_gradient),
        backgroundBlendMode_enum_blendMode:
            data.dec(_f$backgroundBlendMode_enum_blendMode),
        shape_enum_boxShape: data.dec(_f$shape_enum_boxShape));
  }

  @override
  final Function instantiate = _instantiate;

  static BoxDecorationModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BoxDecorationModel>(map);
  }

  static BoxDecorationModel fromJson(String json) {
    return ensureInitialized().decodeJson<BoxDecorationModel>(json);
  }
}

mixin BoxDecorationModelMappable {
  String toJson() {
    return BoxDecorationModelMapper.ensureInitialized()
        .encodeJson<BoxDecorationModel>(this as BoxDecorationModel);
  }

  Map<String, dynamic> toMap() {
    return BoxDecorationModelMapper.ensureInitialized()
        .encodeMap<BoxDecorationModel>(this as BoxDecorationModel);
  }

  BoxDecorationModelCopyWith<BoxDecorationModel, BoxDecorationModel,
          BoxDecorationModel>
      get copyWith => _BoxDecorationModelCopyWithImpl(
          this as BoxDecorationModel, $identity, $identity);
  @override
  String toString() {
    return BoxDecorationModelMapper.ensureInitialized()
        .stringifyValue(this as BoxDecorationModel);
  }

  @override
  bool operator ==(Object other) {
    return BoxDecorationModelMapper.ensureInitialized()
        .equalsValue(this as BoxDecorationModel, other);
  }

  @override
  int get hashCode {
    return BoxDecorationModelMapper.ensureInitialized()
        .hashValue(this as BoxDecorationModel);
  }
}

extension BoxDecorationModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BoxDecorationModel, $Out> {
  BoxDecorationModelCopyWith<$R, BoxDecorationModel, $Out>
      get $asBoxDecorationModel =>
          $base.as((v, t, t2) => _BoxDecorationModelCopyWithImpl(v, t, t2));
}

abstract class BoxDecorationModelCopyWith<$R, $In extends BoxDecorationModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  BoxBorderModelCopyWith<$R, BoxBorderModel, BoxBorderModel>?
      get border_boxBorder;
  BorderRadiusModelCopyWith<$R, BorderRadiusModel, BorderRadiusModel>?
      get borderRadius_borderRadius;
  ListCopyWith<$R, BoxShadowModel,
          BoxShadowModelCopyWith<$R, BoxShadowModel, BoxShadowModel>>?
      get boxShadows_list_boxShadow;
  GradientModelCopyWith<$R, GradientModel, GradientModel>?
      get gradient_gradient;
  $R call(
      {String? color_themeColorString,
      BoxBorderModel? border_boxBorder,
      BorderRadiusModel? borderRadius_borderRadius,
      List<BoxShadowModel>? boxShadows_list_boxShadow,
      GradientModel? gradient_gradient,
      BlendMode? backgroundBlendMode_enum_blendMode,
      BoxShapeType? shape_enum_boxShape});
  BoxDecorationModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BoxDecorationModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BoxDecorationModel, $Out>
    implements BoxDecorationModelCopyWith<$R, BoxDecorationModel, $Out> {
  _BoxDecorationModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BoxDecorationModel> $mapper =
      BoxDecorationModelMapper.ensureInitialized();
  @override
  BoxBorderModelCopyWith<$R, BoxBorderModel, BoxBorderModel>?
      get border_boxBorder => $value.border_boxBorder?.copyWith
          .$chain((v) => call(border_boxBorder: v));
  @override
  BorderRadiusModelCopyWith<$R, BorderRadiusModel, BorderRadiusModel>?
      get borderRadius_borderRadius =>
          $value.borderRadius_borderRadius?.copyWith
              .$chain((v) => call(borderRadius_borderRadius: v));
  @override
  ListCopyWith<$R, BoxShadowModel,
          BoxShadowModelCopyWith<$R, BoxShadowModel, BoxShadowModel>>?
      get boxShadows_list_boxShadow => $value.boxShadows_list_boxShadow != null
          ? ListCopyWith(
              $value.boxShadows_list_boxShadow!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(boxShadows_list_boxShadow: v))
          : null;
  @override
  GradientModelCopyWith<$R, GradientModel, GradientModel>?
      get gradient_gradient => $value.gradient_gradient?.copyWith
          .$chain((v) => call(gradient_gradient: v));
  @override
  $R call(
          {Object? color_themeColorString = $none,
          Object? border_boxBorder = $none,
          Object? borderRadius_borderRadius = $none,
          Object? boxShadows_list_boxShadow = $none,
          Object? gradient_gradient = $none,
          Object? backgroundBlendMode_enum_blendMode = $none,
          Object? shape_enum_boxShape = $none}) =>
      $apply(FieldCopyWithData({
        if (color_themeColorString != $none)
          #color_themeColorString: color_themeColorString,
        if (border_boxBorder != $none) #border_boxBorder: border_boxBorder,
        if (borderRadius_borderRadius != $none)
          #borderRadius_borderRadius: borderRadius_borderRadius,
        if (boxShadows_list_boxShadow != $none)
          #boxShadows_list_boxShadow: boxShadows_list_boxShadow,
        if (gradient_gradient != $none) #gradient_gradient: gradient_gradient,
        if (backgroundBlendMode_enum_blendMode != $none)
          #backgroundBlendMode_enum_blendMode:
              backgroundBlendMode_enum_blendMode,
        if (shape_enum_boxShape != $none)
          #shape_enum_boxShape: shape_enum_boxShape
      }));
  @override
  BoxDecorationModel $make(CopyWithData data) => BoxDecorationModel(
      color_themeColorString:
          data.get(#color_themeColorString, or: $value.color_themeColorString),
      border_boxBorder:
          data.get(#border_boxBorder, or: $value.border_boxBorder),
      borderRadius_borderRadius: data.get(#borderRadius_borderRadius,
          or: $value.borderRadius_borderRadius),
      boxShadows_list_boxShadow: data.get(#boxShadows_list_boxShadow,
          or: $value.boxShadows_list_boxShadow),
      gradient_gradient:
          data.get(#gradient_gradient, or: $value.gradient_gradient),
      backgroundBlendMode_enum_blendMode: data.get(
          #backgroundBlendMode_enum_blendMode,
          or: $value.backgroundBlendMode_enum_blendMode),
      shape_enum_boxShape:
          data.get(#shape_enum_boxShape, or: $value.shape_enum_boxShape));

  @override
  BoxDecorationModelCopyWith<$R2, BoxDecorationModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BoxDecorationModelCopyWithImpl($value, $cast, t);
}
