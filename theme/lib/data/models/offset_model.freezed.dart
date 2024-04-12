// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffsetModel _$OffsetModelFromJson(Map<String, dynamic> json) {
  return _OffsetModel.fromJson(json);
}

/// @nodoc
mixin _$OffsetModel {
// @Default(OffsetTypes.all) OffsetTypes? type_enum_OffsetTypes,
  double? get dx_double => throw _privateConstructorUsedError;
  double? get dy_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffsetModelCopyWith<OffsetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffsetModelCopyWith<$Res> {
  factory $OffsetModelCopyWith(
          OffsetModel value, $Res Function(OffsetModel) then) =
      _$OffsetModelCopyWithImpl<$Res, OffsetModel>;
  @useResult
  $Res call({double? dx_double, double? dy_double});
}

/// @nodoc
class _$OffsetModelCopyWithImpl<$Res, $Val extends OffsetModel>
    implements $OffsetModelCopyWith<$Res> {
  _$OffsetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx_double = freezed,
    Object? dy_double = freezed,
  }) {
    return _then(_value.copyWith(
      dx_double: freezed == dx_double
          ? _value.dx_double
          : dx_double // ignore: cast_nullable_to_non_nullable
              as double?,
      dy_double: freezed == dy_double
          ? _value.dy_double
          : dy_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffsetModelImplCopyWith<$Res>
    implements $OffsetModelCopyWith<$Res> {
  factory _$$OffsetModelImplCopyWith(
          _$OffsetModelImpl value, $Res Function(_$OffsetModelImpl) then) =
      __$$OffsetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? dx_double, double? dy_double});
}

/// @nodoc
class __$$OffsetModelImplCopyWithImpl<$Res>
    extends _$OffsetModelCopyWithImpl<$Res, _$OffsetModelImpl>
    implements _$$OffsetModelImplCopyWith<$Res> {
  __$$OffsetModelImplCopyWithImpl(
      _$OffsetModelImpl _value, $Res Function(_$OffsetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx_double = freezed,
    Object? dy_double = freezed,
  }) {
    return _then(_$OffsetModelImpl(
      dx_double: freezed == dx_double
          ? _value.dx_double
          : dx_double // ignore: cast_nullable_to_non_nullable
              as double?,
      dy_double: freezed == dy_double
          ? _value.dy_double
          : dy_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffsetModelImpl extends _OffsetModel {
  const _$OffsetModelImpl({this.dx_double = 0, this.dy_double = 0}) : super._();

  factory _$OffsetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffsetModelImplFromJson(json);

// @Default(OffsetTypes.all) OffsetTypes? type_enum_OffsetTypes,
  @override
  @JsonKey()
  final double? dx_double;
  @override
  @JsonKey()
  final double? dy_double;

  @override
  String toString() {
    return 'OffsetModel(dx_double: $dx_double, dy_double: $dy_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffsetModelImpl &&
            (identical(other.dx_double, dx_double) ||
                other.dx_double == dx_double) &&
            (identical(other.dy_double, dy_double) ||
                other.dy_double == dy_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dx_double, dy_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffsetModelImplCopyWith<_$OffsetModelImpl> get copyWith =>
      __$$OffsetModelImplCopyWithImpl<_$OffsetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffsetModelImplToJson(
      this,
    );
  }
}

abstract class _OffsetModel extends OffsetModel {
  const factory _OffsetModel(
      {final double? dx_double, final double? dy_double}) = _$OffsetModelImpl;
  const _OffsetModel._() : super._();

  factory _OffsetModel.fromJson(Map<String, dynamic> json) =
      _$OffsetModelImpl.fromJson;

  @override // @Default(OffsetTypes.all) OffsetTypes? type_enum_OffsetTypes,
  double? get dx_double;
  @override
  double? get dy_double;
  @override
  @JsonKey(ignore: true)
  _$$OffsetModelImplCopyWith<_$OffsetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
