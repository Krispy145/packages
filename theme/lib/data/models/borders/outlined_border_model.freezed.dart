// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outlined_border_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OutlinedBorderModel _$OutlinedBorderModelFromJson(Map<String, dynamic> json) {
  return _OutlinedBorderModel.fromJson(json);
}

/// @nodoc
mixin _$OutlinedBorderModel {
  OutlinedBorderType? get type_enum_outlinedBorderType =>
      throw _privateConstructorUsedError;
  BorderSideModel? get side_borderSide => throw _privateConstructorUsedError;
  BorderRadiusModel? get borderRadius_borderRadius =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutlinedBorderModelCopyWith<OutlinedBorderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutlinedBorderModelCopyWith<$Res> {
  factory $OutlinedBorderModelCopyWith(
          OutlinedBorderModel value, $Res Function(OutlinedBorderModel) then) =
      _$OutlinedBorderModelCopyWithImpl<$Res, OutlinedBorderModel>;
  @useResult
  $Res call(
      {OutlinedBorderType? type_enum_outlinedBorderType,
      BorderSideModel? side_borderSide,
      BorderRadiusModel? borderRadius_borderRadius});

  $BorderSideModelCopyWith<$Res>? get side_borderSide;
  $BorderRadiusModelCopyWith<$Res>? get borderRadius_borderRadius;
}

/// @nodoc
class _$OutlinedBorderModelCopyWithImpl<$Res, $Val extends OutlinedBorderModel>
    implements $OutlinedBorderModelCopyWith<$Res> {
  _$OutlinedBorderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_outlinedBorderType = freezed,
    Object? side_borderSide = freezed,
    Object? borderRadius_borderRadius = freezed,
  }) {
    return _then(_value.copyWith(
      type_enum_outlinedBorderType: freezed == type_enum_outlinedBorderType
          ? _value.type_enum_outlinedBorderType
          : type_enum_outlinedBorderType // ignore: cast_nullable_to_non_nullable
              as OutlinedBorderType?,
      side_borderSide: freezed == side_borderSide
          ? _value.side_borderSide
          : side_borderSide // ignore: cast_nullable_to_non_nullable
              as BorderSideModel?,
      borderRadius_borderRadius: freezed == borderRadius_borderRadius
          ? _value.borderRadius_borderRadius
          : borderRadius_borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadiusModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BorderSideModelCopyWith<$Res>? get side_borderSide {
    if (_value.side_borderSide == null) {
      return null;
    }

    return $BorderSideModelCopyWith<$Res>(_value.side_borderSide!, (value) {
      return _then(_value.copyWith(side_borderSide: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$OutlinedBorderModelImplCopyWith<$Res>
    implements $OutlinedBorderModelCopyWith<$Res> {
  factory _$$OutlinedBorderModelImplCopyWith(_$OutlinedBorderModelImpl value,
          $Res Function(_$OutlinedBorderModelImpl) then) =
      __$$OutlinedBorderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OutlinedBorderType? type_enum_outlinedBorderType,
      BorderSideModel? side_borderSide,
      BorderRadiusModel? borderRadius_borderRadius});

  @override
  $BorderSideModelCopyWith<$Res>? get side_borderSide;
  @override
  $BorderRadiusModelCopyWith<$Res>? get borderRadius_borderRadius;
}

/// @nodoc
class __$$OutlinedBorderModelImplCopyWithImpl<$Res>
    extends _$OutlinedBorderModelCopyWithImpl<$Res, _$OutlinedBorderModelImpl>
    implements _$$OutlinedBorderModelImplCopyWith<$Res> {
  __$$OutlinedBorderModelImplCopyWithImpl(_$OutlinedBorderModelImpl _value,
      $Res Function(_$OutlinedBorderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_outlinedBorderType = freezed,
    Object? side_borderSide = freezed,
    Object? borderRadius_borderRadius = freezed,
  }) {
    return _then(_$OutlinedBorderModelImpl(
      type_enum_outlinedBorderType: freezed == type_enum_outlinedBorderType
          ? _value.type_enum_outlinedBorderType
          : type_enum_outlinedBorderType // ignore: cast_nullable_to_non_nullable
              as OutlinedBorderType?,
      side_borderSide: freezed == side_borderSide
          ? _value.side_borderSide
          : side_borderSide // ignore: cast_nullable_to_non_nullable
              as BorderSideModel?,
      borderRadius_borderRadius: freezed == borderRadius_borderRadius
          ? _value.borderRadius_borderRadius
          : borderRadius_borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadiusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutlinedBorderModelImpl extends _OutlinedBorderModel {
  const _$OutlinedBorderModelImpl(
      {this.type_enum_outlinedBorderType =
          OutlinedBorderType.roundedRectangleBorder,
      this.side_borderSide = const BorderSideModel(),
      this.borderRadius_borderRadius = const BorderRadiusModel()})
      : super._();

  factory _$OutlinedBorderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutlinedBorderModelImplFromJson(json);

  @override
  @JsonKey()
  final OutlinedBorderType? type_enum_outlinedBorderType;
  @override
  @JsonKey()
  final BorderSideModel? side_borderSide;
  @override
  @JsonKey()
  final BorderRadiusModel? borderRadius_borderRadius;

  @override
  String toString() {
    return 'OutlinedBorderModel(type_enum_outlinedBorderType: $type_enum_outlinedBorderType, side_borderSide: $side_borderSide, borderRadius_borderRadius: $borderRadius_borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutlinedBorderModelImpl &&
            (identical(other.type_enum_outlinedBorderType,
                    type_enum_outlinedBorderType) ||
                other.type_enum_outlinedBorderType ==
                    type_enum_outlinedBorderType) &&
            (identical(other.side_borderSide, side_borderSide) ||
                other.side_borderSide == side_borderSide) &&
            (identical(other.borderRadius_borderRadius,
                    borderRadius_borderRadius) ||
                other.borderRadius_borderRadius == borderRadius_borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type_enum_outlinedBorderType,
      side_borderSide, borderRadius_borderRadius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutlinedBorderModelImplCopyWith<_$OutlinedBorderModelImpl> get copyWith =>
      __$$OutlinedBorderModelImplCopyWithImpl<_$OutlinedBorderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutlinedBorderModelImplToJson(
      this,
    );
  }
}

abstract class _OutlinedBorderModel extends OutlinedBorderModel {
  const factory _OutlinedBorderModel(
          {final OutlinedBorderType? type_enum_outlinedBorderType,
          final BorderSideModel? side_borderSide,
          final BorderRadiusModel? borderRadius_borderRadius}) =
      _$OutlinedBorderModelImpl;
  const _OutlinedBorderModel._() : super._();

  factory _OutlinedBorderModel.fromJson(Map<String, dynamic> json) =
      _$OutlinedBorderModelImpl.fromJson;

  @override
  OutlinedBorderType? get type_enum_outlinedBorderType;
  @override
  BorderSideModel? get side_borderSide;
  @override
  BorderRadiusModel? get borderRadius_borderRadius;
  @override
  @JsonKey(ignore: true)
  _$$OutlinedBorderModelImplCopyWith<_$OutlinedBorderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
