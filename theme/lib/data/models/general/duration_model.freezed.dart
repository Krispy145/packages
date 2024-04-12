// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DurationModel _$DurationModelFromJson(Map<String, dynamic> json) {
  return _DurationModel.fromJson(json);
}

/// @nodoc
mixin _$DurationModel {
  int? get days_int => throw _privateConstructorUsedError;
  int? get hours_int => throw _privateConstructorUsedError;
  int? get minutes_int => throw _privateConstructorUsedError;
  int? get seconds_int => throw _privateConstructorUsedError;
  int? get milliseconds_int => throw _privateConstructorUsedError;
  int? get microseconds_int => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DurationModelCopyWith<DurationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DurationModelCopyWith<$Res> {
  factory $DurationModelCopyWith(
          DurationModel value, $Res Function(DurationModel) then) =
      _$DurationModelCopyWithImpl<$Res, DurationModel>;
  @useResult
  $Res call(
      {int? days_int,
      int? hours_int,
      int? minutes_int,
      int? seconds_int,
      int? milliseconds_int,
      int? microseconds_int});
}

/// @nodoc
class _$DurationModelCopyWithImpl<$Res, $Val extends DurationModel>
    implements $DurationModelCopyWith<$Res> {
  _$DurationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days_int = freezed,
    Object? hours_int = freezed,
    Object? minutes_int = freezed,
    Object? seconds_int = freezed,
    Object? milliseconds_int = freezed,
    Object? microseconds_int = freezed,
  }) {
    return _then(_value.copyWith(
      days_int: freezed == days_int
          ? _value.days_int
          : days_int // ignore: cast_nullable_to_non_nullable
              as int?,
      hours_int: freezed == hours_int
          ? _value.hours_int
          : hours_int // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes_int: freezed == minutes_int
          ? _value.minutes_int
          : minutes_int // ignore: cast_nullable_to_non_nullable
              as int?,
      seconds_int: freezed == seconds_int
          ? _value.seconds_int
          : seconds_int // ignore: cast_nullable_to_non_nullable
              as int?,
      milliseconds_int: freezed == milliseconds_int
          ? _value.milliseconds_int
          : milliseconds_int // ignore: cast_nullable_to_non_nullable
              as int?,
      microseconds_int: freezed == microseconds_int
          ? _value.microseconds_int
          : microseconds_int // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DurationModelImplCopyWith<$Res>
    implements $DurationModelCopyWith<$Res> {
  factory _$$DurationModelImplCopyWith(
          _$DurationModelImpl value, $Res Function(_$DurationModelImpl) then) =
      __$$DurationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? days_int,
      int? hours_int,
      int? minutes_int,
      int? seconds_int,
      int? milliseconds_int,
      int? microseconds_int});
}

/// @nodoc
class __$$DurationModelImplCopyWithImpl<$Res>
    extends _$DurationModelCopyWithImpl<$Res, _$DurationModelImpl>
    implements _$$DurationModelImplCopyWith<$Res> {
  __$$DurationModelImplCopyWithImpl(
      _$DurationModelImpl _value, $Res Function(_$DurationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days_int = freezed,
    Object? hours_int = freezed,
    Object? minutes_int = freezed,
    Object? seconds_int = freezed,
    Object? milliseconds_int = freezed,
    Object? microseconds_int = freezed,
  }) {
    return _then(_$DurationModelImpl(
      days_int: freezed == days_int
          ? _value.days_int
          : days_int // ignore: cast_nullable_to_non_nullable
              as int?,
      hours_int: freezed == hours_int
          ? _value.hours_int
          : hours_int // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes_int: freezed == minutes_int
          ? _value.minutes_int
          : minutes_int // ignore: cast_nullable_to_non_nullable
              as int?,
      seconds_int: freezed == seconds_int
          ? _value.seconds_int
          : seconds_int // ignore: cast_nullable_to_non_nullable
              as int?,
      milliseconds_int: freezed == milliseconds_int
          ? _value.milliseconds_int
          : milliseconds_int // ignore: cast_nullable_to_non_nullable
              as int?,
      microseconds_int: freezed == microseconds_int
          ? _value.microseconds_int
          : microseconds_int // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DurationModelImpl extends _DurationModel {
  const _$DurationModelImpl(
      {this.days_int,
      this.hours_int,
      this.minutes_int,
      this.seconds_int,
      this.milliseconds_int,
      this.microseconds_int})
      : super._();

  factory _$DurationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DurationModelImplFromJson(json);

  @override
  final int? days_int;
  @override
  final int? hours_int;
  @override
  final int? minutes_int;
  @override
  final int? seconds_int;
  @override
  final int? milliseconds_int;
  @override
  final int? microseconds_int;

  @override
  String toString() {
    return 'DurationModel(days_int: $days_int, hours_int: $hours_int, minutes_int: $minutes_int, seconds_int: $seconds_int, milliseconds_int: $milliseconds_int, microseconds_int: $microseconds_int)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationModelImpl &&
            (identical(other.days_int, days_int) ||
                other.days_int == days_int) &&
            (identical(other.hours_int, hours_int) ||
                other.hours_int == hours_int) &&
            (identical(other.minutes_int, minutes_int) ||
                other.minutes_int == minutes_int) &&
            (identical(other.seconds_int, seconds_int) ||
                other.seconds_int == seconds_int) &&
            (identical(other.milliseconds_int, milliseconds_int) ||
                other.milliseconds_int == milliseconds_int) &&
            (identical(other.microseconds_int, microseconds_int) ||
                other.microseconds_int == microseconds_int));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, days_int, hours_int, minutes_int,
      seconds_int, milliseconds_int, microseconds_int);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationModelImplCopyWith<_$DurationModelImpl> get copyWith =>
      __$$DurationModelImplCopyWithImpl<_$DurationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DurationModelImplToJson(
      this,
    );
  }
}

abstract class _DurationModel extends DurationModel {
  const factory _DurationModel(
      {final int? days_int,
      final int? hours_int,
      final int? minutes_int,
      final int? seconds_int,
      final int? milliseconds_int,
      final int? microseconds_int}) = _$DurationModelImpl;
  const _DurationModel._() : super._();

  factory _DurationModel.fromJson(Map<String, dynamic> json) =
      _$DurationModelImpl.fromJson;

  @override
  int? get days_int;
  @override
  int? get hours_int;
  @override
  int? get minutes_int;
  @override
  int? get seconds_int;
  @override
  int? get milliseconds_int;
  @override
  int? get microseconds_int;
  @override
  @JsonKey(ignore: true)
  _$$DurationModelImplCopyWith<_$DurationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
