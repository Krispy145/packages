// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_schemes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColorSchemes _$ColorSchemesFromJson(Map<String, dynamic> json) {
  return _ColorSchemes.fromJson(json);
}

/// @nodoc
mixin _$ColorSchemes {
  ColorModel get light => throw _privateConstructorUsedError;
  ColorModel get dark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorSchemesCopyWith<ColorSchemes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorSchemesCopyWith<$Res> {
  factory $ColorSchemesCopyWith(
          ColorSchemes value, $Res Function(ColorSchemes) then) =
      _$ColorSchemesCopyWithImpl<$Res, ColorSchemes>;
  @useResult
  $Res call({ColorModel light, ColorModel dark});

  $ColorModelCopyWith<$Res> get light;
  $ColorModelCopyWith<$Res> get dark;
}

/// @nodoc
class _$ColorSchemesCopyWithImpl<$Res, $Val extends ColorSchemes>
    implements $ColorSchemesCopyWith<$Res> {
  _$ColorSchemesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_value.copyWith(
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ColorModel,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ColorModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorModelCopyWith<$Res> get light {
    return $ColorModelCopyWith<$Res>(_value.light, (value) {
      return _then(_value.copyWith(light: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorModelCopyWith<$Res> get dark {
    return $ColorModelCopyWith<$Res>(_value.dark, (value) {
      return _then(_value.copyWith(dark: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ColorSchemesImplCopyWith<$Res>
    implements $ColorSchemesCopyWith<$Res> {
  factory _$$ColorSchemesImplCopyWith(
          _$ColorSchemesImpl value, $Res Function(_$ColorSchemesImpl) then) =
      __$$ColorSchemesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorModel light, ColorModel dark});

  @override
  $ColorModelCopyWith<$Res> get light;
  @override
  $ColorModelCopyWith<$Res> get dark;
}

/// @nodoc
class __$$ColorSchemesImplCopyWithImpl<$Res>
    extends _$ColorSchemesCopyWithImpl<$Res, _$ColorSchemesImpl>
    implements _$$ColorSchemesImplCopyWith<$Res> {
  __$$ColorSchemesImplCopyWithImpl(
      _$ColorSchemesImpl _value, $Res Function(_$ColorSchemesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_$ColorSchemesImpl(
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ColorModel,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ColorModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorSchemesImpl extends _ColorSchemes {
  const _$ColorSchemesImpl({required this.light, required this.dark})
      : super._();

  factory _$ColorSchemesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorSchemesImplFromJson(json);

  @override
  final ColorModel light;
  @override
  final ColorModel dark;

  @override
  String toString() {
    return 'ColorSchemes(light: $light, dark: $dark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorSchemesImpl &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.dark, dark) || other.dark == dark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, light, dark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorSchemesImplCopyWith<_$ColorSchemesImpl> get copyWith =>
      __$$ColorSchemesImplCopyWithImpl<_$ColorSchemesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorSchemesImplToJson(
      this,
    );
  }
}

abstract class _ColorSchemes extends ColorSchemes {
  const factory _ColorSchemes(
      {required final ColorModel light,
      required final ColorModel dark}) = _$ColorSchemesImpl;
  const _ColorSchemes._() : super._();

  factory _ColorSchemes.fromJson(Map<String, dynamic> json) =
      _$ColorSchemesImpl.fromJson;

  @override
  ColorModel get light;
  @override
  ColorModel get dark;
  @override
  @JsonKey(ignore: true)
  _$$ColorSchemesImplCopyWith<_$ColorSchemesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
