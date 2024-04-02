// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MenuBarModel _$MenuBarModelFromJson(Map<String, dynamic> json) {
  return _MenuBarModel.fromJson(json);
}

/// @nodoc
mixin _$MenuBarModel {
  MenuModel? get style => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuBarModelCopyWith<MenuBarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuBarModelCopyWith<$Res> {
  factory $MenuBarModelCopyWith(
          MenuBarModel value, $Res Function(MenuBarModel) then) =
      _$MenuBarModelCopyWithImpl<$Res, MenuBarModel>;
  @useResult
  $Res call({MenuModel? style});

  $MenuModelCopyWith<$Res>? get style;
}

/// @nodoc
class _$MenuBarModelCopyWithImpl<$Res, $Val extends MenuBarModel>
    implements $MenuBarModelCopyWith<$Res> {
  _$MenuBarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = freezed,
  }) {
    return _then(_value.copyWith(
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuModelCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $MenuModelCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuBarModelImplCopyWith<$Res>
    implements $MenuBarModelCopyWith<$Res> {
  factory _$$MenuBarModelImplCopyWith(
          _$MenuBarModelImpl value, $Res Function(_$MenuBarModelImpl) then) =
      __$$MenuBarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MenuModel? style});

  @override
  $MenuModelCopyWith<$Res>? get style;
}

/// @nodoc
class __$$MenuBarModelImplCopyWithImpl<$Res>
    extends _$MenuBarModelCopyWithImpl<$Res, _$MenuBarModelImpl>
    implements _$$MenuBarModelImplCopyWith<$Res> {
  __$$MenuBarModelImplCopyWithImpl(
      _$MenuBarModelImpl _value, $Res Function(_$MenuBarModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = freezed,
  }) {
    return _then(_$MenuBarModelImpl(
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuBarModelImpl extends _MenuBarModel {
  const _$MenuBarModelImpl({this.style}) : super._();

  factory _$MenuBarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuBarModelImplFromJson(json);

  @override
  final MenuModel? style;

  @override
  String toString() {
    return 'MenuBarModel(style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuBarModelImpl &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuBarModelImplCopyWith<_$MenuBarModelImpl> get copyWith =>
      __$$MenuBarModelImplCopyWithImpl<_$MenuBarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuBarModelImplToJson(
      this,
    );
  }
}

abstract class _MenuBarModel extends MenuBarModel {
  const factory _MenuBarModel({final MenuModel? style}) = _$MenuBarModelImpl;
  const _MenuBarModel._() : super._();

  factory _MenuBarModel.fromJson(Map<String, dynamic> json) =
      _$MenuBarModelImpl.fromJson;

  @override
  MenuModel? get style;
  @override
  @JsonKey(ignore: true)
  _$$MenuBarModelImplCopyWith<_$MenuBarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
