// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkerModel _$MarkerModelFromJson(Map<String, dynamic> json) {
  return _MarkerModel.fromJson(json);
}

/// @nodoc
mixin _$MarkerModel {
  String get id => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  @LatLngConverter()
  LatLng get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkerModelCopyWith<MarkerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerModelCopyWith<$Res> {
  factory $MarkerModelCopyWith(
          MarkerModel value, $Res Function(MarkerModel) then) =
      _$MarkerModelCopyWithImpl<$Res, MarkerModel>;
  @useResult
  $Res call({String id, double score, @LatLngConverter() LatLng position});
}

/// @nodoc
class _$MarkerModelCopyWithImpl<$Res, $Val extends MarkerModel>
    implements $MarkerModelCopyWith<$Res> {
  _$MarkerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkerModelImplCopyWith<$Res>
    implements $MarkerModelCopyWith<$Res> {
  factory _$$MarkerModelImplCopyWith(
          _$MarkerModelImpl value, $Res Function(_$MarkerModelImpl) then) =
      __$$MarkerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double score, @LatLngConverter() LatLng position});
}

/// @nodoc
class __$$MarkerModelImplCopyWithImpl<$Res>
    extends _$MarkerModelCopyWithImpl<$Res, _$MarkerModelImpl>
    implements _$$MarkerModelImplCopyWith<$Res> {
  __$$MarkerModelImplCopyWithImpl(
      _$MarkerModelImpl _value, $Res Function(_$MarkerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = null,
    Object? position = null,
  }) {
    return _then(_$MarkerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkerModelImpl implements _MarkerModel {
  const _$MarkerModelImpl(
      {required this.id,
      this.score = 1,
      @LatLngConverter() required this.position});

  factory _$MarkerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkerModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final double score;
  @override
  @LatLngConverter()
  final LatLng position;

  @override
  String toString() {
    return 'MarkerModel(id: $id, score: $score, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, score, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkerModelImplCopyWith<_$MarkerModelImpl> get copyWith =>
      __$$MarkerModelImplCopyWithImpl<_$MarkerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkerModelImplToJson(
      this,
    );
  }
}

abstract class _MarkerModel implements MarkerModel {
  const factory _MarkerModel(
      {required final String id,
      final double score,
      @LatLngConverter() required final LatLng position}) = _$MarkerModelImpl;

  factory _MarkerModel.fromJson(Map<String, dynamic> json) =
      _$MarkerModelImpl.fromJson;

  @override
  String get id;
  @override
  double get score;
  @override
  @LatLngConverter()
  LatLng get position;
  @override
  @JsonKey(ignore: true)
  _$$MarkerModelImplCopyWith<_$MarkerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
