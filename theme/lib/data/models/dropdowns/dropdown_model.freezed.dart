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
  String? get textStyle_textStyle => throw _privateConstructorUsedError;
  InputDecorationModel? get inputDecoration_inputDecoration =>
      throw _privateConstructorUsedError;
  MenuStyleModel? get menuStyle_menu => throw _privateConstructorUsedError;

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
      {String? textStyle_textStyle,
      InputDecorationModel? inputDecoration_inputDecoration,
      MenuStyleModel? menuStyle_menu});

  $InputDecorationModelCopyWith<$Res>? get inputDecoration_inputDecoration;
  $MenuStyleModelCopyWith<$Res>? get menuStyle_menu;
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
    Object? textStyle_textStyle = freezed,
    Object? inputDecoration_inputDecoration = freezed,
    Object? menuStyle_menu = freezed,
  }) {
    return _then(_value.copyWith(
      textStyle_textStyle: freezed == textStyle_textStyle
          ? _value.textStyle_textStyle
          : textStyle_textStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      inputDecoration_inputDecoration: freezed ==
              inputDecoration_inputDecoration
          ? _value.inputDecoration_inputDecoration
          : inputDecoration_inputDecoration // ignore: cast_nullable_to_non_nullable
              as InputDecorationModel?,
      menuStyle_menu: freezed == menuStyle_menu
          ? _value.menuStyle_menu
          : menuStyle_menu // ignore: cast_nullable_to_non_nullable
              as MenuStyleModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputDecorationModelCopyWith<$Res>? get inputDecoration_inputDecoration {
    if (_value.inputDecoration_inputDecoration == null) {
      return null;
    }

    return $InputDecorationModelCopyWith<$Res>(
        _value.inputDecoration_inputDecoration!, (value) {
      return _then(
          _value.copyWith(inputDecoration_inputDecoration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuStyleModelCopyWith<$Res>? get menuStyle_menu {
    if (_value.menuStyle_menu == null) {
      return null;
    }

    return $MenuStyleModelCopyWith<$Res>(_value.menuStyle_menu!, (value) {
      return _then(_value.copyWith(menuStyle_menu: value) as $Val);
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
      {String? textStyle_textStyle,
      InputDecorationModel? inputDecoration_inputDecoration,
      MenuStyleModel? menuStyle_menu});

  @override
  $InputDecorationModelCopyWith<$Res>? get inputDecoration_inputDecoration;
  @override
  $MenuStyleModelCopyWith<$Res>? get menuStyle_menu;
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
    Object? textStyle_textStyle = freezed,
    Object? inputDecoration_inputDecoration = freezed,
    Object? menuStyle_menu = freezed,
  }) {
    return _then(_$DropdownModelImpl(
      textStyle_textStyle: freezed == textStyle_textStyle
          ? _value.textStyle_textStyle
          : textStyle_textStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      inputDecoration_inputDecoration: freezed ==
              inputDecoration_inputDecoration
          ? _value.inputDecoration_inputDecoration
          : inputDecoration_inputDecoration // ignore: cast_nullable_to_non_nullable
              as InputDecorationModel?,
      menuStyle_menu: freezed == menuStyle_menu
          ? _value.menuStyle_menu
          : menuStyle_menu // ignore: cast_nullable_to_non_nullable
              as MenuStyleModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DropdownModelImpl extends _DropdownModel {
  const _$DropdownModelImpl(
      {this.textStyle_textStyle,
      this.inputDecoration_inputDecoration,
      this.menuStyle_menu})
      : super._();

  factory _$DropdownModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DropdownModelImplFromJson(json);

  @override
  final String? textStyle_textStyle;
  @override
  final InputDecorationModel? inputDecoration_inputDecoration;
  @override
  final MenuStyleModel? menuStyle_menu;

  @override
  String toString() {
    return 'DropdownModel(textStyle_textStyle: $textStyle_textStyle, inputDecoration_inputDecoration: $inputDecoration_inputDecoration, menuStyle_menu: $menuStyle_menu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownModelImpl &&
            (identical(other.textStyle_textStyle, textStyle_textStyle) ||
                other.textStyle_textStyle == textStyle_textStyle) &&
            (identical(other.inputDecoration_inputDecoration,
                    inputDecoration_inputDecoration) ||
                other.inputDecoration_inputDecoration ==
                    inputDecoration_inputDecoration) &&
            (identical(other.menuStyle_menu, menuStyle_menu) ||
                other.menuStyle_menu == menuStyle_menu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, textStyle_textStyle,
      inputDecoration_inputDecoration, menuStyle_menu);

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
      {final String? textStyle_textStyle,
      final InputDecorationModel? inputDecoration_inputDecoration,
      final MenuStyleModel? menuStyle_menu}) = _$DropdownModelImpl;
  const _DropdownModel._() : super._();

  factory _DropdownModel.fromJson(Map<String, dynamic> json) =
      _$DropdownModelImpl.fromJson;

  @override
  String? get textStyle_textStyle;
  @override
  InputDecorationModel? get inputDecoration_inputDecoration;
  @override
  MenuStyleModel? get menuStyle_menu;
  @override
  @JsonKey(ignore: true)
  _$$DropdownModelImplCopyWith<_$DropdownModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
