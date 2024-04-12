// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'border_radius_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BorderRadiusModel _$BorderRadiusModelFromJson(Map<String, dynamic> json) {
  return _BorderRadiusModel.fromJson(json);
}

/// @nodoc
mixin _$BorderRadiusModel {
  BorderRadiusType? get type_enum_borderRadiusType =>
      throw _privateConstructorUsedError;
  double? get topLeft_double => throw _privateConstructorUsedError;
  double? get topRight_double => throw _privateConstructorUsedError;
  double? get bottomLeft_double => throw _privateConstructorUsedError;
  double? get bottomRight_double => throw _privateConstructorUsedError;
  double? get all_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BorderRadiusModelCopyWith<BorderRadiusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BorderRadiusModelCopyWith<$Res> {
  factory $BorderRadiusModelCopyWith(
          BorderRadiusModel value, $Res Function(BorderRadiusModel) then) =
      _$BorderRadiusModelCopyWithImpl<$Res, BorderRadiusModel>;
  @useResult
  $Res call(
      {BorderRadiusType? type_enum_borderRadiusType,
      double? topLeft_double,
      double? topRight_double,
      double? bottomLeft_double,
      double? bottomRight_double,
      double? all_double});
}

/// @nodoc
class _$BorderRadiusModelCopyWithImpl<$Res, $Val extends BorderRadiusModel>
    implements $BorderRadiusModelCopyWith<$Res> {
  _$BorderRadiusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_borderRadiusType = freezed,
    Object? topLeft_double = freezed,
    Object? topRight_double = freezed,
    Object? bottomLeft_double = freezed,
    Object? bottomRight_double = freezed,
    Object? all_double = freezed,
  }) {
    return _then(_value.copyWith(
      type_enum_borderRadiusType: freezed == type_enum_borderRadiusType
          ? _value.type_enum_borderRadiusType
          : type_enum_borderRadiusType // ignore: cast_nullable_to_non_nullable
              as BorderRadiusType?,
      topLeft_double: freezed == topLeft_double
          ? _value.topLeft_double
          : topLeft_double // ignore: cast_nullable_to_non_nullable
              as double?,
      topRight_double: freezed == topRight_double
          ? _value.topRight_double
          : topRight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      bottomLeft_double: freezed == bottomLeft_double
          ? _value.bottomLeft_double
          : bottomLeft_double // ignore: cast_nullable_to_non_nullable
              as double?,
      bottomRight_double: freezed == bottomRight_double
          ? _value.bottomRight_double
          : bottomRight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      all_double: freezed == all_double
          ? _value.all_double
          : all_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BorderRadiusModelImplCopyWith<$Res>
    implements $BorderRadiusModelCopyWith<$Res> {
  factory _$$BorderRadiusModelImplCopyWith(_$BorderRadiusModelImpl value,
          $Res Function(_$BorderRadiusModelImpl) then) =
      __$$BorderRadiusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BorderRadiusType? type_enum_borderRadiusType,
      double? topLeft_double,
      double? topRight_double,
      double? bottomLeft_double,
      double? bottomRight_double,
      double? all_double});
}

/// @nodoc
class __$$BorderRadiusModelImplCopyWithImpl<$Res>
    extends _$BorderRadiusModelCopyWithImpl<$Res, _$BorderRadiusModelImpl>
    implements _$$BorderRadiusModelImplCopyWith<$Res> {
  __$$BorderRadiusModelImplCopyWithImpl(_$BorderRadiusModelImpl _value,
      $Res Function(_$BorderRadiusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_borderRadiusType = freezed,
    Object? topLeft_double = freezed,
    Object? topRight_double = freezed,
    Object? bottomLeft_double = freezed,
    Object? bottomRight_double = freezed,
    Object? all_double = freezed,
  }) {
    return _then(_$BorderRadiusModelImpl(
      type_enum_borderRadiusType: freezed == type_enum_borderRadiusType
          ? _value.type_enum_borderRadiusType
          : type_enum_borderRadiusType // ignore: cast_nullable_to_non_nullable
              as BorderRadiusType?,
      topLeft_double: freezed == topLeft_double
          ? _value.topLeft_double
          : topLeft_double // ignore: cast_nullable_to_non_nullable
              as double?,
      topRight_double: freezed == topRight_double
          ? _value.topRight_double
          : topRight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      bottomLeft_double: freezed == bottomLeft_double
          ? _value.bottomLeft_double
          : bottomLeft_double // ignore: cast_nullable_to_non_nullable
              as double?,
      bottomRight_double: freezed == bottomRight_double
          ? _value.bottomRight_double
          : bottomRight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      all_double: freezed == all_double
          ? _value.all_double
          : all_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BorderRadiusModelImpl extends _BorderRadiusModel {
  const _$BorderRadiusModelImpl(
      {this.type_enum_borderRadiusType = BorderRadiusType.circular,
      this.topLeft_double,
      this.topRight_double,
      this.bottomLeft_double,
      this.bottomRight_double,
      this.all_double})
      : super._();

  factory _$BorderRadiusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BorderRadiusModelImplFromJson(json);

  @override
  @JsonKey()
  final BorderRadiusType? type_enum_borderRadiusType;
  @override
  final double? topLeft_double;
  @override
  final double? topRight_double;
  @override
  final double? bottomLeft_double;
  @override
  final double? bottomRight_double;
  @override
  final double? all_double;

  @override
  String toString() {
    return 'BorderRadiusModel(type_enum_borderRadiusType: $type_enum_borderRadiusType, topLeft_double: $topLeft_double, topRight_double: $topRight_double, bottomLeft_double: $bottomLeft_double, bottomRight_double: $bottomRight_double, all_double: $all_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BorderRadiusModelImpl &&
            (identical(other.type_enum_borderRadiusType,
                    type_enum_borderRadiusType) ||
                other.type_enum_borderRadiusType ==
                    type_enum_borderRadiusType) &&
            (identical(other.topLeft_double, topLeft_double) ||
                other.topLeft_double == topLeft_double) &&
            (identical(other.topRight_double, topRight_double) ||
                other.topRight_double == topRight_double) &&
            (identical(other.bottomLeft_double, bottomLeft_double) ||
                other.bottomLeft_double == bottomLeft_double) &&
            (identical(other.bottomRight_double, bottomRight_double) ||
                other.bottomRight_double == bottomRight_double) &&
            (identical(other.all_double, all_double) ||
                other.all_double == all_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type_enum_borderRadiusType,
      topLeft_double,
      topRight_double,
      bottomLeft_double,
      bottomRight_double,
      all_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BorderRadiusModelImplCopyWith<_$BorderRadiusModelImpl> get copyWith =>
      __$$BorderRadiusModelImplCopyWithImpl<_$BorderRadiusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BorderRadiusModelImplToJson(
      this,
    );
  }
}

abstract class _BorderRadiusModel extends BorderRadiusModel {
  const factory _BorderRadiusModel(
      {final BorderRadiusType? type_enum_borderRadiusType,
      final double? topLeft_double,
      final double? topRight_double,
      final double? bottomLeft_double,
      final double? bottomRight_double,
      final double? all_double}) = _$BorderRadiusModelImpl;
  const _BorderRadiusModel._() : super._();

  factory _BorderRadiusModel.fromJson(Map<String, dynamic> json) =
      _$BorderRadiusModelImpl.fromJson;

  @override
  BorderRadiusType? get type_enum_borderRadiusType;
  @override
  double? get topLeft_double;
  @override
  double? get topRight_double;
  @override
  double? get bottomLeft_double;
  @override
  double? get bottomRight_double;
  @override
  double? get all_double;
  @override
  @JsonKey(ignore: true)
  _$$BorderRadiusModelImplCopyWith<_$BorderRadiusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
