// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_border_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputBorderModel _$InputBorderModelFromJson(Map<String, dynamic> json) {
  return _InputBorderModel.fromJson(json);
}

/// @nodoc
mixin _$InputBorderModel {
  InputBorderType? get type_enum_inputBorderType =>
      throw _privateConstructorUsedError;
  BorderRadiusModel? get borderRadius_borderRadius =>
      throw _privateConstructorUsedError;
  BorderSideModel? get borderSide_borderSide =>
      throw _privateConstructorUsedError;
  double? get gapPadding_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputBorderModelCopyWith<InputBorderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputBorderModelCopyWith<$Res> {
  factory $InputBorderModelCopyWith(
          InputBorderModel value, $Res Function(InputBorderModel) then) =
      _$InputBorderModelCopyWithImpl<$Res, InputBorderModel>;
  @useResult
  $Res call(
      {InputBorderType? type_enum_inputBorderType,
      BorderRadiusModel? borderRadius_borderRadius,
      BorderSideModel? borderSide_borderSide,
      double? gapPadding_double});

  $BorderRadiusModelCopyWith<$Res>? get borderRadius_borderRadius;
  $BorderSideModelCopyWith<$Res>? get borderSide_borderSide;
}

/// @nodoc
class _$InputBorderModelCopyWithImpl<$Res, $Val extends InputBorderModel>
    implements $InputBorderModelCopyWith<$Res> {
  _$InputBorderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_inputBorderType = freezed,
    Object? borderRadius_borderRadius = freezed,
    Object? borderSide_borderSide = freezed,
    Object? gapPadding_double = freezed,
  }) {
    return _then(_value.copyWith(
      type_enum_inputBorderType: freezed == type_enum_inputBorderType
          ? _value.type_enum_inputBorderType
          : type_enum_inputBorderType // ignore: cast_nullable_to_non_nullable
              as InputBorderType?,
      borderRadius_borderRadius: freezed == borderRadius_borderRadius
          ? _value.borderRadius_borderRadius
          : borderRadius_borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadiusModel?,
      borderSide_borderSide: freezed == borderSide_borderSide
          ? _value.borderSide_borderSide
          : borderSide_borderSide // ignore: cast_nullable_to_non_nullable
              as BorderSideModel?,
      gapPadding_double: freezed == gapPadding_double
          ? _value.gapPadding_double
          : gapPadding_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BorderRadiusModelCopyWith<$Res>? get borderRadius_borderRadius {
    if (_value.borderRadius_borderRadius == null) {
      return null;
    }

    return $BorderRadiusModelCopyWith<$Res>(_value.borderRadius_borderRadius!,
        (value) {
      return _then(_value.copyWith(borderRadius_borderRadius: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BorderSideModelCopyWith<$Res>? get borderSide_borderSide {
    if (_value.borderSide_borderSide == null) {
      return null;
    }

    return $BorderSideModelCopyWith<$Res>(_value.borderSide_borderSide!,
        (value) {
      return _then(_value.copyWith(borderSide_borderSide: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InputBorderModelImplCopyWith<$Res>
    implements $InputBorderModelCopyWith<$Res> {
  factory _$$InputBorderModelImplCopyWith(_$InputBorderModelImpl value,
          $Res Function(_$InputBorderModelImpl) then) =
      __$$InputBorderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputBorderType? type_enum_inputBorderType,
      BorderRadiusModel? borderRadius_borderRadius,
      BorderSideModel? borderSide_borderSide,
      double? gapPadding_double});

  @override
  $BorderRadiusModelCopyWith<$Res>? get borderRadius_borderRadius;
  @override
  $BorderSideModelCopyWith<$Res>? get borderSide_borderSide;
}

/// @nodoc
class __$$InputBorderModelImplCopyWithImpl<$Res>
    extends _$InputBorderModelCopyWithImpl<$Res, _$InputBorderModelImpl>
    implements _$$InputBorderModelImplCopyWith<$Res> {
  __$$InputBorderModelImplCopyWithImpl(_$InputBorderModelImpl _value,
      $Res Function(_$InputBorderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_inputBorderType = freezed,
    Object? borderRadius_borderRadius = freezed,
    Object? borderSide_borderSide = freezed,
    Object? gapPadding_double = freezed,
  }) {
    return _then(_$InputBorderModelImpl(
      type_enum_inputBorderType: freezed == type_enum_inputBorderType
          ? _value.type_enum_inputBorderType
          : type_enum_inputBorderType // ignore: cast_nullable_to_non_nullable
              as InputBorderType?,
      borderRadius_borderRadius: freezed == borderRadius_borderRadius
          ? _value.borderRadius_borderRadius
          : borderRadius_borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadiusModel?,
      borderSide_borderSide: freezed == borderSide_borderSide
          ? _value.borderSide_borderSide
          : borderSide_borderSide // ignore: cast_nullable_to_non_nullable
              as BorderSideModel?,
      gapPadding_double: freezed == gapPadding_double
          ? _value.gapPadding_double
          : gapPadding_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputBorderModelImpl extends _InputBorderModel {
  const _$InputBorderModelImpl(
      {this.type_enum_inputBorderType,
      this.borderRadius_borderRadius = const BorderRadiusModel(),
      this.borderSide_borderSide = const BorderSideModel(),
      this.gapPadding_double})
      : super._();

  factory _$InputBorderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputBorderModelImplFromJson(json);

  @override
  final InputBorderType? type_enum_inputBorderType;
  @override
  @JsonKey()
  final BorderRadiusModel? borderRadius_borderRadius;
  @override
  @JsonKey()
  final BorderSideModel? borderSide_borderSide;
  @override
  final double? gapPadding_double;

  @override
  String toString() {
    return 'InputBorderModel(type_enum_inputBorderType: $type_enum_inputBorderType, borderRadius_borderRadius: $borderRadius_borderRadius, borderSide_borderSide: $borderSide_borderSide, gapPadding_double: $gapPadding_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputBorderModelImpl &&
            (identical(other.type_enum_inputBorderType,
                    type_enum_inputBorderType) ||
                other.type_enum_inputBorderType == type_enum_inputBorderType) &&
            (identical(other.borderRadius_borderRadius,
                    borderRadius_borderRadius) ||
                other.borderRadius_borderRadius == borderRadius_borderRadius) &&
            (identical(other.borderSide_borderSide, borderSide_borderSide) ||
                other.borderSide_borderSide == borderSide_borderSide) &&
            (identical(other.gapPadding_double, gapPadding_double) ||
                other.gapPadding_double == gapPadding_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type_enum_inputBorderType,
      borderRadius_borderRadius, borderSide_borderSide, gapPadding_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputBorderModelImplCopyWith<_$InputBorderModelImpl> get copyWith =>
      __$$InputBorderModelImplCopyWithImpl<_$InputBorderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputBorderModelImplToJson(
      this,
    );
  }
}

abstract class _InputBorderModel extends InputBorderModel {
  const factory _InputBorderModel(
      {final InputBorderType? type_enum_inputBorderType,
      final BorderRadiusModel? borderRadius_borderRadius,
      final BorderSideModel? borderSide_borderSide,
      final double? gapPadding_double}) = _$InputBorderModelImpl;
  const _InputBorderModel._() : super._();

  factory _InputBorderModel.fromJson(Map<String, dynamic> json) =
      _$InputBorderModelImpl.fromJson;

  @override
  InputBorderType? get type_enum_inputBorderType;
  @override
  BorderRadiusModel? get borderRadius_borderRadius;
  @override
  BorderSideModel? get borderSide_borderSide;
  @override
  double? get gapPadding_double;
  @override
  @JsonKey(ignore: true)
  _$$InputBorderModelImplCopyWith<_$InputBorderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
