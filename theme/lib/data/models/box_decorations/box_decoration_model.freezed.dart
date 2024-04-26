// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box_decoration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoxDecorationModel _$BoxDecorationModelFromJson(Map<String, dynamic> json) {
  return _BoxDecorationModel.fromJson(json);
}

/// @nodoc
mixin _$BoxDecorationModel {
  String? get color_themeColorString =>
      throw _privateConstructorUsedError; // @BoxBorderConverter() Map<BoxBorderType, BoxBorder?>? border,
  BoxBorderModel? get border_boxBorder =>
      throw _privateConstructorUsedError; // @BorderRadiusConverter() BorderRadius? borderRadius,
  BorderRadiusModel? get borderRadius_borderRadius =>
      throw _privateConstructorUsedError; // @BoxShadowsConverter()
  List<BoxShadowModel>? get boxShadows_list_boxShadow =>
      throw _privateConstructorUsedError; // @GradientConverter()
  GradientModel? get gradient_gradient => throw _privateConstructorUsedError;
  BlendMode? get backgroundBlendMode_enum_blendMode =>
      throw _privateConstructorUsedError;
  BoxShape? get shape_enum_boxShape => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxDecorationModelCopyWith<BoxDecorationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxDecorationModelCopyWith<$Res> {
  factory $BoxDecorationModelCopyWith(
          BoxDecorationModel value, $Res Function(BoxDecorationModel) then) =
      _$BoxDecorationModelCopyWithImpl<$Res, BoxDecorationModel>;
  @useResult
  $Res call(
      {String? color_themeColorString,
      BoxBorderModel? border_boxBorder,
      BorderRadiusModel? borderRadius_borderRadius,
      List<BoxShadowModel>? boxShadows_list_boxShadow,
      GradientModel? gradient_gradient,
      BlendMode? backgroundBlendMode_enum_blendMode,
      BoxShape? shape_enum_boxShape});

  $BoxBorderModelCopyWith<$Res>? get border_boxBorder;
  $BorderRadiusModelCopyWith<$Res>? get borderRadius_borderRadius;
  $GradientModelCopyWith<$Res>? get gradient_gradient;
}

/// @nodoc
class _$BoxDecorationModelCopyWithImpl<$Res, $Val extends BoxDecorationModel>
    implements $BoxDecorationModelCopyWith<$Res> {
  _$BoxDecorationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color_themeColorString = freezed,
    Object? border_boxBorder = freezed,
    Object? borderRadius_borderRadius = freezed,
    Object? boxShadows_list_boxShadow = freezed,
    Object? gradient_gradient = freezed,
    Object? backgroundBlendMode_enum_blendMode = freezed,
    Object? shape_enum_boxShape = freezed,
  }) {
    return _then(_value.copyWith(
      color_themeColorString: freezed == color_themeColorString
          ? _value.color_themeColorString
          : color_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      border_boxBorder: freezed == border_boxBorder
          ? _value.border_boxBorder
          : border_boxBorder // ignore: cast_nullable_to_non_nullable
              as BoxBorderModel?,
      borderRadius_borderRadius: freezed == borderRadius_borderRadius
          ? _value.borderRadius_borderRadius
          : borderRadius_borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadiusModel?,
      boxShadows_list_boxShadow: freezed == boxShadows_list_boxShadow
          ? _value.boxShadows_list_boxShadow
          : boxShadows_list_boxShadow // ignore: cast_nullable_to_non_nullable
              as List<BoxShadowModel>?,
      gradient_gradient: freezed == gradient_gradient
          ? _value.gradient_gradient
          : gradient_gradient // ignore: cast_nullable_to_non_nullable
              as GradientModel?,
      backgroundBlendMode_enum_blendMode: freezed ==
              backgroundBlendMode_enum_blendMode
          ? _value.backgroundBlendMode_enum_blendMode
          : backgroundBlendMode_enum_blendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      shape_enum_boxShape: freezed == shape_enum_boxShape
          ? _value.shape_enum_boxShape
          : shape_enum_boxShape // ignore: cast_nullable_to_non_nullable
              as BoxShape?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxBorderModelCopyWith<$Res>? get border_boxBorder {
    if (_value.border_boxBorder == null) {
      return null;
    }

    return $BoxBorderModelCopyWith<$Res>(_value.border_boxBorder!, (value) {
      return _then(_value.copyWith(border_boxBorder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BorderRadiusModelCopyWith<$Res>? get borderRadius_borderRadius {
    if (_value.borderRadius_borderRadius == null) {
      return null;
    }

    return $BorderRadiusModelCopyWith<$Res>(_value.borderRadius_borderRadius!,
        (value) {
      return _then(_value.copyWith(borderRadius_borderRadius: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GradientModelCopyWith<$Res>? get gradient_gradient {
    if (_value.gradient_gradient == null) {
      return null;
    }

    return $GradientModelCopyWith<$Res>(_value.gradient_gradient!, (value) {
      return _then(_value.copyWith(gradient_gradient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BoxDecorationModelImplCopyWith<$Res>
    implements $BoxDecorationModelCopyWith<$Res> {
  factory _$$BoxDecorationModelImplCopyWith(_$BoxDecorationModelImpl value,
          $Res Function(_$BoxDecorationModelImpl) then) =
      __$$BoxDecorationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color_themeColorString,
      BoxBorderModel? border_boxBorder,
      BorderRadiusModel? borderRadius_borderRadius,
      List<BoxShadowModel>? boxShadows_list_boxShadow,
      GradientModel? gradient_gradient,
      BlendMode? backgroundBlendMode_enum_blendMode,
      BoxShape? shape_enum_boxShape});

  @override
  $BoxBorderModelCopyWith<$Res>? get border_boxBorder;
  @override
  $BorderRadiusModelCopyWith<$Res>? get borderRadius_borderRadius;
  @override
  $GradientModelCopyWith<$Res>? get gradient_gradient;
}

/// @nodoc
class __$$BoxDecorationModelImplCopyWithImpl<$Res>
    extends _$BoxDecorationModelCopyWithImpl<$Res, _$BoxDecorationModelImpl>
    implements _$$BoxDecorationModelImplCopyWith<$Res> {
  __$$BoxDecorationModelImplCopyWithImpl(_$BoxDecorationModelImpl _value,
      $Res Function(_$BoxDecorationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color_themeColorString = freezed,
    Object? border_boxBorder = freezed,
    Object? borderRadius_borderRadius = freezed,
    Object? boxShadows_list_boxShadow = freezed,
    Object? gradient_gradient = freezed,
    Object? backgroundBlendMode_enum_blendMode = freezed,
    Object? shape_enum_boxShape = freezed,
  }) {
    return _then(_$BoxDecorationModelImpl(
      color_themeColorString: freezed == color_themeColorString
          ? _value.color_themeColorString
          : color_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      border_boxBorder: freezed == border_boxBorder
          ? _value.border_boxBorder
          : border_boxBorder // ignore: cast_nullable_to_non_nullable
              as BoxBorderModel?,
      borderRadius_borderRadius: freezed == borderRadius_borderRadius
          ? _value.borderRadius_borderRadius
          : borderRadius_borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadiusModel?,
      boxShadows_list_boxShadow: freezed == boxShadows_list_boxShadow
          ? _value._boxShadows_list_boxShadow
          : boxShadows_list_boxShadow // ignore: cast_nullable_to_non_nullable
              as List<BoxShadowModel>?,
      gradient_gradient: freezed == gradient_gradient
          ? _value.gradient_gradient
          : gradient_gradient // ignore: cast_nullable_to_non_nullable
              as GradientModel?,
      backgroundBlendMode_enum_blendMode: freezed ==
              backgroundBlendMode_enum_blendMode
          ? _value.backgroundBlendMode_enum_blendMode
          : backgroundBlendMode_enum_blendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      shape_enum_boxShape: freezed == shape_enum_boxShape
          ? _value.shape_enum_boxShape
          : shape_enum_boxShape // ignore: cast_nullable_to_non_nullable
              as BoxShape?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoxDecorationModelImpl extends _BoxDecorationModel {
  const _$BoxDecorationModelImpl(
      {this.color_themeColorString,
      this.border_boxBorder,
      this.borderRadius_borderRadius,
      final List<BoxShadowModel>? boxShadows_list_boxShadow = const [],
      this.gradient_gradient = const GradientModel(),
      this.backgroundBlendMode_enum_blendMode,
      this.shape_enum_boxShape = BoxShape.rectangle})
      : _boxShadows_list_boxShadow = boxShadows_list_boxShadow,
        super._();

  factory _$BoxDecorationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoxDecorationModelImplFromJson(json);

  @override
  final String? color_themeColorString;
// @BoxBorderConverter() Map<BoxBorderType, BoxBorder?>? border,
  @override
  final BoxBorderModel? border_boxBorder;
// @BorderRadiusConverter() BorderRadius? borderRadius,
  @override
  final BorderRadiusModel? borderRadius_borderRadius;
// @BoxShadowsConverter()
  final List<BoxShadowModel>? _boxShadows_list_boxShadow;
// @BoxShadowsConverter()
  @override
  @JsonKey()
  List<BoxShadowModel>? get boxShadows_list_boxShadow {
    final value = _boxShadows_list_boxShadow;
    if (value == null) return null;
    if (_boxShadows_list_boxShadow is EqualUnmodifiableListView)
      return _boxShadows_list_boxShadow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// @GradientConverter()
  @override
  @JsonKey()
  final GradientModel? gradient_gradient;
  @override
  final BlendMode? backgroundBlendMode_enum_blendMode;
  @override
  @JsonKey()
  final BoxShape? shape_enum_boxShape;

  @override
  String toString() {
    return 'BoxDecorationModel(color_themeColorString: $color_themeColorString, border_boxBorder: $border_boxBorder, borderRadius_borderRadius: $borderRadius_borderRadius, boxShadows_list_boxShadow: $boxShadows_list_boxShadow, gradient_gradient: $gradient_gradient, backgroundBlendMode_enum_blendMode: $backgroundBlendMode_enum_blendMode, shape_enum_boxShape: $shape_enum_boxShape)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxDecorationModelImpl &&
            (identical(other.color_themeColorString, color_themeColorString) ||
                other.color_themeColorString == color_themeColorString) &&
            (identical(other.border_boxBorder, border_boxBorder) ||
                other.border_boxBorder == border_boxBorder) &&
            (identical(other.borderRadius_borderRadius,
                    borderRadius_borderRadius) ||
                other.borderRadius_borderRadius == borderRadius_borderRadius) &&
            const DeepCollectionEquality().equals(
                other._boxShadows_list_boxShadow, _boxShadows_list_boxShadow) &&
            (identical(other.gradient_gradient, gradient_gradient) ||
                other.gradient_gradient == gradient_gradient) &&
            (identical(other.backgroundBlendMode_enum_blendMode,
                    backgroundBlendMode_enum_blendMode) ||
                other.backgroundBlendMode_enum_blendMode ==
                    backgroundBlendMode_enum_blendMode) &&
            const DeepCollectionEquality()
                .equals(other.shape_enum_boxShape, shape_enum_boxShape));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      color_themeColorString,
      border_boxBorder,
      borderRadius_borderRadius,
      const DeepCollectionEquality().hash(_boxShadows_list_boxShadow),
      gradient_gradient,
      backgroundBlendMode_enum_blendMode,
      const DeepCollectionEquality().hash(shape_enum_boxShape));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoxDecorationModelImplCopyWith<_$BoxDecorationModelImpl> get copyWith =>
      __$$BoxDecorationModelImplCopyWithImpl<_$BoxDecorationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoxDecorationModelImplToJson(
      this,
    );
  }
}

abstract class _BoxDecorationModel extends BoxDecorationModel {
  const factory _BoxDecorationModel(
      {final String? color_themeColorString,
      final BoxBorderModel? border_boxBorder,
      final BorderRadiusModel? borderRadius_borderRadius,
      final List<BoxShadowModel>? boxShadows_list_boxShadow,
      final GradientModel? gradient_gradient,
      final BlendMode? backgroundBlendMode_enum_blendMode,
      final BoxShape? shape_enum_boxShape}) = _$BoxDecorationModelImpl;
  const _BoxDecorationModel._() : super._();

  factory _BoxDecorationModel.fromJson(Map<String, dynamic> json) =
      _$BoxDecorationModelImpl.fromJson;

  @override
  String? get color_themeColorString;
  @override // @BoxBorderConverter() Map<BoxBorderType, BoxBorder?>? border,
  BoxBorderModel? get border_boxBorder;
  @override // @BorderRadiusConverter() BorderRadius? borderRadius,
  BorderRadiusModel? get borderRadius_borderRadius;
  @override // @BoxShadowsConverter()
  List<BoxShadowModel>? get boxShadows_list_boxShadow;
  @override // @GradientConverter()
  GradientModel? get gradient_gradient;
  @override
  BlendMode? get backgroundBlendMode_enum_blendMode;
  @override
  BoxShape? get shape_enum_boxShape;
  @override
  @JsonKey(ignore: true)
  _$$BoxDecorationModelImplCopyWith<_$BoxDecorationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
