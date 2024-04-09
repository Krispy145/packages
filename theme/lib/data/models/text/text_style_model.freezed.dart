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
  return _textStyleStringModel.fromJson(json);
}

/// @nodoc
mixin _$TextStyleModel {
  String? get fontFamilyName_string => throw _privateConstructorUsedError;
  FontStyle? get fontFamilyStyle_enum_fontStyle =>
      throw _privateConstructorUsedError;
  double? get fontWeight_double => throw _privateConstructorUsedError;
  double? get fontSize_double => throw _privateConstructorUsedError;
  double? get lineHeight_double => throw _privateConstructorUsedError;
  double? get letterSpacing_double => throw _privateConstructorUsedError;

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
      {String? fontFamilyName_string,
      FontStyle? fontFamilyStyle_enum_fontStyle,
      double? fontWeight_double,
      double? fontSize_double,
      double? lineHeight_double,
      double? letterSpacing_double});
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
    Object? fontFamilyName_string = freezed,
    Object? fontFamilyStyle_enum_fontStyle = freezed,
    Object? fontWeight_double = freezed,
    Object? fontSize_double = freezed,
    Object? lineHeight_double = freezed,
    Object? letterSpacing_double = freezed,
  }) {
    return _then(_value.copyWith(
      fontFamilyName_string: freezed == fontFamilyName_string
          ? _value.fontFamilyName_string
          : fontFamilyName_string // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFamilyStyle_enum_fontStyle: freezed == fontFamilyStyle_enum_fontStyle
          ? _value.fontFamilyStyle_enum_fontStyle
          : fontFamilyStyle_enum_fontStyle // ignore: cast_nullable_to_non_nullable
              as FontStyle?,
      fontWeight_double: freezed == fontWeight_double
          ? _value.fontWeight_double
          : fontWeight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      fontSize_double: freezed == fontSize_double
          ? _value.fontSize_double
          : fontSize_double // ignore: cast_nullable_to_non_nullable
              as double?,
      lineHeight_double: freezed == lineHeight_double
          ? _value.lineHeight_double
          : lineHeight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      letterSpacing_double: freezed == letterSpacing_double
          ? _value.letterSpacing_double
          : letterSpacing_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$textStyleStringModelImplCopyWith<$Res>
    implements $TextStyleModelCopyWith<$Res> {
  factory _$$textStyleStringModelImplCopyWith(_$textStyleStringModelImpl value,
          $Res Function(_$textStyleStringModelImpl) then) =
      __$$textStyleStringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fontFamilyName_string,
      FontStyle? fontFamilyStyle_enum_fontStyle,
      double? fontWeight_double,
      double? fontSize_double,
      double? lineHeight_double,
      double? letterSpacing_double});
}

/// @nodoc
class __$$textStyleStringModelImplCopyWithImpl<$Res>
    extends _$TextStyleModelCopyWithImpl<$Res, _$textStyleStringModelImpl>
    implements _$$textStyleStringModelImplCopyWith<$Res> {
  __$$textStyleStringModelImplCopyWithImpl(_$textStyleStringModelImpl _value,
      $Res Function(_$textStyleStringModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamilyName_string = freezed,
    Object? fontFamilyStyle_enum_fontStyle = freezed,
    Object? fontWeight_double = freezed,
    Object? fontSize_double = freezed,
    Object? lineHeight_double = freezed,
    Object? letterSpacing_double = freezed,
  }) {
    return _then(_$textStyleStringModelImpl(
      fontFamilyName_string: freezed == fontFamilyName_string
          ? _value.fontFamilyName_string
          : fontFamilyName_string // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFamilyStyle_enum_fontStyle: freezed == fontFamilyStyle_enum_fontStyle
          ? _value.fontFamilyStyle_enum_fontStyle
          : fontFamilyStyle_enum_fontStyle // ignore: cast_nullable_to_non_nullable
              as FontStyle?,
      fontWeight_double: freezed == fontWeight_double
          ? _value.fontWeight_double
          : fontWeight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      fontSize_double: freezed == fontSize_double
          ? _value.fontSize_double
          : fontSize_double // ignore: cast_nullable_to_non_nullable
              as double?,
      lineHeight_double: freezed == lineHeight_double
          ? _value.lineHeight_double
          : lineHeight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      letterSpacing_double: freezed == letterSpacing_double
          ? _value.letterSpacing_double
          : letterSpacing_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$textStyleStringModelImpl extends _textStyleStringModel {
  const _$textStyleStringModelImpl(
      {this.fontFamilyName_string,
      this.fontFamilyStyle_enum_fontStyle = FontStyle.normal,
      this.fontWeight_double,
      this.fontSize_double,
      this.lineHeight_double,
      this.letterSpacing_double})
      : super._();

  factory _$textStyleStringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$textStyleStringModelImplFromJson(json);

  @override
  final String? fontFamilyName_string;
  @override
  @JsonKey()
  final FontStyle? fontFamilyStyle_enum_fontStyle;
  @override
  final double? fontWeight_double;
  @override
  final double? fontSize_double;
  @override
  final double? lineHeight_double;
  @override
  final double? letterSpacing_double;

  @override
  String toString() {
    return 'TextStyleModel(fontFamilyName_string: $fontFamilyName_string, fontFamilyStyle_enum_fontStyle: $fontFamilyStyle_enum_fontStyle, fontWeight_double: $fontWeight_double, fontSize_double: $fontSize_double, lineHeight_double: $lineHeight_double, letterSpacing_double: $letterSpacing_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$textStyleStringModelImpl &&
            (identical(other.fontFamilyName_string, fontFamilyName_string) ||
                other.fontFamilyName_string == fontFamilyName_string) &&
            (identical(other.fontFamilyStyle_enum_fontStyle,
                    fontFamilyStyle_enum_fontStyle) ||
                other.fontFamilyStyle_enum_fontStyle ==
                    fontFamilyStyle_enum_fontStyle) &&
            (identical(other.fontWeight_double, fontWeight_double) ||
                other.fontWeight_double == fontWeight_double) &&
            (identical(other.fontSize_double, fontSize_double) ||
                other.fontSize_double == fontSize_double) &&
            (identical(other.lineHeight_double, lineHeight_double) ||
                other.lineHeight_double == lineHeight_double) &&
            (identical(other.letterSpacing_double, letterSpacing_double) ||
                other.letterSpacing_double == letterSpacing_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fontFamilyName_string,
      fontFamilyStyle_enum_fontStyle,
      fontWeight_double,
      fontSize_double,
      lineHeight_double,
      letterSpacing_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$textStyleStringModelImplCopyWith<_$textStyleStringModelImpl>
      get copyWith =>
          __$$textStyleStringModelImplCopyWithImpl<_$textStyleStringModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$textStyleStringModelImplToJson(
      this,
    );
  }
}

abstract class _textStyleStringModel extends TextStyleModel {
  const factory _textStyleStringModel(
      {final String? fontFamilyName_string,
      final FontStyle? fontFamilyStyle_enum_fontStyle,
      final double? fontWeight_double,
      final double? fontSize_double,
      final double? lineHeight_double,
      final double? letterSpacing_double}) = _$textStyleStringModelImpl;
  const _textStyleStringModel._() : super._();

  factory _textStyleStringModel.fromJson(Map<String, dynamic> json) =
      _$textStyleStringModelImpl.fromJson;

  @override
  String? get fontFamilyName_string;
  @override
  FontStyle? get fontFamilyStyle_enum_fontStyle;
  @override
  double? get fontWeight_double;
  @override
  double? get fontSize_double;
  @override
  double? get lineHeight_double;
  @override
  double? get letterSpacing_double;
  @override
  @JsonKey(ignore: true)
  _$$textStyleStringModelImplCopyWith<_$textStyleStringModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
