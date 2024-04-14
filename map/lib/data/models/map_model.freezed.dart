// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapModel _$MapModelFromJson(Map<String, dynamic> json) {
  return _MapModel.fromJson(json);
}

/// @nodoc
mixin _$MapModel {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapModelCopyWith<MapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapModelCopyWith<$Res> {
  factory $MapModelCopyWith(MapModel value, $Res Function(MapModel) then) =
      _$MapModelCopyWithImpl<$Res, MapModel>;
  @useResult
  $Res call({String id, String? name});
}

/// @nodoc
class _$MapModelCopyWithImpl<$Res, $Val extends MapModel>
    implements $MapModelCopyWith<$Res> {
  _$MapModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapModelImplCopyWith<$Res>
    implements $MapModelCopyWith<$Res> {
  factory _$$MapModelImplCopyWith(
          _$MapModelImpl value, $Res Function(_$MapModelImpl) then) =
      __$$MapModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name});
}

/// @nodoc
class __$$MapModelImplCopyWithImpl<$Res>
    extends _$MapModelCopyWithImpl<$Res, _$MapModelImpl>
    implements _$$MapModelImplCopyWith<$Res> {
  __$$MapModelImplCopyWithImpl(
      _$MapModelImpl _value, $Res Function(_$MapModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$MapModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapModelImpl implements _MapModel {
  const _$MapModelImpl({required this.id, this.name});

  factory _$MapModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;

  @override
  String toString() {
    return 'MapModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapModelImplCopyWith<_$MapModelImpl> get copyWith =>
      __$$MapModelImplCopyWithImpl<_$MapModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapModelImplToJson(
      this,
    );
  }
}

abstract class _MapModel implements MapModel {
  const factory _MapModel({required final String id, final String? name}) =
      _$MapModelImpl;

  factory _MapModel.fromJson(Map<String, dynamic> json) =
      _$MapModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$MapModelImplCopyWith<_$MapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
