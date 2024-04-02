// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkbox_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckboxModel _$CheckboxModelFromJson(Map<String, dynamic> json) {
  return _CheckboxModel.fromJson(json);
}

/// @nodoc
mixin _$CheckboxModel {
  String? get fillColor => throw _privateConstructorUsedError;
  String? get checkColor => throw _privateConstructorUsedError;
  String? get overlayColor => throw _privateConstructorUsedError;
  double? get splashRadius => throw _privateConstructorUsedError;
  @OutlinedBorderConverter()
  OutlinedBorder? get shape => throw _privateConstructorUsedError;
  @BorderSideConverter()
  BorderSide? get side => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckboxModelCopyWith<CheckboxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckboxModelCopyWith<$Res> {
  factory $CheckboxModelCopyWith(
          CheckboxModel value, $Res Function(CheckboxModel) then) =
      _$CheckboxModelCopyWithImpl<$Res, CheckboxModel>;
  @useResult
  $Res call(
      {String? fillColor,
      String? checkColor,
      String? overlayColor,
      double? splashRadius,
      @OutlinedBorderConverter() OutlinedBorder? shape,
      @BorderSideConverter() BorderSide? side});
}

/// @nodoc
class _$CheckboxModelCopyWithImpl<$Res, $Val extends CheckboxModel>
    implements $CheckboxModelCopyWith<$Res> {
  _$CheckboxModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillColor = freezed,
    Object? checkColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
    Object? shape = freezed,
    Object? side = freezed,
  }) {
    return _then(_value.copyWith(
      fillColor: freezed == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      checkColor: freezed == checkColor
          ? _value.checkColor
          : checkColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _value.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _value.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as OutlinedBorder?,
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as BorderSide?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckboxModelImplCopyWith<$Res>
    implements $CheckboxModelCopyWith<$Res> {
  factory _$$CheckboxModelImplCopyWith(
          _$CheckboxModelImpl value, $Res Function(_$CheckboxModelImpl) then) =
      __$$CheckboxModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fillColor,
      String? checkColor,
      String? overlayColor,
      double? splashRadius,
      @OutlinedBorderConverter() OutlinedBorder? shape,
      @BorderSideConverter() BorderSide? side});
}

/// @nodoc
class __$$CheckboxModelImplCopyWithImpl<$Res>
    extends _$CheckboxModelCopyWithImpl<$Res, _$CheckboxModelImpl>
    implements _$$CheckboxModelImplCopyWith<$Res> {
  __$$CheckboxModelImplCopyWithImpl(
      _$CheckboxModelImpl _value, $Res Function(_$CheckboxModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillColor = freezed,
    Object? checkColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
    Object? shape = freezed,
    Object? side = freezed,
  }) {
    return _then(_$CheckboxModelImpl(
      fillColor: freezed == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      checkColor: freezed == checkColor
          ? _value.checkColor
          : checkColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _value.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _value.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as OutlinedBorder?,
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as BorderSide?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckboxModelImpl extends _CheckboxModel {
  const _$CheckboxModelImpl(
      {this.fillColor,
      this.checkColor,
      this.overlayColor,
      this.splashRadius,
      @OutlinedBorderConverter() this.shape,
      @BorderSideConverter() this.side})
      : super._();

  factory _$CheckboxModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckboxModelImplFromJson(json);

  @override
  final String? fillColor;
  @override
  final String? checkColor;
  @override
  final String? overlayColor;
  @override
  final double? splashRadius;
  @override
  @OutlinedBorderConverter()
  final OutlinedBorder? shape;
  @override
  @BorderSideConverter()
  final BorderSide? side;

  @override
  String toString() {
    return 'CheckboxModel(fillColor: $fillColor, checkColor: $checkColor, overlayColor: $overlayColor, splashRadius: $splashRadius, shape: $shape, side: $side)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckboxModelImpl &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.checkColor, checkColor) ||
                other.checkColor == checkColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.side, side) || other.side == side));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fillColor, checkColor,
      overlayColor, splashRadius, shape, side);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckboxModelImplCopyWith<_$CheckboxModelImpl> get copyWith =>
      __$$CheckboxModelImplCopyWithImpl<_$CheckboxModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckboxModelImplToJson(
      this,
    );
  }
}

abstract class _CheckboxModel extends CheckboxModel {
  const factory _CheckboxModel(
      {final String? fillColor,
      final String? checkColor,
      final String? overlayColor,
      final double? splashRadius,
      @OutlinedBorderConverter() final OutlinedBorder? shape,
      @BorderSideConverter() final BorderSide? side}) = _$CheckboxModelImpl;
  const _CheckboxModel._() : super._();

  factory _CheckboxModel.fromJson(Map<String, dynamic> json) =
      _$CheckboxModelImpl.fromJson;

  @override
  String? get fillColor;
  @override
  String? get checkColor;
  @override
  String? get overlayColor;
  @override
  double? get splashRadius;
  @override
  @OutlinedBorderConverter()
  OutlinedBorder? get shape;
  @override
  @BorderSideConverter()
  BorderSide? get side;
  @override
  @JsonKey(ignore: true)
  _$$CheckboxModelImplCopyWith<_$CheckboxModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
