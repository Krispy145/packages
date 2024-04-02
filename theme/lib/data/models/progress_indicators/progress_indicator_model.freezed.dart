// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_indicator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgressIndicatorModel _$ProgressIndicatorModelFromJson(
    Map<String, dynamic> json) {
  return _ProgressIndicatorModel.fromJson(json);
}

/// @nodoc
mixin _$ProgressIndicatorModel {
  String? get color => throw _privateConstructorUsedError;
  String? get linearTrackColor => throw _privateConstructorUsedError;
  double? get linearMinHeight => throw _privateConstructorUsedError;
  String? get circularTrackColor => throw _privateConstructorUsedError;
  String? get refreshBackgroundColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressIndicatorModelCopyWith<ProgressIndicatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressIndicatorModelCopyWith<$Res> {
  factory $ProgressIndicatorModelCopyWith(ProgressIndicatorModel value,
          $Res Function(ProgressIndicatorModel) then) =
      _$ProgressIndicatorModelCopyWithImpl<$Res, ProgressIndicatorModel>;
  @useResult
  $Res call(
      {String? color,
      String? linearTrackColor,
      double? linearMinHeight,
      String? circularTrackColor,
      String? refreshBackgroundColor});
}

/// @nodoc
class _$ProgressIndicatorModelCopyWithImpl<$Res,
        $Val extends ProgressIndicatorModel>
    implements $ProgressIndicatorModelCopyWith<$Res> {
  _$ProgressIndicatorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? linearTrackColor = freezed,
    Object? linearMinHeight = freezed,
    Object? circularTrackColor = freezed,
    Object? refreshBackgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      linearTrackColor: freezed == linearTrackColor
          ? _value.linearTrackColor
          : linearTrackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      linearMinHeight: freezed == linearMinHeight
          ? _value.linearMinHeight
          : linearMinHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      circularTrackColor: freezed == circularTrackColor
          ? _value.circularTrackColor
          : circularTrackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshBackgroundColor: freezed == refreshBackgroundColor
          ? _value.refreshBackgroundColor
          : refreshBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressIndicatorModelImplCopyWith<$Res>
    implements $ProgressIndicatorModelCopyWith<$Res> {
  factory _$$ProgressIndicatorModelImplCopyWith(
          _$ProgressIndicatorModelImpl value,
          $Res Function(_$ProgressIndicatorModelImpl) then) =
      __$$ProgressIndicatorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      String? linearTrackColor,
      double? linearMinHeight,
      String? circularTrackColor,
      String? refreshBackgroundColor});
}

/// @nodoc
class __$$ProgressIndicatorModelImplCopyWithImpl<$Res>
    extends _$ProgressIndicatorModelCopyWithImpl<$Res,
        _$ProgressIndicatorModelImpl>
    implements _$$ProgressIndicatorModelImplCopyWith<$Res> {
  __$$ProgressIndicatorModelImplCopyWithImpl(
      _$ProgressIndicatorModelImpl _value,
      $Res Function(_$ProgressIndicatorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? linearTrackColor = freezed,
    Object? linearMinHeight = freezed,
    Object? circularTrackColor = freezed,
    Object? refreshBackgroundColor = freezed,
  }) {
    return _then(_$ProgressIndicatorModelImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      linearTrackColor: freezed == linearTrackColor
          ? _value.linearTrackColor
          : linearTrackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      linearMinHeight: freezed == linearMinHeight
          ? _value.linearMinHeight
          : linearMinHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      circularTrackColor: freezed == circularTrackColor
          ? _value.circularTrackColor
          : circularTrackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshBackgroundColor: freezed == refreshBackgroundColor
          ? _value.refreshBackgroundColor
          : refreshBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressIndicatorModelImpl extends _ProgressIndicatorModel {
  const _$ProgressIndicatorModelImpl(
      {this.color,
      this.linearTrackColor,
      this.linearMinHeight,
      this.circularTrackColor,
      this.refreshBackgroundColor})
      : super._();

  factory _$ProgressIndicatorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressIndicatorModelImplFromJson(json);

  @override
  final String? color;
  @override
  final String? linearTrackColor;
  @override
  final double? linearMinHeight;
  @override
  final String? circularTrackColor;
  @override
  final String? refreshBackgroundColor;

  @override
  String toString() {
    return 'ProgressIndicatorModel(color: $color, linearTrackColor: $linearTrackColor, linearMinHeight: $linearMinHeight, circularTrackColor: $circularTrackColor, refreshBackgroundColor: $refreshBackgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressIndicatorModelImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.linearTrackColor, linearTrackColor) ||
                other.linearTrackColor == linearTrackColor) &&
            (identical(other.linearMinHeight, linearMinHeight) ||
                other.linearMinHeight == linearMinHeight) &&
            (identical(other.circularTrackColor, circularTrackColor) ||
                other.circularTrackColor == circularTrackColor) &&
            (identical(other.refreshBackgroundColor, refreshBackgroundColor) ||
                other.refreshBackgroundColor == refreshBackgroundColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, linearTrackColor,
      linearMinHeight, circularTrackColor, refreshBackgroundColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressIndicatorModelImplCopyWith<_$ProgressIndicatorModelImpl>
      get copyWith => __$$ProgressIndicatorModelImplCopyWithImpl<
          _$ProgressIndicatorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressIndicatorModelImplToJson(
      this,
    );
  }
}

abstract class _ProgressIndicatorModel extends ProgressIndicatorModel {
  const factory _ProgressIndicatorModel(
      {final String? color,
      final String? linearTrackColor,
      final double? linearMinHeight,
      final String? circularTrackColor,
      final String? refreshBackgroundColor}) = _$ProgressIndicatorModelImpl;
  const _ProgressIndicatorModel._() : super._();

  factory _ProgressIndicatorModel.fromJson(Map<String, dynamic> json) =
      _$ProgressIndicatorModelImpl.fromJson;

  @override
  String? get color;
  @override
  String? get linearTrackColor;
  @override
  double? get linearMinHeight;
  @override
  String? get circularTrackColor;
  @override
  String? get refreshBackgroundColor;
  @override
  @JsonKey(ignore: true)
  _$$ProgressIndicatorModelImplCopyWith<_$ProgressIndicatorModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
