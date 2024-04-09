// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gradient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GradientModel _$GradientModelFromJson(Map<String, dynamic> json) {
  return _GradientModel.fromJson(json);
}

/// @nodoc
mixin _$GradientModel {
  GradientType? get type_enum_gradientType =>
      throw _privateConstructorUsedError;
  List<String>? get colors_list_themeColorString =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradientModelCopyWith<GradientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradientModelCopyWith<$Res> {
  factory $GradientModelCopyWith(
          GradientModel value, $Res Function(GradientModel) then) =
      _$GradientModelCopyWithImpl<$Res, GradientModel>;
  @useResult
  $Res call(
      {GradientType? type_enum_gradientType,
      List<String>? colors_list_themeColorString});
}

/// @nodoc
class _$GradientModelCopyWithImpl<$Res, $Val extends GradientModel>
    implements $GradientModelCopyWith<$Res> {
  _$GradientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_gradientType = freezed,
    Object? colors_list_themeColorString = freezed,
  }) {
    return _then(_value.copyWith(
      type_enum_gradientType: freezed == type_enum_gradientType
          ? _value.type_enum_gradientType
          : type_enum_gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType?,
      colors_list_themeColorString: freezed == colors_list_themeColorString
          ? _value.colors_list_themeColorString
          : colors_list_themeColorString // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GradientModelImplCopyWith<$Res>
    implements $GradientModelCopyWith<$Res> {
  factory _$$GradientModelImplCopyWith(
          _$GradientModelImpl value, $Res Function(_$GradientModelImpl) then) =
      __$$GradientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GradientType? type_enum_gradientType,
      List<String>? colors_list_themeColorString});
}

/// @nodoc
class __$$GradientModelImplCopyWithImpl<$Res>
    extends _$GradientModelCopyWithImpl<$Res, _$GradientModelImpl>
    implements _$$GradientModelImplCopyWith<$Res> {
  __$$GradientModelImplCopyWithImpl(
      _$GradientModelImpl _value, $Res Function(_$GradientModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_gradientType = freezed,
    Object? colors_list_themeColorString = freezed,
  }) {
    return _then(_$GradientModelImpl(
      type_enum_gradientType: freezed == type_enum_gradientType
          ? _value.type_enum_gradientType
          : type_enum_gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType?,
      colors_list_themeColorString: freezed == colors_list_themeColorString
          ? _value._colors_list_themeColorString
          : colors_list_themeColorString // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GradientModelImpl extends _GradientModel {
  const _$GradientModelImpl(
      {this.type_enum_gradientType,
      final List<String>? colors_list_themeColorString})
      : _colors_list_themeColorString = colors_list_themeColorString,
        super._();

  factory _$GradientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GradientModelImplFromJson(json);

  @override
  final GradientType? type_enum_gradientType;
  final List<String>? _colors_list_themeColorString;
  @override
  List<String>? get colors_list_themeColorString {
    final value = _colors_list_themeColorString;
    if (value == null) return null;
    if (_colors_list_themeColorString is EqualUnmodifiableListView)
      return _colors_list_themeColorString;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GradientModel(type_enum_gradientType: $type_enum_gradientType, colors_list_themeColorString: $colors_list_themeColorString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradientModelImpl &&
            (identical(other.type_enum_gradientType, type_enum_gradientType) ||
                other.type_enum_gradientType == type_enum_gradientType) &&
            const DeepCollectionEquality().equals(
                other._colors_list_themeColorString,
                _colors_list_themeColorString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type_enum_gradientType,
      const DeepCollectionEquality().hash(_colors_list_themeColorString));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GradientModelImplCopyWith<_$GradientModelImpl> get copyWith =>
      __$$GradientModelImplCopyWithImpl<_$GradientModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GradientModelImplToJson(
      this,
    );
  }
}

abstract class _GradientModel extends GradientModel {
  const factory _GradientModel(
      {final GradientType? type_enum_gradientType,
      final List<String>? colors_list_themeColorString}) = _$GradientModelImpl;
  const _GradientModel._() : super._();

  factory _GradientModel.fromJson(Map<String, dynamic> json) =
      _$GradientModelImpl.fromJson;

  @override
  GradientType? get type_enum_gradientType;
  @override
  List<String>? get colors_list_themeColorString;
  @override
  @JsonKey(ignore: true)
  _$$GradientModelImplCopyWith<_$GradientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
