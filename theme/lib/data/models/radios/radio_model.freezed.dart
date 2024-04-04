// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RadioModel _$RadioModelFromJson(Map<String, dynamic> json) {
  return _RadioModel.fromJson(json);
}

/// @nodoc
mixin _$RadioModel {
  String? get fillColor_color => throw _privateConstructorUsedError;
  String? get overlayColor_color => throw _privateConstructorUsedError;
  double? get splashRadius_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RadioModelCopyWith<RadioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioModelCopyWith<$Res> {
  factory $RadioModelCopyWith(
          RadioModel value, $Res Function(RadioModel) then) =
      _$RadioModelCopyWithImpl<$Res, RadioModel>;
  @useResult
  $Res call(
      {String? fillColor_color,
      String? overlayColor_color,
      double? splashRadius_double});
}

/// @nodoc
class _$RadioModelCopyWithImpl<$Res, $Val extends RadioModel>
    implements $RadioModelCopyWith<$Res> {
  _$RadioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillColor_color = freezed,
    Object? overlayColor_color = freezed,
    Object? splashRadius_double = freezed,
  }) {
    return _then(_value.copyWith(
      fillColor_color: freezed == fillColor_color
          ? _value.fillColor_color
          : fillColor_color // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor_color: freezed == overlayColor_color
          ? _value.overlayColor_color
          : overlayColor_color // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius_double: freezed == splashRadius_double
          ? _value.splashRadius_double
          : splashRadius_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RadioModelImplCopyWith<$Res>
    implements $RadioModelCopyWith<$Res> {
  factory _$$RadioModelImplCopyWith(
          _$RadioModelImpl value, $Res Function(_$RadioModelImpl) then) =
      __$$RadioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fillColor_color,
      String? overlayColor_color,
      double? splashRadius_double});
}

/// @nodoc
class __$$RadioModelImplCopyWithImpl<$Res>
    extends _$RadioModelCopyWithImpl<$Res, _$RadioModelImpl>
    implements _$$RadioModelImplCopyWith<$Res> {
  __$$RadioModelImplCopyWithImpl(
      _$RadioModelImpl _value, $Res Function(_$RadioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillColor_color = freezed,
    Object? overlayColor_color = freezed,
    Object? splashRadius_double = freezed,
  }) {
    return _then(_$RadioModelImpl(
      fillColor_color: freezed == fillColor_color
          ? _value.fillColor_color
          : fillColor_color // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor_color: freezed == overlayColor_color
          ? _value.overlayColor_color
          : overlayColor_color // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius_double: freezed == splashRadius_double
          ? _value.splashRadius_double
          : splashRadius_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RadioModelImpl extends _RadioModel {
  const _$RadioModelImpl(
      {this.fillColor_color, this.overlayColor_color, this.splashRadius_double})
      : super._();

  factory _$RadioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RadioModelImplFromJson(json);

  @override
  final String? fillColor_color;
  @override
  final String? overlayColor_color;
  @override
  final double? splashRadius_double;

  @override
  String toString() {
    return 'RadioModel(fillColor_color: $fillColor_color, overlayColor_color: $overlayColor_color, splashRadius_double: $splashRadius_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioModelImpl &&
            (identical(other.fillColor_color, fillColor_color) ||
                other.fillColor_color == fillColor_color) &&
            (identical(other.overlayColor_color, overlayColor_color) ||
                other.overlayColor_color == overlayColor_color) &&
            (identical(other.splashRadius_double, splashRadius_double) ||
                other.splashRadius_double == splashRadius_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fillColor_color, overlayColor_color, splashRadius_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioModelImplCopyWith<_$RadioModelImpl> get copyWith =>
      __$$RadioModelImplCopyWithImpl<_$RadioModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RadioModelImplToJson(
      this,
    );
  }
}

abstract class _RadioModel extends RadioModel {
  const factory _RadioModel(
      {final String? fillColor_color,
      final String? overlayColor_color,
      final double? splashRadius_double}) = _$RadioModelImpl;
  const _RadioModel._() : super._();

  factory _RadioModel.fromJson(Map<String, dynamic> json) =
      _$RadioModelImpl.fromJson;

  @override
  String? get fillColor_color;
  @override
  String? get overlayColor_color;
  @override
  double? get splashRadius_double;
  @override
  @JsonKey(ignore: true)
  _$$RadioModelImplCopyWith<_$RadioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
