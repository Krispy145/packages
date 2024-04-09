// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'border_side_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BorderSideModel _$BorderSideModelFromJson(Map<String, dynamic> json) {
  return _BorderSideModel.fromJson(json);
}

/// @nodoc
mixin _$BorderSideModel {
  String? get color_themeColorString => throw _privateConstructorUsedError;
  double? get width_double => throw _privateConstructorUsedError;
  BorderStyle? get style_enum_borderStyle => throw _privateConstructorUsedError;
  double? get strokeAlign_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BorderSideModelCopyWith<BorderSideModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BorderSideModelCopyWith<$Res> {
  factory $BorderSideModelCopyWith(
          BorderSideModel value, $Res Function(BorderSideModel) then) =
      _$BorderSideModelCopyWithImpl<$Res, BorderSideModel>;
  @useResult
  $Res call(
      {String? color_themeColorString,
      double? width_double,
      BorderStyle? style_enum_borderStyle,
      double? strokeAlign_double});
}

/// @nodoc
class _$BorderSideModelCopyWithImpl<$Res, $Val extends BorderSideModel>
    implements $BorderSideModelCopyWith<$Res> {
  _$BorderSideModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color_themeColorString = freezed,
    Object? width_double = freezed,
    Object? style_enum_borderStyle = freezed,
    Object? strokeAlign_double = freezed,
  }) {
    return _then(_value.copyWith(
      color_themeColorString: freezed == color_themeColorString
          ? _value.color_themeColorString
          : color_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      width_double: freezed == width_double
          ? _value.width_double
          : width_double // ignore: cast_nullable_to_non_nullable
              as double?,
      style_enum_borderStyle: freezed == style_enum_borderStyle
          ? _value.style_enum_borderStyle
          : style_enum_borderStyle // ignore: cast_nullable_to_non_nullable
              as BorderStyle?,
      strokeAlign_double: freezed == strokeAlign_double
          ? _value.strokeAlign_double
          : strokeAlign_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BorderSideModelImplCopyWith<$Res>
    implements $BorderSideModelCopyWith<$Res> {
  factory _$$BorderSideModelImplCopyWith(_$BorderSideModelImpl value,
          $Res Function(_$BorderSideModelImpl) then) =
      __$$BorderSideModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color_themeColorString,
      double? width_double,
      BorderStyle? style_enum_borderStyle,
      double? strokeAlign_double});
}

/// @nodoc
class __$$BorderSideModelImplCopyWithImpl<$Res>
    extends _$BorderSideModelCopyWithImpl<$Res, _$BorderSideModelImpl>
    implements _$$BorderSideModelImplCopyWith<$Res> {
  __$$BorderSideModelImplCopyWithImpl(
      _$BorderSideModelImpl _value, $Res Function(_$BorderSideModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color_themeColorString = freezed,
    Object? width_double = freezed,
    Object? style_enum_borderStyle = freezed,
    Object? strokeAlign_double = freezed,
  }) {
    return _then(_$BorderSideModelImpl(
      color_themeColorString: freezed == color_themeColorString
          ? _value.color_themeColorString
          : color_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      width_double: freezed == width_double
          ? _value.width_double
          : width_double // ignore: cast_nullable_to_non_nullable
              as double?,
      style_enum_borderStyle: freezed == style_enum_borderStyle
          ? _value.style_enum_borderStyle
          : style_enum_borderStyle // ignore: cast_nullable_to_non_nullable
              as BorderStyle?,
      strokeAlign_double: freezed == strokeAlign_double
          ? _value.strokeAlign_double
          : strokeAlign_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BorderSideModelImpl extends _BorderSideModel {
  const _$BorderSideModelImpl(
      {this.color_themeColorString,
      this.width_double,
      this.style_enum_borderStyle,
      this.strokeAlign_double})
      : super._();

  factory _$BorderSideModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BorderSideModelImplFromJson(json);

  @override
  final String? color_themeColorString;
  @override
  final double? width_double;
  @override
  final BorderStyle? style_enum_borderStyle;
  @override
  final double? strokeAlign_double;

  @override
  String toString() {
    return 'BorderSideModel(color_themeColorString: $color_themeColorString, width_double: $width_double, style_enum_borderStyle: $style_enum_borderStyle, strokeAlign_double: $strokeAlign_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BorderSideModelImpl &&
            (identical(other.color_themeColorString, color_themeColorString) ||
                other.color_themeColorString == color_themeColorString) &&
            (identical(other.width_double, width_double) ||
                other.width_double == width_double) &&
            (identical(other.style_enum_borderStyle, style_enum_borderStyle) ||
                other.style_enum_borderStyle == style_enum_borderStyle) &&
            (identical(other.strokeAlign_double, strokeAlign_double) ||
                other.strokeAlign_double == strokeAlign_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color_themeColorString,
      width_double, style_enum_borderStyle, strokeAlign_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BorderSideModelImplCopyWith<_$BorderSideModelImpl> get copyWith =>
      __$$BorderSideModelImplCopyWithImpl<_$BorderSideModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BorderSideModelImplToJson(
      this,
    );
  }
}

abstract class _BorderSideModel extends BorderSideModel {
  const factory _BorderSideModel(
      {final String? color_themeColorString,
      final double? width_double,
      final BorderStyle? style_enum_borderStyle,
      final double? strokeAlign_double}) = _$BorderSideModelImpl;
  const _BorderSideModel._() : super._();

  factory _BorderSideModel.fromJson(Map<String, dynamic> json) =
      _$BorderSideModelImpl.fromJson;

  @override
  String? get color_themeColorString;
  @override
  double? get width_double;
  @override
  BorderStyle? get style_enum_borderStyle;
  @override
  double? get strokeAlign_double;
  @override
  @JsonKey(ignore: true)
  _$$BorderSideModelImplCopyWith<_$BorderSideModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
