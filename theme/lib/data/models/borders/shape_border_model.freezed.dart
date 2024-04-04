// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shape_border_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShapeBorderModel _$ShapeBorderModelFromJson(Map<String, dynamic> json) {
  return _ShapeBorderModel.fromJson(json);
}

/// @nodoc
mixin _$ShapeBorderModel {
  ShapeBorderType? get type_enum_shapeBorderType =>
      throw _privateConstructorUsedError;
  BoxBorderModel? get boxBorder_boxBorder => throw _privateConstructorUsedError;
  InputBorderModel? get inputBorder_inputBorder =>
      throw _privateConstructorUsedError;
  OutlinedBorderModel get outlinedBorder_outlinedBorder =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShapeBorderModelCopyWith<ShapeBorderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShapeBorderModelCopyWith<$Res> {
  factory $ShapeBorderModelCopyWith(
          ShapeBorderModel value, $Res Function(ShapeBorderModel) then) =
      _$ShapeBorderModelCopyWithImpl<$Res, ShapeBorderModel>;
  @useResult
  $Res call(
      {ShapeBorderType? type_enum_shapeBorderType,
      BoxBorderModel? boxBorder_boxBorder,
      InputBorderModel? inputBorder_inputBorder,
      OutlinedBorderModel outlinedBorder_outlinedBorder});

  $BoxBorderModelCopyWith<$Res>? get boxBorder_boxBorder;
  $InputBorderModelCopyWith<$Res>? get inputBorder_inputBorder;
  $OutlinedBorderModelCopyWith<$Res> get outlinedBorder_outlinedBorder;
}

/// @nodoc
class _$ShapeBorderModelCopyWithImpl<$Res, $Val extends ShapeBorderModel>
    implements $ShapeBorderModelCopyWith<$Res> {
  _$ShapeBorderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_shapeBorderType = freezed,
    Object? boxBorder_boxBorder = freezed,
    Object? inputBorder_inputBorder = freezed,
    Object? outlinedBorder_outlinedBorder = null,
  }) {
    return _then(_value.copyWith(
      type_enum_shapeBorderType: freezed == type_enum_shapeBorderType
          ? _value.type_enum_shapeBorderType
          : type_enum_shapeBorderType // ignore: cast_nullable_to_non_nullable
              as ShapeBorderType?,
      boxBorder_boxBorder: freezed == boxBorder_boxBorder
          ? _value.boxBorder_boxBorder
          : boxBorder_boxBorder // ignore: cast_nullable_to_non_nullable
              as BoxBorderModel?,
      inputBorder_inputBorder: freezed == inputBorder_inputBorder
          ? _value.inputBorder_inputBorder
          : inputBorder_inputBorder // ignore: cast_nullable_to_non_nullable
              as InputBorderModel?,
      outlinedBorder_outlinedBorder: null == outlinedBorder_outlinedBorder
          ? _value.outlinedBorder_outlinedBorder
          : outlinedBorder_outlinedBorder // ignore: cast_nullable_to_non_nullable
              as OutlinedBorderModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoxBorderModelCopyWith<$Res>? get boxBorder_boxBorder {
    if (_value.boxBorder_boxBorder == null) {
      return null;
    }

    return $BoxBorderModelCopyWith<$Res>(_value.boxBorder_boxBorder!, (value) {
      return _then(_value.copyWith(boxBorder_boxBorder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputBorderModelCopyWith<$Res>? get inputBorder_inputBorder {
    if (_value.inputBorder_inputBorder == null) {
      return null;
    }

    return $InputBorderModelCopyWith<$Res>(_value.inputBorder_inputBorder!,
        (value) {
      return _then(_value.copyWith(inputBorder_inputBorder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OutlinedBorderModelCopyWith<$Res> get outlinedBorder_outlinedBorder {
    return $OutlinedBorderModelCopyWith<$Res>(
        _value.outlinedBorder_outlinedBorder, (value) {
      return _then(
          _value.copyWith(outlinedBorder_outlinedBorder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShapeBorderModelImplCopyWith<$Res>
    implements $ShapeBorderModelCopyWith<$Res> {
  factory _$$ShapeBorderModelImplCopyWith(_$ShapeBorderModelImpl value,
          $Res Function(_$ShapeBorderModelImpl) then) =
      __$$ShapeBorderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShapeBorderType? type_enum_shapeBorderType,
      BoxBorderModel? boxBorder_boxBorder,
      InputBorderModel? inputBorder_inputBorder,
      OutlinedBorderModel outlinedBorder_outlinedBorder});

  @override
  $BoxBorderModelCopyWith<$Res>? get boxBorder_boxBorder;
  @override
  $InputBorderModelCopyWith<$Res>? get inputBorder_inputBorder;
  @override
  $OutlinedBorderModelCopyWith<$Res> get outlinedBorder_outlinedBorder;
}

/// @nodoc
class __$$ShapeBorderModelImplCopyWithImpl<$Res>
    extends _$ShapeBorderModelCopyWithImpl<$Res, _$ShapeBorderModelImpl>
    implements _$$ShapeBorderModelImplCopyWith<$Res> {
  __$$ShapeBorderModelImplCopyWithImpl(_$ShapeBorderModelImpl _value,
      $Res Function(_$ShapeBorderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type_enum_shapeBorderType = freezed,
    Object? boxBorder_boxBorder = freezed,
    Object? inputBorder_inputBorder = freezed,
    Object? outlinedBorder_outlinedBorder = null,
  }) {
    return _then(_$ShapeBorderModelImpl(
      type_enum_shapeBorderType: freezed == type_enum_shapeBorderType
          ? _value.type_enum_shapeBorderType
          : type_enum_shapeBorderType // ignore: cast_nullable_to_non_nullable
              as ShapeBorderType?,
      boxBorder_boxBorder: freezed == boxBorder_boxBorder
          ? _value.boxBorder_boxBorder
          : boxBorder_boxBorder // ignore: cast_nullable_to_non_nullable
              as BoxBorderModel?,
      inputBorder_inputBorder: freezed == inputBorder_inputBorder
          ? _value.inputBorder_inputBorder
          : inputBorder_inputBorder // ignore: cast_nullable_to_non_nullable
              as InputBorderModel?,
      outlinedBorder_outlinedBorder: null == outlinedBorder_outlinedBorder
          ? _value.outlinedBorder_outlinedBorder
          : outlinedBorder_outlinedBorder // ignore: cast_nullable_to_non_nullable
              as OutlinedBorderModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShapeBorderModelImpl extends _ShapeBorderModel {
  const _$ShapeBorderModelImpl(
      {this.type_enum_shapeBorderType,
      this.boxBorder_boxBorder,
      this.inputBorder_inputBorder = const InputBorderModel(),
      this.outlinedBorder_outlinedBorder = const OutlinedBorderModel()})
      : super._();

  factory _$ShapeBorderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShapeBorderModelImplFromJson(json);

  @override
  final ShapeBorderType? type_enum_shapeBorderType;
  @override
  final BoxBorderModel? boxBorder_boxBorder;
  @override
  @JsonKey()
  final InputBorderModel? inputBorder_inputBorder;
  @override
  @JsonKey()
  final OutlinedBorderModel outlinedBorder_outlinedBorder;

  @override
  String toString() {
    return 'ShapeBorderModel(type_enum_shapeBorderType: $type_enum_shapeBorderType, boxBorder_boxBorder: $boxBorder_boxBorder, inputBorder_inputBorder: $inputBorder_inputBorder, outlinedBorder_outlinedBorder: $outlinedBorder_outlinedBorder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShapeBorderModelImpl &&
            (identical(other.type_enum_shapeBorderType,
                    type_enum_shapeBorderType) ||
                other.type_enum_shapeBorderType == type_enum_shapeBorderType) &&
            (identical(other.boxBorder_boxBorder, boxBorder_boxBorder) ||
                other.boxBorder_boxBorder == boxBorder_boxBorder) &&
            (identical(
                    other.inputBorder_inputBorder, inputBorder_inputBorder) ||
                other.inputBorder_inputBorder == inputBorder_inputBorder) &&
            (identical(other.outlinedBorder_outlinedBorder,
                    outlinedBorder_outlinedBorder) ||
                other.outlinedBorder_outlinedBorder ==
                    outlinedBorder_outlinedBorder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type_enum_shapeBorderType,
      boxBorder_boxBorder,
      inputBorder_inputBorder,
      outlinedBorder_outlinedBorder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShapeBorderModelImplCopyWith<_$ShapeBorderModelImpl> get copyWith =>
      __$$ShapeBorderModelImplCopyWithImpl<_$ShapeBorderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShapeBorderModelImplToJson(
      this,
    );
  }
}

abstract class _ShapeBorderModel extends ShapeBorderModel {
  const factory _ShapeBorderModel(
          {final ShapeBorderType? type_enum_shapeBorderType,
          final BoxBorderModel? boxBorder_boxBorder,
          final InputBorderModel? inputBorder_inputBorder,
          final OutlinedBorderModel outlinedBorder_outlinedBorder}) =
      _$ShapeBorderModelImpl;
  const _ShapeBorderModel._() : super._();

  factory _ShapeBorderModel.fromJson(Map<String, dynamic> json) =
      _$ShapeBorderModelImpl.fromJson;

  @override
  ShapeBorderType? get type_enum_shapeBorderType;
  @override
  BoxBorderModel? get boxBorder_boxBorder;
  @override
  InputBorderModel? get inputBorder_inputBorder;
  @override
  OutlinedBorderModel get outlinedBorder_outlinedBorder;
  @override
  @JsonKey(ignore: true)
  _$$ShapeBorderModelImplCopyWith<_$ShapeBorderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
