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
  String? get fillColor => throw _privateConstructorUsedError;
  String? get overlayColor => throw _privateConstructorUsedError;
  double? get splashRadius => throw _privateConstructorUsedError;

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
  $Res call({String? fillColor, String? overlayColor, double? splashRadius});
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
    Object? fillColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
  }) {
    return _then(_value.copyWith(
      fillColor: freezed == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _value.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _value.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? fillColor, String? overlayColor, double? splashRadius});
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
    Object? fillColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
  }) {
    return _then(_$RadioModelImpl(
      fillColor: freezed == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _value.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _value.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RadioModelImpl extends _RadioModel {
  const _$RadioModelImpl({this.fillColor, this.overlayColor, this.splashRadius})
      : super._();

  factory _$RadioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RadioModelImplFromJson(json);

  @override
  final String? fillColor;
  @override
  final String? overlayColor;
  @override
  final double? splashRadius;

  @override
  String toString() {
    return 'RadioModel(fillColor: $fillColor, overlayColor: $overlayColor, splashRadius: $splashRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioModelImpl &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fillColor, overlayColor, splashRadius);

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
      {final String? fillColor,
      final String? overlayColor,
      final double? splashRadius}) = _$RadioModelImpl;
  const _RadioModel._() : super._();

  factory _RadioModel.fromJson(Map<String, dynamic> json) =
      _$RadioModelImpl.fromJson;

  @override
  String? get fillColor;
  @override
  String? get overlayColor;
  @override
  double? get splashRadius;
  @override
  @JsonKey(ignore: true)
  _$$RadioModelImplCopyWith<_$RadioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
