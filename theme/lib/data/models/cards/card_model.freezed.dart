// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  String? get color => throw _privateConstructorUsedError;
  String? get shadowColor => throw _privateConstructorUsedError;
  String? get surfaceTintColor => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  @EdgeInsetsConverter()
  EdgeInsets? get margin => throw _privateConstructorUsedError;
  @OutlinedBorderConverter()
  OutlinedBorder? get shape => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {String? color,
      String? shadowColor,
      String? surfaceTintColor,
      double? elevation,
      @EdgeInsetsConverter() EdgeInsets? margin,
      @OutlinedBorderConverter() OutlinedBorder? shape});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? elevation = freezed,
    Object? margin = freezed,
    Object? shape = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as OutlinedBorder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardModelImplCopyWith<$Res>
    implements $CardModelCopyWith<$Res> {
  factory _$$CardModelImplCopyWith(
          _$CardModelImpl value, $Res Function(_$CardModelImpl) then) =
      __$$CardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      String? shadowColor,
      String? surfaceTintColor,
      double? elevation,
      @EdgeInsetsConverter() EdgeInsets? margin,
      @OutlinedBorderConverter() OutlinedBorder? shape});
}

/// @nodoc
class __$$CardModelImplCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$CardModelImpl>
    implements _$$CardModelImplCopyWith<$Res> {
  __$$CardModelImplCopyWithImpl(
      _$CardModelImpl _value, $Res Function(_$CardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? elevation = freezed,
    Object? margin = freezed,
    Object? shape = freezed,
  }) {
    return _then(_$CardModelImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as OutlinedBorder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardModelImpl extends _CardModel {
  const _$CardModelImpl(
      {this.color,
      this.shadowColor,
      this.surfaceTintColor,
      this.elevation,
      @EdgeInsetsConverter() this.margin,
      @OutlinedBorderConverter() this.shape})
      : super._();

  factory _$CardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardModelImplFromJson(json);

  @override
  final String? color;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final double? elevation;
  @override
  @EdgeInsetsConverter()
  final EdgeInsets? margin;
  @override
  @OutlinedBorderConverter()
  final OutlinedBorder? shape;

  @override
  String toString() {
    return 'CardModel(color: $color, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, margin: $margin, shape: $shape)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardModelImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.shape, shape) || other.shape == shape));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, shadowColor,
      surfaceTintColor, elevation, margin, shape);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      __$$CardModelImplCopyWithImpl<_$CardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardModelImplToJson(
      this,
    );
  }
}

abstract class _CardModel extends CardModel {
  const factory _CardModel(
          {final String? color,
          final String? shadowColor,
          final String? surfaceTintColor,
          final double? elevation,
          @EdgeInsetsConverter() final EdgeInsets? margin,
          @OutlinedBorderConverter() final OutlinedBorder? shape}) =
      _$CardModelImpl;
  const _CardModel._() : super._();

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$CardModelImpl.fromJson;

  @override
  String? get color;
  @override
  String? get shadowColor;
  @override
  String? get surfaceTintColor;
  @override
  double? get elevation;
  @override
  @EdgeInsetsConverter()
  EdgeInsets? get margin;
  @override
  @OutlinedBorderConverter()
  OutlinedBorder? get shape;
  @override
  @JsonKey(ignore: true)
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
