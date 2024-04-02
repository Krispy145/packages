// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_style_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextStyleModel _$TextStyleModelFromJson(Map<String, dynamic> json) {
  return _TextStyleModel.fromJson(json);
}

/// @nodoc
mixin _$TextStyleModel {
  String? get fontFamilyName => throw _privateConstructorUsedError;
  String? get fontFamilyStyle => throw _privateConstructorUsedError;
  double? get fontWeight => throw _privateConstructorUsedError;
  double? get fontSize => throw _privateConstructorUsedError;
  double? get lineHeight => throw _privateConstructorUsedError;
  double? get letterSpacing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextStyleModelCopyWith<TextStyleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextStyleModelCopyWith<$Res> {
  factory $TextStyleModelCopyWith(
          TextStyleModel value, $Res Function(TextStyleModel) then) =
      _$TextStyleModelCopyWithImpl<$Res, TextStyleModel>;
  @useResult
  $Res call(
      {String? fontFamilyName,
      String? fontFamilyStyle,
      double? fontWeight,
      double? fontSize,
      double? lineHeight,
      double? letterSpacing});
}

/// @nodoc
class _$TextStyleModelCopyWithImpl<$Res, $Val extends TextStyleModel>
    implements $TextStyleModelCopyWith<$Res> {
  _$TextStyleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamilyName = freezed,
    Object? fontFamilyStyle = freezed,
    Object? fontWeight = freezed,
    Object? fontSize = freezed,
    Object? lineHeight = freezed,
    Object? letterSpacing = freezed,
  }) {
    return _then(_value.copyWith(
      fontFamilyName: freezed == fontFamilyName
          ? _value.fontFamilyName
          : fontFamilyName // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFamilyStyle: freezed == fontFamilyStyle
          ? _value.fontFamilyStyle
          : fontFamilyStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      fontWeight: freezed == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      lineHeight: freezed == lineHeight
          ? _value.lineHeight
          : lineHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      letterSpacing: freezed == letterSpacing
          ? _value.letterSpacing
          : letterSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextStyleModelImplCopyWith<$Res>
    implements $TextStyleModelCopyWith<$Res> {
  factory _$$TextStyleModelImplCopyWith(_$TextStyleModelImpl value,
          $Res Function(_$TextStyleModelImpl) then) =
      __$$TextStyleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fontFamilyName,
      String? fontFamilyStyle,
      double? fontWeight,
      double? fontSize,
      double? lineHeight,
      double? letterSpacing});
}

/// @nodoc
class __$$TextStyleModelImplCopyWithImpl<$Res>
    extends _$TextStyleModelCopyWithImpl<$Res, _$TextStyleModelImpl>
    implements _$$TextStyleModelImplCopyWith<$Res> {
  __$$TextStyleModelImplCopyWithImpl(
      _$TextStyleModelImpl _value, $Res Function(_$TextStyleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamilyName = freezed,
    Object? fontFamilyStyle = freezed,
    Object? fontWeight = freezed,
    Object? fontSize = freezed,
    Object? lineHeight = freezed,
    Object? letterSpacing = freezed,
  }) {
    return _then(_$TextStyleModelImpl(
      fontFamilyName: freezed == fontFamilyName
          ? _value.fontFamilyName
          : fontFamilyName // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFamilyStyle: freezed == fontFamilyStyle
          ? _value.fontFamilyStyle
          : fontFamilyStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      fontWeight: freezed == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      lineHeight: freezed == lineHeight
          ? _value.lineHeight
          : lineHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      letterSpacing: freezed == letterSpacing
          ? _value.letterSpacing
          : letterSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextStyleModelImpl extends _TextStyleModel {
  const _$TextStyleModelImpl(
      {this.fontFamilyName,
      this.fontFamilyStyle,
      this.fontWeight,
      this.fontSize,
      this.lineHeight,
      this.letterSpacing})
      : super._();

  factory _$TextStyleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextStyleModelImplFromJson(json);

  @override
  final String? fontFamilyName;
  @override
  final String? fontFamilyStyle;
  @override
  final double? fontWeight;
  @override
  final double? fontSize;
  @override
  final double? lineHeight;
  @override
  final double? letterSpacing;

  @override
  String toString() {
    return 'TextStyleModel(fontFamilyName: $fontFamilyName, fontFamilyStyle: $fontFamilyStyle, fontWeight: $fontWeight, fontSize: $fontSize, lineHeight: $lineHeight, letterSpacing: $letterSpacing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextStyleModelImpl &&
            (identical(other.fontFamilyName, fontFamilyName) ||
                other.fontFamilyName == fontFamilyName) &&
            (identical(other.fontFamilyStyle, fontFamilyStyle) ||
                other.fontFamilyStyle == fontFamilyStyle) &&
            (identical(other.fontWeight, fontWeight) ||
                other.fontWeight == fontWeight) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.lineHeight, lineHeight) ||
                other.lineHeight == lineHeight) &&
            (identical(other.letterSpacing, letterSpacing) ||
                other.letterSpacing == letterSpacing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fontFamilyName, fontFamilyStyle,
      fontWeight, fontSize, lineHeight, letterSpacing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextStyleModelImplCopyWith<_$TextStyleModelImpl> get copyWith =>
      __$$TextStyleModelImplCopyWithImpl<_$TextStyleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextStyleModelImplToJson(
      this,
    );
  }
}

abstract class _TextStyleModel extends TextStyleModel {
  const factory _TextStyleModel(
      {final String? fontFamilyName,
      final String? fontFamilyStyle,
      final double? fontWeight,
      final double? fontSize,
      final double? lineHeight,
      final double? letterSpacing}) = _$TextStyleModelImpl;
  const _TextStyleModel._() : super._();

  factory _TextStyleModel.fromJson(Map<String, dynamic> json) =
      _$TextStyleModelImpl.fromJson;

  @override
  String? get fontFamilyName;
  @override
  String? get fontFamilyStyle;
  @override
  double? get fontWeight;
  @override
  double? get fontSize;
  @override
  double? get lineHeight;
  @override
  double? get letterSpacing;
  @override
  @JsonKey(ignore: true)
  _$$TextStyleModelImplCopyWith<_$TextStyleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
