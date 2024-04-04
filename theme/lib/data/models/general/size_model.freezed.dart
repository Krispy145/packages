// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SizeModel _$SizeModelFromJson(Map<String, dynamic> json) {
  return _SizeModel.fromJson(json);
}

/// @nodoc
mixin _$SizeModel {
  double? get width_double => throw _privateConstructorUsedError;
  double? get height_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeModelCopyWith<SizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeModelCopyWith<$Res> {
  factory $SizeModelCopyWith(SizeModel value, $Res Function(SizeModel) then) =
      _$SizeModelCopyWithImpl<$Res, SizeModel>;
  @useResult
  $Res call({double? width_double, double? height_double});
}

/// @nodoc
class _$SizeModelCopyWithImpl<$Res, $Val extends SizeModel>
    implements $SizeModelCopyWith<$Res> {
  _$SizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width_double = freezed,
    Object? height_double = freezed,
  }) {
    return _then(_value.copyWith(
      width_double: freezed == width_double
          ? _value.width_double
          : width_double // ignore: cast_nullable_to_non_nullable
              as double?,
      height_double: freezed == height_double
          ? _value.height_double
          : height_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeModelImplCopyWith<$Res>
    implements $SizeModelCopyWith<$Res> {
  factory _$$SizeModelImplCopyWith(
          _$SizeModelImpl value, $Res Function(_$SizeModelImpl) then) =
      __$$SizeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? width_double, double? height_double});
}

/// @nodoc
class __$$SizeModelImplCopyWithImpl<$Res>
    extends _$SizeModelCopyWithImpl<$Res, _$SizeModelImpl>
    implements _$$SizeModelImplCopyWith<$Res> {
  __$$SizeModelImplCopyWithImpl(
      _$SizeModelImpl _value, $Res Function(_$SizeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width_double = freezed,
    Object? height_double = freezed,
  }) {
    return _then(_$SizeModelImpl(
      width_double: freezed == width_double
          ? _value.width_double
          : width_double // ignore: cast_nullable_to_non_nullable
              as double?,
      height_double: freezed == height_double
          ? _value.height_double
          : height_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeModelImpl extends _SizeModel {
  const _$SizeModelImpl({this.width_double, this.height_double}) : super._();

  factory _$SizeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeModelImplFromJson(json);

  @override
  final double? width_double;
  @override
  final double? height_double;

  @override
  String toString() {
    return 'SizeModel(width_double: $width_double, height_double: $height_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeModelImpl &&
            (identical(other.width_double, width_double) ||
                other.width_double == width_double) &&
            (identical(other.height_double, height_double) ||
                other.height_double == height_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width_double, height_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeModelImplCopyWith<_$SizeModelImpl> get copyWith =>
      __$$SizeModelImplCopyWithImpl<_$SizeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeModelImplToJson(
      this,
    );
  }
}

abstract class _SizeModel extends SizeModel {
  const factory _SizeModel(
      {final double? width_double,
      final double? height_double}) = _$SizeModelImpl;
  const _SizeModel._() : super._();

  factory _SizeModel.fromJson(Map<String, dynamic> json) =
      _$SizeModelImpl.fromJson;

  @override
  double? get width_double;
  @override
  double? get height_double;
  @override
  @JsonKey(ignore: true)
  _$$SizeModelImplCopyWith<_$SizeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
