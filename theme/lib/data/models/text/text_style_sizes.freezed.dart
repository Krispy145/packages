// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_style_sizes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextStyleSizes _$TextStyleSizesFromJson(Map<String, dynamic> json) {
  return _TextStyleSizes.fromJson(json);
}

/// @nodoc
mixin _$TextStyleSizes {
  TextStyleModel? get large => throw _privateConstructorUsedError;
  TextStyleModel? get medium => throw _privateConstructorUsedError;
  TextStyleModel? get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextStyleSizesCopyWith<TextStyleSizes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextStyleSizesCopyWith<$Res> {
  factory $TextStyleSizesCopyWith(
          TextStyleSizes value, $Res Function(TextStyleSizes) then) =
      _$TextStyleSizesCopyWithImpl<$Res, TextStyleSizes>;
  @useResult
  $Res call(
      {TextStyleModel? large, TextStyleModel? medium, TextStyleModel? small});

  $TextStyleModelCopyWith<$Res>? get large;
  $TextStyleModelCopyWith<$Res>? get medium;
  $TextStyleModelCopyWith<$Res>? get small;
}

/// @nodoc
class _$TextStyleSizesCopyWithImpl<$Res, $Val extends TextStyleSizes>
    implements $TextStyleSizesCopyWith<$Res> {
  _$TextStyleSizesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
  }) {
    return _then(_value.copyWith(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as TextStyleModel?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as TextStyleModel?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as TextStyleModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextStyleModelCopyWith<$Res>? get large {
    if (_value.large == null) {
      return null;
    }

    return $TextStyleModelCopyWith<$Res>(_value.large!, (value) {
      return _then(_value.copyWith(large: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextStyleModelCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $TextStyleModelCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextStyleModelCopyWith<$Res>? get small {
    if (_value.small == null) {
      return null;
    }

    return $TextStyleModelCopyWith<$Res>(_value.small!, (value) {
      return _then(_value.copyWith(small: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextStyleSizesImplCopyWith<$Res>
    implements $TextStyleSizesCopyWith<$Res> {
  factory _$$TextStyleSizesImplCopyWith(_$TextStyleSizesImpl value,
          $Res Function(_$TextStyleSizesImpl) then) =
      __$$TextStyleSizesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextStyleModel? large, TextStyleModel? medium, TextStyleModel? small});

  @override
  $TextStyleModelCopyWith<$Res>? get large;
  @override
  $TextStyleModelCopyWith<$Res>? get medium;
  @override
  $TextStyleModelCopyWith<$Res>? get small;
}

/// @nodoc
class __$$TextStyleSizesImplCopyWithImpl<$Res>
    extends _$TextStyleSizesCopyWithImpl<$Res, _$TextStyleSizesImpl>
    implements _$$TextStyleSizesImplCopyWith<$Res> {
  __$$TextStyleSizesImplCopyWithImpl(
      _$TextStyleSizesImpl _value, $Res Function(_$TextStyleSizesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
  }) {
    return _then(_$TextStyleSizesImpl(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as TextStyleModel?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as TextStyleModel?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as TextStyleModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextStyleSizesImpl extends _TextStyleSizes {
  const _$TextStyleSizesImpl({this.large, this.medium, this.small}) : super._();

  factory _$TextStyleSizesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextStyleSizesImplFromJson(json);

  @override
  final TextStyleModel? large;
  @override
  final TextStyleModel? medium;
  @override
  final TextStyleModel? small;

  @override
  String toString() {
    return 'TextStyleSizes(large: $large, medium: $medium, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextStyleSizesImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, medium, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextStyleSizesImplCopyWith<_$TextStyleSizesImpl> get copyWith =>
      __$$TextStyleSizesImplCopyWithImpl<_$TextStyleSizesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextStyleSizesImplToJson(
      this,
    );
  }
}

abstract class _TextStyleSizes extends TextStyleSizes {
  const factory _TextStyleSizes(
      {final TextStyleModel? large,
      final TextStyleModel? medium,
      final TextStyleModel? small}) = _$TextStyleSizesImpl;
  const _TextStyleSizes._() : super._();

  factory _TextStyleSizes.fromJson(Map<String, dynamic> json) =
      _$TextStyleSizesImpl.fromJson;

  @override
  TextStyleModel? get large;
  @override
  TextStyleModel? get medium;
  @override
  TextStyleModel? get small;
  @override
  @JsonKey(ignore: true)
  _$$TextStyleSizesImplCopyWith<_$TextStyleSizesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
