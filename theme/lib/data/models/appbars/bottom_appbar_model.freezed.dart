// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_appbar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BottomAppbarModel _$BottomAppbarModelFromJson(Map<String, dynamic> json) {
  return _BottomAppbarModel.fromJson(json);
}

/// @nodoc
mixin _$BottomAppbarModel {
  String? get color => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  String? get surfaceTintColor => throw _privateConstructorUsedError;
  String? get shadowColor => throw _privateConstructorUsedError;
  @EdgeInsetsConverter()
  EdgeInsets? get padding => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BottomAppbarModelCopyWith<BottomAppbarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomAppbarModelCopyWith<$Res> {
  factory $BottomAppbarModelCopyWith(
          BottomAppbarModel value, $Res Function(BottomAppbarModel) then) =
      _$BottomAppbarModelCopyWithImpl<$Res, BottomAppbarModel>;
  @useResult
  $Res call(
      {String? color,
      double? elevation,
      double? height,
      String? surfaceTintColor,
      String? shadowColor,
      @EdgeInsetsConverter() EdgeInsets? padding});
}

/// @nodoc
class _$BottomAppbarModelCopyWithImpl<$Res, $Val extends BottomAppbarModel>
    implements $BottomAppbarModelCopyWith<$Res> {
  _$BottomAppbarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? elevation = freezed,
    Object? height = freezed,
    Object? surfaceTintColor = freezed,
    Object? shadowColor = freezed,
    Object? padding = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomAppbarModelImplCopyWith<$Res>
    implements $BottomAppbarModelCopyWith<$Res> {
  factory _$$BottomAppbarModelImplCopyWith(_$BottomAppbarModelImpl value,
          $Res Function(_$BottomAppbarModelImpl) then) =
      __$$BottomAppbarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      double? elevation,
      double? height,
      String? surfaceTintColor,
      String? shadowColor,
      @EdgeInsetsConverter() EdgeInsets? padding});
}

/// @nodoc
class __$$BottomAppbarModelImplCopyWithImpl<$Res>
    extends _$BottomAppbarModelCopyWithImpl<$Res, _$BottomAppbarModelImpl>
    implements _$$BottomAppbarModelImplCopyWith<$Res> {
  __$$BottomAppbarModelImplCopyWithImpl(_$BottomAppbarModelImpl _value,
      $Res Function(_$BottomAppbarModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? elevation = freezed,
    Object? height = freezed,
    Object? surfaceTintColor = freezed,
    Object? shadowColor = freezed,
    Object? padding = freezed,
  }) {
    return _then(_$BottomAppbarModelImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BottomAppbarModelImpl extends _BottomAppbarModel {
  const _$BottomAppbarModelImpl(
      {this.color,
      this.elevation,
      this.height,
      this.surfaceTintColor,
      this.shadowColor,
      @EdgeInsetsConverter() this.padding})
      : super._();

  factory _$BottomAppbarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BottomAppbarModelImplFromJson(json);

  @override
  final String? color;
  @override
  final double? elevation;
  @override
  final double? height;
  @override
  final String? surfaceTintColor;
  @override
  final String? shadowColor;
  @override
  @EdgeInsetsConverter()
  final EdgeInsets? padding;

  @override
  String toString() {
    return 'BottomAppbarModel(color: $color, elevation: $elevation, height: $height, surfaceTintColor: $surfaceTintColor, shadowColor: $shadowColor, padding: $padding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomAppbarModelImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, elevation, height,
      surfaceTintColor, shadowColor, padding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomAppbarModelImplCopyWith<_$BottomAppbarModelImpl> get copyWith =>
      __$$BottomAppbarModelImplCopyWithImpl<_$BottomAppbarModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BottomAppbarModelImplToJson(
      this,
    );
  }
}

abstract class _BottomAppbarModel extends BottomAppbarModel {
  const factory _BottomAppbarModel(
          {final String? color,
          final double? elevation,
          final double? height,
          final String? surfaceTintColor,
          final String? shadowColor,
          @EdgeInsetsConverter() final EdgeInsets? padding}) =
      _$BottomAppbarModelImpl;
  const _BottomAppbarModel._() : super._();

  factory _BottomAppbarModel.fromJson(Map<String, dynamic> json) =
      _$BottomAppbarModelImpl.fromJson;

  @override
  String? get color;
  @override
  double? get elevation;
  @override
  double? get height;
  @override
  String? get surfaceTintColor;
  @override
  String? get shadowColor;
  @override
  @EdgeInsetsConverter()
  EdgeInsets? get padding;
  @override
  @JsonKey(ignore: true)
  _$$BottomAppbarModelImplCopyWith<_$BottomAppbarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
