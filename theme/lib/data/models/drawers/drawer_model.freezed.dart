// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DrawerModel _$DrawerModelFromJson(Map<String, dynamic> json) {
  return _DrawerModel.fromJson(json);
}

/// @nodoc
mixin _$DrawerModel {
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get scrimColor => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  String? get shadowColor => throw _privateConstructorUsedError;
  String? get surfaceTintColor => throw _privateConstructorUsedError;
  @OutlinedBorderConverter()
  OutlinedBorder? get shape => throw _privateConstructorUsedError;
  @OutlinedBorderConverter()
  OutlinedBorder? get endShape => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrawerModelCopyWith<DrawerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerModelCopyWith<$Res> {
  factory $DrawerModelCopyWith(
          DrawerModel value, $Res Function(DrawerModel) then) =
      _$DrawerModelCopyWithImpl<$Res, DrawerModel>;
  @useResult
  $Res call(
      {String? backgroundColor,
      String? scrimColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      @OutlinedBorderConverter() OutlinedBorder? shape,
      @OutlinedBorderConverter() OutlinedBorder? endShape,
      double? width});
}

/// @nodoc
class _$DrawerModelCopyWithImpl<$Res, $Val extends DrawerModel>
    implements $DrawerModelCopyWith<$Res> {
  _$DrawerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? scrimColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? endShape = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      scrimColor: freezed == scrimColor
          ? _value.scrimColor
          : scrimColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as OutlinedBorder?,
      endShape: freezed == endShape
          ? _value.endShape
          : endShape // ignore: cast_nullable_to_non_nullable
              as OutlinedBorder?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrawerModelImplCopyWith<$Res>
    implements $DrawerModelCopyWith<$Res> {
  factory _$$DrawerModelImplCopyWith(
          _$DrawerModelImpl value, $Res Function(_$DrawerModelImpl) then) =
      __$$DrawerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      String? scrimColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      @OutlinedBorderConverter() OutlinedBorder? shape,
      @OutlinedBorderConverter() OutlinedBorder? endShape,
      double? width});
}

/// @nodoc
class __$$DrawerModelImplCopyWithImpl<$Res>
    extends _$DrawerModelCopyWithImpl<$Res, _$DrawerModelImpl>
    implements _$$DrawerModelImplCopyWith<$Res> {
  __$$DrawerModelImplCopyWithImpl(
      _$DrawerModelImpl _value, $Res Function(_$DrawerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? scrimColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? endShape = freezed,
    Object? width = freezed,
  }) {
    return _then(_$DrawerModelImpl(
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      scrimColor: freezed == scrimColor
          ? _value.scrimColor
          : scrimColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as OutlinedBorder?,
      endShape: freezed == endShape
          ? _value.endShape
          : endShape // ignore: cast_nullable_to_non_nullable
              as OutlinedBorder?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DrawerModelImpl extends _DrawerModel {
  const _$DrawerModelImpl(
      {this.backgroundColor,
      this.scrimColor,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      @OutlinedBorderConverter() this.shape,
      @OutlinedBorderConverter() this.endShape,
      this.width})
      : super._();

  factory _$DrawerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DrawerModelImplFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final String? scrimColor;
  @override
  final double? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  @OutlinedBorderConverter()
  final OutlinedBorder? shape;
  @override
  @OutlinedBorderConverter()
  final OutlinedBorder? endShape;
  @override
  final double? width;

  @override
  String toString() {
    return 'DrawerModel(backgroundColor: $backgroundColor, scrimColor: $scrimColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, endShape: $endShape, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawerModelImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.scrimColor, scrimColor) ||
                other.scrimColor == scrimColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.endShape, endShape) ||
                other.endShape == endShape) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundColor, scrimColor,
      elevation, shadowColor, surfaceTintColor, shape, endShape, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawerModelImplCopyWith<_$DrawerModelImpl> get copyWith =>
      __$$DrawerModelImplCopyWithImpl<_$DrawerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DrawerModelImplToJson(
      this,
    );
  }
}

abstract class _DrawerModel extends DrawerModel {
  const factory _DrawerModel(
      {final String? backgroundColor,
      final String? scrimColor,
      final double? elevation,
      final String? shadowColor,
      final String? surfaceTintColor,
      @OutlinedBorderConverter() final OutlinedBorder? shape,
      @OutlinedBorderConverter() final OutlinedBorder? endShape,
      final double? width}) = _$DrawerModelImpl;
  const _DrawerModel._() : super._();

  factory _DrawerModel.fromJson(Map<String, dynamic> json) =
      _$DrawerModelImpl.fromJson;

  @override
  String? get backgroundColor;
  @override
  String? get scrimColor;
  @override
  double? get elevation;
  @override
  String? get shadowColor;
  @override
  String? get surfaceTintColor;
  @override
  @OutlinedBorderConverter()
  OutlinedBorder? get shape;
  @override
  @OutlinedBorderConverter()
  OutlinedBorder? get endShape;
  @override
  double? get width;
  @override
  @JsonKey(ignore: true)
  _$$DrawerModelImplCopyWith<_$DrawerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
