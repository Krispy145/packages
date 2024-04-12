// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box_shadow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoxShadowModel _$BoxShadowModelFromJson(Map<String, dynamic> json) {
  return _BoxShadowModel.fromJson(json);
}

/// @nodoc
mixin _$BoxShadowModel {
// final ThemeColorString? color_themeColorString,
// final double? width_double,
// final BorderStyle? style_enum_borderStyle,
// final double? strokeAlign_double,
  String? get color_themeColorString => throw _privateConstructorUsedError;
  OffsetModel? get offset_offset => throw _privateConstructorUsedError;
  double? get blurRadius_double => throw _privateConstructorUsedError;
  double? get spreadRadius_double => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxShadowModelCopyWith<BoxShadowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxShadowModelCopyWith<$Res> {
  factory $BoxShadowModelCopyWith(
          BoxShadowModel value, $Res Function(BoxShadowModel) then) =
      _$BoxShadowModelCopyWithImpl<$Res, BoxShadowModel>;
  @useResult
  $Res call(
      {String? color_themeColorString,
      OffsetModel? offset_offset,
      double? blurRadius_double,
      double? spreadRadius_double});

  $OffsetModelCopyWith<$Res>? get offset_offset;
}

/// @nodoc
class _$BoxShadowModelCopyWithImpl<$Res, $Val extends BoxShadowModel>
    implements $BoxShadowModelCopyWith<$Res> {
  _$BoxShadowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color_themeColorString = freezed,
    Object? offset_offset = freezed,
    Object? blurRadius_double = freezed,
    Object? spreadRadius_double = freezed,
  }) {
    return _then(_value.copyWith(
      color_themeColorString: freezed == color_themeColorString
          ? _value.color_themeColorString
          : color_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      offset_offset: freezed == offset_offset
          ? _value.offset_offset
          : offset_offset // ignore: cast_nullable_to_non_nullable
              as OffsetModel?,
      blurRadius_double: freezed == blurRadius_double
          ? _value.blurRadius_double
          : blurRadius_double // ignore: cast_nullable_to_non_nullable
              as double?,
      spreadRadius_double: freezed == spreadRadius_double
          ? _value.spreadRadius_double
          : spreadRadius_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OffsetModelCopyWith<$Res>? get offset_offset {
    if (_value.offset_offset == null) {
      return null;
    }

    return $OffsetModelCopyWith<$Res>(_value.offset_offset!, (value) {
      return _then(_value.copyWith(offset_offset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BoxShadowModelImplCopyWith<$Res>
    implements $BoxShadowModelCopyWith<$Res> {
  factory _$$BoxShadowModelImplCopyWith(_$BoxShadowModelImpl value,
          $Res Function(_$BoxShadowModelImpl) then) =
      __$$BoxShadowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color_themeColorString,
      OffsetModel? offset_offset,
      double? blurRadius_double,
      double? spreadRadius_double});

  @override
  $OffsetModelCopyWith<$Res>? get offset_offset;
}

/// @nodoc
class __$$BoxShadowModelImplCopyWithImpl<$Res>
    extends _$BoxShadowModelCopyWithImpl<$Res, _$BoxShadowModelImpl>
    implements _$$BoxShadowModelImplCopyWith<$Res> {
  __$$BoxShadowModelImplCopyWithImpl(
      _$BoxShadowModelImpl _value, $Res Function(_$BoxShadowModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color_themeColorString = freezed,
    Object? offset_offset = freezed,
    Object? blurRadius_double = freezed,
    Object? spreadRadius_double = freezed,
  }) {
    return _then(_$BoxShadowModelImpl(
      color_themeColorString: freezed == color_themeColorString
          ? _value.color_themeColorString
          : color_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      offset_offset: freezed == offset_offset
          ? _value.offset_offset
          : offset_offset // ignore: cast_nullable_to_non_nullable
              as OffsetModel?,
      blurRadius_double: freezed == blurRadius_double
          ? _value.blurRadius_double
          : blurRadius_double // ignore: cast_nullable_to_non_nullable
              as double?,
      spreadRadius_double: freezed == spreadRadius_double
          ? _value.spreadRadius_double
          : spreadRadius_double // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoxShadowModelImpl extends _BoxShadowModel {
  const _$BoxShadowModelImpl(
      {this.color_themeColorString,
      this.offset_offset = const OffsetModel(),
      this.blurRadius_double,
      this.spreadRadius_double})
      : super._();

  factory _$BoxShadowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoxShadowModelImplFromJson(json);

// final ThemeColorString? color_themeColorString,
// final double? width_double,
// final BorderStyle? style_enum_borderStyle,
// final double? strokeAlign_double,
  @override
  final String? color_themeColorString;
  @override
  @JsonKey()
  final OffsetModel? offset_offset;
  @override
  final double? blurRadius_double;
  @override
  final double? spreadRadius_double;

  @override
  String toString() {
    return 'BoxShadowModel(color_themeColorString: $color_themeColorString, offset_offset: $offset_offset, blurRadius_double: $blurRadius_double, spreadRadius_double: $spreadRadius_double)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxShadowModelImpl &&
            (identical(other.color_themeColorString, color_themeColorString) ||
                other.color_themeColorString == color_themeColorString) &&
            (identical(other.offset_offset, offset_offset) ||
                other.offset_offset == offset_offset) &&
            (identical(other.blurRadius_double, blurRadius_double) ||
                other.blurRadius_double == blurRadius_double) &&
            (identical(other.spreadRadius_double, spreadRadius_double) ||
                other.spreadRadius_double == spreadRadius_double));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color_themeColorString,
      offset_offset, blurRadius_double, spreadRadius_double);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoxShadowModelImplCopyWith<_$BoxShadowModelImpl> get copyWith =>
      __$$BoxShadowModelImplCopyWithImpl<_$BoxShadowModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoxShadowModelImplToJson(
      this,
    );
  }
}

abstract class _BoxShadowModel extends BoxShadowModel {
  const factory _BoxShadowModel(
      {final String? color_themeColorString,
      final OffsetModel? offset_offset,
      final double? blurRadius_double,
      final double? spreadRadius_double}) = _$BoxShadowModelImpl;
  const _BoxShadowModel._() : super._();

  factory _BoxShadowModel.fromJson(Map<String, dynamic> json) =
      _$BoxShadowModelImpl.fromJson;

  @override // final ThemeColorString? color_themeColorString,
// final double? width_double,
// final BorderStyle? style_enum_borderStyle,
// final double? strokeAlign_double,
  String? get color_themeColorString;
  @override
  OffsetModel? get offset_offset;
  @override
  double? get blurRadius_double;
  @override
  double? get spreadRadius_double;
  @override
  @JsonKey(ignore: true)
  _$$BoxShadowModelImplCopyWith<_$BoxShadowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
