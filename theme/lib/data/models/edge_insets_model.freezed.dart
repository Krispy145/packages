// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edge_insets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EdgeInsetsModel _$EdgeInsetsModelFromJson(Map<String, dynamic> json) {
  return _EdgeInsetsModel.fromJson(json);
}

/// @nodoc
mixin _$EdgeInsetsModel {
// @Default(EdgeInsetsTypes.all) EdgeInsetsTypes? type_enum_edgeInsetsTypes,
  double? get top_double => throw _privateConstructorUsedError;
  double? get left_double => throw _privateConstructorUsedError;
  double? get bottom_double => throw _privateConstructorUsedError;
  double? get right_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EdgeInsetsModelCopyWith<EdgeInsetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgeInsetsModelCopyWith<$Res> {
  factory $EdgeInsetsModelCopyWith(
          EdgeInsetsModel value, $Res Function(EdgeInsetsModel) then) =
      _$EdgeInsetsModelCopyWithImpl<$Res, EdgeInsetsModel>;
  @useResult
  $Res call(
      {double? top_double,
      double? left_double,
      double? bottom_double,
      double? right_double});
}

/// @nodoc
class _$EdgeInsetsModelCopyWithImpl<$Res, $Val extends EdgeInsetsModel>
    implements $EdgeInsetsModelCopyWith<$Res> {
  _$EdgeInsetsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_double = freezed,
    Object? left_double = freezed,
    Object? bottom_double = freezed,
    Object? right_double = freezed,
  }) {
    return _then(_value.copyWith(
      top_double: freezed == top_double
          ? _value.top_double
          : top_double // ignore: cast_nullable_to_non_nullable
              as double?,
      left_double: freezed == left_double
          ? _value.left_double
          : left_double // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom_double: freezed == bottom_double
          ? _value.bottom_double
          : bottom_double // ignore: cast_nullable_to_non_nullable
              as double?,
      right_double: freezed == right_double
          ? _value.right_double
          : right_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EdgeInsetsModelImplCopyWith<$Res>
    implements $EdgeInsetsModelCopyWith<$Res> {
  factory _$$EdgeInsetsModelImplCopyWith(_$EdgeInsetsModelImpl value,
          $Res Function(_$EdgeInsetsModelImpl) then) =
      __$$EdgeInsetsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? top_double,
      double? left_double,
      double? bottom_double,
      double? right_double});
}

/// @nodoc
class __$$EdgeInsetsModelImplCopyWithImpl<$Res>
    extends _$EdgeInsetsModelCopyWithImpl<$Res, _$EdgeInsetsModelImpl>
    implements _$$EdgeInsetsModelImplCopyWith<$Res> {
  __$$EdgeInsetsModelImplCopyWithImpl(
      _$EdgeInsetsModelImpl _value, $Res Function(_$EdgeInsetsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_double = freezed,
    Object? left_double = freezed,
    Object? bottom_double = freezed,
    Object? right_double = freezed,
  }) {
    return _then(_$EdgeInsetsModelImpl(
      top_double: freezed == top_double
          ? _value.top_double
          : top_double // ignore: cast_nullable_to_non_nullable
              as double?,
      left_double: freezed == left_double
          ? _value.left_double
          : left_double // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom_double: freezed == bottom_double
          ? _value.bottom_double
          : bottom_double // ignore: cast_nullable_to_non_nullable
              as double?,
      right_double: freezed == right_double
          ? _value.right_double
          : right_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdgeInsetsModelImpl extends _EdgeInsetsModel {
  const _$EdgeInsetsModelImpl(
      {this.top_double,
      this.left_double,
      this.bottom_double,
      this.right_double})
      : super._();

  factory _$EdgeInsetsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgeInsetsModelImplFromJson(json);

// @Default(EdgeInsetsTypes.all) EdgeInsetsTypes? type_enum_edgeInsetsTypes,
  @override
  final double? top_double;
  @override
  final double? left_double;
  @override
  final double? bottom_double;
  @override
  final double? right_double;

  @override
  String toString() {
    return 'EdgeInsetsModel(top_double: $top_double, left_double: $left_double, bottom_double: $bottom_double, right_double: $right_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdgeInsetsModelImpl &&
            (identical(other.top_double, top_double) ||
                other.top_double == top_double) &&
            (identical(other.left_double, left_double) ||
                other.left_double == left_double) &&
            (identical(other.bottom_double, bottom_double) ||
                other.bottom_double == bottom_double) &&
            (identical(other.right_double, right_double) ||
                other.right_double == right_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, top_double, left_double, bottom_double, right_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EdgeInsetsModelImplCopyWith<_$EdgeInsetsModelImpl> get copyWith =>
      __$$EdgeInsetsModelImplCopyWithImpl<_$EdgeInsetsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgeInsetsModelImplToJson(
      this,
    );
  }
}

abstract class _EdgeInsetsModel extends EdgeInsetsModel {
  const factory _EdgeInsetsModel(
      {final double? top_double,
      final double? left_double,
      final double? bottom_double,
      final double? right_double}) = _$EdgeInsetsModelImpl;
  const _EdgeInsetsModel._() : super._();

  factory _EdgeInsetsModel.fromJson(Map<String, dynamic> json) =
      _$EdgeInsetsModelImpl.fromJson;

  @override // @Default(EdgeInsetsTypes.all) EdgeInsetsTypes? type_enum_edgeInsetsTypes,
  double? get top_double;
  @override
  double? get left_double;
  @override
  double? get bottom_double;
  @override
  double? get right_double;
  @override
  @JsonKey(ignore: true)
  _$$EdgeInsetsModelImplCopyWith<_$EdgeInsetsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
