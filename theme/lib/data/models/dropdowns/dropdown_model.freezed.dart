// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DropdownModel _$DropdownModelFromJson(Map<String, dynamic> json) {
  return _DropdownModel.fromJson(json);
}

/// @nodoc
mixin _$DropdownModel {
  String? get textStyle => throw _privateConstructorUsedError;
  InputDecorationModel? get inputDecoration =>
      throw _privateConstructorUsedError;
  MenuModel? get menuStyle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropdownModelCopyWith<DropdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownModelCopyWith<$Res> {
  factory $DropdownModelCopyWith(
          DropdownModel value, $Res Function(DropdownModel) then) =
      _$DropdownModelCopyWithImpl<$Res, DropdownModel>;
  @useResult
  $Res call(
      {String? textStyle,
      InputDecorationModel? inputDecoration,
      MenuModel? menuStyle});

  $InputDecorationModelCopyWith<$Res>? get inputDecoration;
  $MenuModelCopyWith<$Res>? get menuStyle;
}

/// @nodoc
class _$DropdownModelCopyWithImpl<$Res, $Val extends DropdownModel>
    implements $DropdownModelCopyWith<$Res> {
  _$DropdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textStyle = freezed,
    Object? inputDecoration = freezed,
    Object? menuStyle = freezed,
  }) {
    return _then(_value.copyWith(
      textStyle: freezed == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      inputDecoration: freezed == inputDecoration
          ? _value.inputDecoration
          : inputDecoration // ignore: cast_nullable_to_non_nullable
              as InputDecorationModel?,
      menuStyle: freezed == menuStyle
          ? _value.menuStyle
          : menuStyle // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputDecorationModelCopyWith<$Res>? get inputDecoration {
    if (_value.inputDecoration == null) {
      return null;
    }

    return $InputDecorationModelCopyWith<$Res>(_value.inputDecoration!,
        (value) {
      return _then(_value.copyWith(inputDecoration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuModelCopyWith<$Res>? get menuStyle {
    if (_value.menuStyle == null) {
      return null;
    }

    return $MenuModelCopyWith<$Res>(_value.menuStyle!, (value) {
      return _then(_value.copyWith(menuStyle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DropdownModelImplCopyWith<$Res>
    implements $DropdownModelCopyWith<$Res> {
  factory _$$DropdownModelImplCopyWith(
          _$DropdownModelImpl value, $Res Function(_$DropdownModelImpl) then) =
      __$$DropdownModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? textStyle,
      InputDecorationModel? inputDecoration,
      MenuModel? menuStyle});

  @override
  $InputDecorationModelCopyWith<$Res>? get inputDecoration;
  @override
  $MenuModelCopyWith<$Res>? get menuStyle;
}

/// @nodoc
class __$$DropdownModelImplCopyWithImpl<$Res>
    extends _$DropdownModelCopyWithImpl<$Res, _$DropdownModelImpl>
    implements _$$DropdownModelImplCopyWith<$Res> {
  __$$DropdownModelImplCopyWithImpl(
      _$DropdownModelImpl _value, $Res Function(_$DropdownModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textStyle = freezed,
    Object? inputDecoration = freezed,
    Object? menuStyle = freezed,
  }) {
    return _then(_$DropdownModelImpl(
      textStyle: freezed == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      inputDecoration: freezed == inputDecoration
          ? _value.inputDecoration
          : inputDecoration // ignore: cast_nullable_to_non_nullable
              as InputDecorationModel?,
      menuStyle: freezed == menuStyle
          ? _value.menuStyle
          : menuStyle // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DropdownModelImpl extends _DropdownModel {
  const _$DropdownModelImpl(
      {this.textStyle, this.inputDecoration, this.menuStyle})
      : super._();

  factory _$DropdownModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DropdownModelImplFromJson(json);

  @override
  final String? textStyle;
  @override
  final InputDecorationModel? inputDecoration;
  @override
  final MenuModel? menuStyle;

  @override
  String toString() {
    return 'DropdownModel(textStyle: $textStyle, inputDecoration: $inputDecoration, menuStyle: $menuStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownModelImpl &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.inputDecoration, inputDecoration) ||
                other.inputDecoration == inputDecoration) &&
            (identical(other.menuStyle, menuStyle) ||
                other.menuStyle == menuStyle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, textStyle, inputDecoration, menuStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownModelImplCopyWith<_$DropdownModelImpl> get copyWith =>
      __$$DropdownModelImplCopyWithImpl<_$DropdownModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DropdownModelImplToJson(
      this,
    );
  }
}

abstract class _DropdownModel extends DropdownModel {
  const factory _DropdownModel(
      {final String? textStyle,
      final InputDecorationModel? inputDecoration,
      final MenuModel? menuStyle}) = _$DropdownModelImpl;
  const _DropdownModel._() : super._();

  factory _DropdownModel.fromJson(Map<String, dynamic> json) =
      _$DropdownModelImpl.fromJson;

  @override
  String? get textStyle;
  @override
  InputDecorationModel? get inputDecoration;
  @override
  MenuModel? get menuStyle;
  @override
  @JsonKey(ignore: true)
  _$$DropdownModelImplCopyWith<_$DropdownModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
