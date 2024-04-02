// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BadgeModel _$BadgeModelFromJson(Map<String, dynamic> json) {
  return _BadgeModel.fromJson(json);
}

/// @nodoc
mixin _$BadgeModel {
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  double? get smallSize => throw _privateConstructorUsedError;
  double? get largeSize => throw _privateConstructorUsedError;
  String? get textStyle => throw _privateConstructorUsedError;
  @EdgeInsetsConverter()
  EdgeInsets? get padding => throw _privateConstructorUsedError;
  @AlignmentConverter()
  Alignment? get alignment => throw _privateConstructorUsedError;
  @OffsetConverter()
  Offset? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeModelCopyWith<BadgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeModelCopyWith<$Res> {
  factory $BadgeModelCopyWith(
          BadgeModel value, $Res Function(BadgeModel) then) =
      _$BadgeModelCopyWithImpl<$Res, BadgeModel>;
  @useResult
  $Res call(
      {String? backgroundColor,
      String? textColor,
      double? smallSize,
      double? largeSize,
      String? textStyle,
      @EdgeInsetsConverter() EdgeInsets? padding,
      @AlignmentConverter() Alignment? alignment,
      @OffsetConverter() Offset? offset});
}

/// @nodoc
class _$BadgeModelCopyWithImpl<$Res, $Val extends BadgeModel>
    implements $BadgeModelCopyWith<$Res> {
  _$BadgeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? smallSize = freezed,
    Object? largeSize = freezed,
    Object? textStyle = freezed,
    Object? padding = freezed,
    Object? alignment = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      smallSize: freezed == smallSize
          ? _value.smallSize
          : smallSize // ignore: cast_nullable_to_non_nullable
              as double?,
      largeSize: freezed == largeSize
          ? _value.largeSize
          : largeSize // ignore: cast_nullable_to_non_nullable
              as double?,
      textStyle: freezed == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      alignment: freezed == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as Alignment?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeModelImplCopyWith<$Res>
    implements $BadgeModelCopyWith<$Res> {
  factory _$$BadgeModelImplCopyWith(
          _$BadgeModelImpl value, $Res Function(_$BadgeModelImpl) then) =
      __$$BadgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      String? textColor,
      double? smallSize,
      double? largeSize,
      String? textStyle,
      @EdgeInsetsConverter() EdgeInsets? padding,
      @AlignmentConverter() Alignment? alignment,
      @OffsetConverter() Offset? offset});
}

/// @nodoc
class __$$BadgeModelImplCopyWithImpl<$Res>
    extends _$BadgeModelCopyWithImpl<$Res, _$BadgeModelImpl>
    implements _$$BadgeModelImplCopyWith<$Res> {
  __$$BadgeModelImplCopyWithImpl(
      _$BadgeModelImpl _value, $Res Function(_$BadgeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? smallSize = freezed,
    Object? largeSize = freezed,
    Object? textStyle = freezed,
    Object? padding = freezed,
    Object? alignment = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$BadgeModelImpl(
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      smallSize: freezed == smallSize
          ? _value.smallSize
          : smallSize // ignore: cast_nullable_to_non_nullable
              as double?,
      largeSize: freezed == largeSize
          ? _value.largeSize
          : largeSize // ignore: cast_nullable_to_non_nullable
              as double?,
      textStyle: freezed == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      alignment: freezed == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as Alignment?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeModelImpl extends _BadgeModel {
  const _$BadgeModelImpl(
      {this.backgroundColor,
      this.textColor,
      this.smallSize,
      this.largeSize,
      this.textStyle,
      @EdgeInsetsConverter() this.padding,
      @AlignmentConverter() this.alignment,
      @OffsetConverter() this.offset})
      : super._();

  factory _$BadgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeModelImplFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final String? textColor;
  @override
  final double? smallSize;
  @override
  final double? largeSize;
  @override
  final String? textStyle;
  @override
  @EdgeInsetsConverter()
  final EdgeInsets? padding;
  @override
  @AlignmentConverter()
  final Alignment? alignment;
  @override
  @OffsetConverter()
  final Offset? offset;

  @override
  String toString() {
    return 'BadgeModel(backgroundColor: $backgroundColor, textColor: $textColor, smallSize: $smallSize, largeSize: $largeSize, textStyle: $textStyle, padding: $padding, alignment: $alignment, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeModelImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.smallSize, smallSize) ||
                other.smallSize == smallSize) &&
            (identical(other.largeSize, largeSize) ||
                other.largeSize == largeSize) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundColor, textColor,
      smallSize, largeSize, textStyle, padding, alignment, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeModelImplCopyWith<_$BadgeModelImpl> get copyWith =>
      __$$BadgeModelImplCopyWithImpl<_$BadgeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeModelImplToJson(
      this,
    );
  }
}

abstract class _BadgeModel extends BadgeModel {
  const factory _BadgeModel(
      {final String? backgroundColor,
      final String? textColor,
      final double? smallSize,
      final double? largeSize,
      final String? textStyle,
      @EdgeInsetsConverter() final EdgeInsets? padding,
      @AlignmentConverter() final Alignment? alignment,
      @OffsetConverter() final Offset? offset}) = _$BadgeModelImpl;
  const _BadgeModel._() : super._();

  factory _BadgeModel.fromJson(Map<String, dynamic> json) =
      _$BadgeModelImpl.fromJson;

  @override
  String? get backgroundColor;
  @override
  String? get textColor;
  @override
  double? get smallSize;
  @override
  double? get largeSize;
  @override
  String? get textStyle;
  @override
  @EdgeInsetsConverter()
  EdgeInsets? get padding;
  @override
  @AlignmentConverter()
  Alignment? get alignment;
  @override
  @OffsetConverter()
  Offset? get offset;
  @override
  @JsonKey(ignore: true)
  _$$BadgeModelImplCopyWith<_$BadgeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
