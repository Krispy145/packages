// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppDestination _$AppDestinationFromJson(Map<String, dynamic> json) {
  return _AppDestination.fromJson(json);
}

/// @nodoc
mixin _$AppDestination {
  String get routeName => throw _privateConstructorUsedError;
  Map<String, String>? get arguments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppDestinationCopyWith<AppDestination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDestinationCopyWith<$Res> {
  factory $AppDestinationCopyWith(
          AppDestination value, $Res Function(AppDestination) then) =
      _$AppDestinationCopyWithImpl<$Res, AppDestination>;
  @useResult
  $Res call({String routeName, Map<String, String>? arguments});
}

/// @nodoc
class _$AppDestinationCopyWithImpl<$Res, $Val extends AppDestination>
    implements $AppDestinationCopyWith<$Res> {
  _$AppDestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? arguments = freezed,
  }) {
    return _then(_value.copyWith(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppDestinationImplCopyWith<$Res>
    implements $AppDestinationCopyWith<$Res> {
  factory _$$AppDestinationImplCopyWith(_$AppDestinationImpl value,
          $Res Function(_$AppDestinationImpl) then) =
      __$$AppDestinationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String routeName, Map<String, String>? arguments});
}

/// @nodoc
class __$$AppDestinationImplCopyWithImpl<$Res>
    extends _$AppDestinationCopyWithImpl<$Res, _$AppDestinationImpl>
    implements _$$AppDestinationImplCopyWith<$Res> {
  __$$AppDestinationImplCopyWithImpl(
      _$AppDestinationImpl _value, $Res Function(_$AppDestinationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? arguments = freezed,
  }) {
    return _then(_$AppDestinationImpl(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppDestinationImpl extends _AppDestination {
  const _$AppDestinationImpl({required this.routeName, this.arguments})
      : super._();

  factory _$AppDestinationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppDestinationImplFromJson(json);

  @override
  final String routeName;
  @override
  final Map<String, String>? arguments;

  @override
  String toString() {
    return 'AppDestination(routeName: $routeName, arguments: $arguments)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDestinationImplCopyWith<_$AppDestinationImpl> get copyWith =>
      __$$AppDestinationImplCopyWithImpl<_$AppDestinationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppDestinationImplToJson(
      this,
    );
  }
}

abstract class _AppDestination extends AppDestination {
  const factory _AppDestination(
      {required final String routeName,
      final Map<String, String>? arguments}) = _$AppDestinationImpl;
  const _AppDestination._() : super._();

  factory _AppDestination.fromJson(Map<String, dynamic> json) =
      _$AppDestinationImpl.fromJson;

  @override
  String get routeName;
  @override
  Map<String, String>? get arguments;
  @override
  @JsonKey(ignore: true)
  _$$AppDestinationImplCopyWith<_$AppDestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
