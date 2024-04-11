// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fonts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FontsModel _$FontsModelFromJson(Map<String, dynamic> json) {
  return _FontsModel.fromJson(json);
}

/// @nodoc
mixin _$FontsModel {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FontsModelCopyWith<FontsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontsModelCopyWith<$Res> {
  factory $FontsModelCopyWith(
          FontsModel value, $Res Function(FontsModel) then) =
      _$FontsModelCopyWithImpl<$Res, FontsModel>;
  @useResult
  $Res call({String id, String? name});
}

/// @nodoc
class _$FontsModelCopyWithImpl<$Res, $Val extends FontsModel>
    implements $FontsModelCopyWith<$Res> {
  _$FontsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FontsModelImplCopyWith<$Res>
    implements $FontsModelCopyWith<$Res> {
  factory _$$FontsModelImplCopyWith(
          _$FontsModelImpl value, $Res Function(_$FontsModelImpl) then) =
      __$$FontsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name});
}

/// @nodoc
class __$$FontsModelImplCopyWithImpl<$Res>
    extends _$FontsModelCopyWithImpl<$Res, _$FontsModelImpl>
    implements _$$FontsModelImplCopyWith<$Res> {
  __$$FontsModelImplCopyWithImpl(
      _$FontsModelImpl _value, $Res Function(_$FontsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$FontsModelImpl(
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
class _$FontsModelImpl implements _FontsModel {
  const _$FontsModelImpl({required this.id, this.name});

  factory _$FontsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FontsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;

  @override
  String toString() {
    return 'FontsModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FontsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FontsModelImplCopyWith<_$FontsModelImpl> get copyWith =>
      __$$FontsModelImplCopyWithImpl<_$FontsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FontsModelImplToJson(
      this,
    );
  }
}

abstract class _FontsModel implements FontsModel {
  const factory _FontsModel({required final String id, final String? name}) =
      _$FontsModelImpl;

  factory _FontsModel.fromJson(Map<String, dynamic> json) =
      _$FontsModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$FontsModelImplCopyWith<_$FontsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
