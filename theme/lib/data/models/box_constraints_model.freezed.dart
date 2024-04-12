// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box_constraints_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoxConstraintsModel _$BoxConstraintsModelFromJson(Map<String, dynamic> json) {
  return _BoxConstraintsModel.fromJson(json);
}

/// @nodoc
mixin _$BoxConstraintsModel {
  double? get minWidth_double => throw _privateConstructorUsedError;
  double? get maxWidth_double => throw _privateConstructorUsedError;
  double? get minHeight_double => throw _privateConstructorUsedError;
  double? get maxHeight_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxConstraintsModelCopyWith<BoxConstraintsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxConstraintsModelCopyWith<$Res> {
  factory $BoxConstraintsModelCopyWith(
          BoxConstraintsModel value, $Res Function(BoxConstraintsModel) then) =
      _$BoxConstraintsModelCopyWithImpl<$Res, BoxConstraintsModel>;
  @useResult
  $Res call(
      {double? minWidth_double,
      double? maxWidth_double,
      double? minHeight_double,
      double? maxHeight_double});
}

/// @nodoc
class _$BoxConstraintsModelCopyWithImpl<$Res, $Val extends BoxConstraintsModel>
    implements $BoxConstraintsModelCopyWith<$Res> {
  _$BoxConstraintsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth_double = freezed,
    Object? maxWidth_double = freezed,
    Object? minHeight_double = freezed,
    Object? maxHeight_double = freezed,
  }) {
    return _then(_value.copyWith(
      minWidth_double: freezed == minWidth_double
          ? _value.minWidth_double
          : minWidth_double // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWidth_double: freezed == maxWidth_double
          ? _value.maxWidth_double
          : maxWidth_double // ignore: cast_nullable_to_non_nullable
              as double?,
      minHeight_double: freezed == minHeight_double
          ? _value.minHeight_double
          : minHeight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      maxHeight_double: freezed == maxHeight_double
          ? _value.maxHeight_double
          : maxHeight_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoxConstraintsModelImplCopyWith<$Res>
    implements $BoxConstraintsModelCopyWith<$Res> {
  factory _$$BoxConstraintsModelImplCopyWith(_$BoxConstraintsModelImpl value,
          $Res Function(_$BoxConstraintsModelImpl) then) =
      __$$BoxConstraintsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? minWidth_double,
      double? maxWidth_double,
      double? minHeight_double,
      double? maxHeight_double});
}

/// @nodoc
class __$$BoxConstraintsModelImplCopyWithImpl<$Res>
    extends _$BoxConstraintsModelCopyWithImpl<$Res, _$BoxConstraintsModelImpl>
    implements _$$BoxConstraintsModelImplCopyWith<$Res> {
  __$$BoxConstraintsModelImplCopyWithImpl(_$BoxConstraintsModelImpl _value,
      $Res Function(_$BoxConstraintsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth_double = freezed,
    Object? maxWidth_double = freezed,
    Object? minHeight_double = freezed,
    Object? maxHeight_double = freezed,
  }) {
    return _then(_$BoxConstraintsModelImpl(
      minWidth_double: freezed == minWidth_double
          ? _value.minWidth_double
          : minWidth_double // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWidth_double: freezed == maxWidth_double
          ? _value.maxWidth_double
          : maxWidth_double // ignore: cast_nullable_to_non_nullable
              as double?,
      minHeight_double: freezed == minHeight_double
          ? _value.minHeight_double
          : minHeight_double // ignore: cast_nullable_to_non_nullable
              as double?,
      maxHeight_double: freezed == maxHeight_double
          ? _value.maxHeight_double
          : maxHeight_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoxConstraintsModelImpl extends _BoxConstraintsModel {
  const _$BoxConstraintsModelImpl(
      {this.minWidth_double,
      this.maxWidth_double,
      this.minHeight_double,
      this.maxHeight_double})
      : super._();

  factory _$BoxConstraintsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoxConstraintsModelImplFromJson(json);

  @override
  final double? minWidth_double;
  @override
  final double? maxWidth_double;
  @override
  final double? minHeight_double;
  @override
  final double? maxHeight_double;

  @override
  String toString() {
    return 'BoxConstraintsModel(minWidth_double: $minWidth_double, maxWidth_double: $maxWidth_double, minHeight_double: $minHeight_double, maxHeight_double: $maxHeight_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxConstraintsModelImpl &&
            (identical(other.minWidth_double, minWidth_double) ||
                other.minWidth_double == minWidth_double) &&
            (identical(other.maxWidth_double, maxWidth_double) ||
                other.maxWidth_double == maxWidth_double) &&
            (identical(other.minHeight_double, minHeight_double) ||
                other.minHeight_double == minHeight_double) &&
            (identical(other.maxHeight_double, maxHeight_double) ||
                other.maxHeight_double == maxHeight_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minWidth_double, maxWidth_double,
      minHeight_double, maxHeight_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoxConstraintsModelImplCopyWith<_$BoxConstraintsModelImpl> get copyWith =>
      __$$BoxConstraintsModelImplCopyWithImpl<_$BoxConstraintsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoxConstraintsModelImplToJson(
      this,
    );
  }
}

abstract class _BoxConstraintsModel extends BoxConstraintsModel {
  const factory _BoxConstraintsModel(
      {final double? minWidth_double,
      final double? maxWidth_double,
      final double? minHeight_double,
      final double? maxHeight_double}) = _$BoxConstraintsModelImpl;
  const _BoxConstraintsModel._() : super._();

  factory _BoxConstraintsModel.fromJson(Map<String, dynamic> json) =
      _$BoxConstraintsModelImpl.fromJson;

  @override
  double? get minWidth_double;
  @override
  double? get maxWidth_double;
  @override
  double? get minHeight_double;
  @override
  double? get maxHeight_double;
  @override
  @JsonKey(ignore: true)
  _$$BoxConstraintsModelImplCopyWith<_$BoxConstraintsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
