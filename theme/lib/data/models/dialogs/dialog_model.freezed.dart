// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DialogModel _$DialogModelFromJson(Map<String, dynamic> json) {
  return _DialogModel.fromJson(json);
}

/// @nodoc
mixin _$DialogModel {
  String? get backgroundColor_themeColorString =>
      throw _privateConstructorUsedError;
  double? get elevation_double => throw _privateConstructorUsedError;
  String? get shadowColor_themeColorString =>
      throw _privateConstructorUsedError;
  String? get surfaceTintColor_themeColorString =>
      throw _privateConstructorUsedError; // @OutlinedBorderConverter()
  ShapeBorderModel? get shape_shapeBorder => throw _privateConstructorUsedError;
  AlignmentOptions? get alignment_enum_alignmentOptions =>
      throw _privateConstructorUsedError;
  String? get iconColor_themeColorString => throw _privateConstructorUsedError;
  String? get titleTextStyle_textStyleString =>
      throw _privateConstructorUsedError;
  String? get contentTextStyle_textStyleString =>
      throw _privateConstructorUsedError;
  EdgeInsetsModel? get actionsPadding_edgeInsets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DialogModelCopyWith<DialogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogModelCopyWith<$Res> {
  factory $DialogModelCopyWith(
          DialogModel value, $Res Function(DialogModel) then) =
      _$DialogModelCopyWithImpl<$Res, DialogModel>;
  @useResult
  $Res call(
      {String? backgroundColor_themeColorString,
      double? elevation_double,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      ShapeBorderModel? shape_shapeBorder,
      AlignmentOptions? alignment_enum_alignmentOptions,
      String? iconColor_themeColorString,
      String? titleTextStyle_textStyleString,
      String? contentTextStyle_textStyleString,
      EdgeInsetsModel? actionsPadding_edgeInsets});

  $ShapeBorderModelCopyWith<$Res>? get shape_shapeBorder;
  $EdgeInsetsModelCopyWith<$Res>? get actionsPadding_edgeInsets;
}

/// @nodoc
class _$DialogModelCopyWithImpl<$Res, $Val extends DialogModel>
    implements $DialogModelCopyWith<$Res> {
  _$DialogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor_themeColorString = freezed,
    Object? elevation_double = freezed,
    Object? shadowColor_themeColorString = freezed,
    Object? surfaceTintColor_themeColorString = freezed,
    Object? shape_shapeBorder = freezed,
    Object? alignment_enum_alignmentOptions = freezed,
    Object? iconColor_themeColorString = freezed,
    Object? titleTextStyle_textStyleString = freezed,
    Object? contentTextStyle_textStyleString = freezed,
    Object? actionsPadding_edgeInsets = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor_themeColorString: freezed ==
              backgroundColor_themeColorString
          ? _value.backgroundColor_themeColorString
          : backgroundColor_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation_double: freezed == elevation_double
          ? _value.elevation_double
          : elevation_double // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor_themeColorString: freezed == shadowColor_themeColorString
          ? _value.shadowColor_themeColorString
          : shadowColor_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor_themeColorString: freezed ==
              surfaceTintColor_themeColorString
          ? _value.surfaceTintColor_themeColorString
          : surfaceTintColor_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      shape_shapeBorder: freezed == shape_shapeBorder
          ? _value.shape_shapeBorder
          : shape_shapeBorder // ignore: cast_nullable_to_non_nullable
              as ShapeBorderModel?,
      alignment_enum_alignmentOptions: freezed ==
              alignment_enum_alignmentOptions
          ? _value.alignment_enum_alignmentOptions
          : alignment_enum_alignmentOptions // ignore: cast_nullable_to_non_nullable
              as AlignmentOptions?,
      iconColor_themeColorString: freezed == iconColor_themeColorString
          ? _value.iconColor_themeColorString
          : iconColor_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      titleTextStyle_textStyleString: freezed == titleTextStyle_textStyleString
          ? _value.titleTextStyle_textStyleString
          : titleTextStyle_textStyleString // ignore: cast_nullable_to_non_nullable
              as String?,
      contentTextStyle_textStyleString: freezed ==
              contentTextStyle_textStyleString
          ? _value.contentTextStyle_textStyleString
          : contentTextStyle_textStyleString // ignore: cast_nullable_to_non_nullable
              as String?,
      actionsPadding_edgeInsets: freezed == actionsPadding_edgeInsets
          ? _value.actionsPadding_edgeInsets
          : actionsPadding_edgeInsets // ignore: cast_nullable_to_non_nullable
              as EdgeInsetsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShapeBorderModelCopyWith<$Res>? get shape_shapeBorder {
    if (_value.shape_shapeBorder == null) {
      return null;
    }

    return $ShapeBorderModelCopyWith<$Res>(_value.shape_shapeBorder!, (value) {
      return _then(_value.copyWith(shape_shapeBorder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EdgeInsetsModelCopyWith<$Res>? get actionsPadding_edgeInsets {
    if (_value.actionsPadding_edgeInsets == null) {
      return null;
    }

    return $EdgeInsetsModelCopyWith<$Res>(_value.actionsPadding_edgeInsets!,
        (value) {
      return _then(_value.copyWith(actionsPadding_edgeInsets: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DialogModelImplCopyWith<$Res>
    implements $DialogModelCopyWith<$Res> {
  factory _$$DialogModelImplCopyWith(
          _$DialogModelImpl value, $Res Function(_$DialogModelImpl) then) =
      __$$DialogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? backgroundColor_themeColorString,
      double? elevation_double,
      String? shadowColor_themeColorString,
      String? surfaceTintColor_themeColorString,
      ShapeBorderModel? shape_shapeBorder,
      AlignmentOptions? alignment_enum_alignmentOptions,
      String? iconColor_themeColorString,
      String? titleTextStyle_textStyleString,
      String? contentTextStyle_textStyleString,
      EdgeInsetsModel? actionsPadding_edgeInsets});

  @override
  $ShapeBorderModelCopyWith<$Res>? get shape_shapeBorder;
  @override
  $EdgeInsetsModelCopyWith<$Res>? get actionsPadding_edgeInsets;
}

/// @nodoc
class __$$DialogModelImplCopyWithImpl<$Res>
    extends _$DialogModelCopyWithImpl<$Res, _$DialogModelImpl>
    implements _$$DialogModelImplCopyWith<$Res> {
  __$$DialogModelImplCopyWithImpl(
      _$DialogModelImpl _value, $Res Function(_$DialogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor_themeColorString = freezed,
    Object? elevation_double = freezed,
    Object? shadowColor_themeColorString = freezed,
    Object? surfaceTintColor_themeColorString = freezed,
    Object? shape_shapeBorder = freezed,
    Object? alignment_enum_alignmentOptions = freezed,
    Object? iconColor_themeColorString = freezed,
    Object? titleTextStyle_textStyleString = freezed,
    Object? contentTextStyle_textStyleString = freezed,
    Object? actionsPadding_edgeInsets = freezed,
  }) {
    return _then(_$DialogModelImpl(
      backgroundColor_themeColorString: freezed ==
              backgroundColor_themeColorString
          ? _value.backgroundColor_themeColorString
          : backgroundColor_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation_double: freezed == elevation_double
          ? _value.elevation_double
          : elevation_double // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor_themeColorString: freezed == shadowColor_themeColorString
          ? _value.shadowColor_themeColorString
          : shadowColor_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor_themeColorString: freezed ==
              surfaceTintColor_themeColorString
          ? _value.surfaceTintColor_themeColorString
          : surfaceTintColor_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      shape_shapeBorder: freezed == shape_shapeBorder
          ? _value.shape_shapeBorder
          : shape_shapeBorder // ignore: cast_nullable_to_non_nullable
              as ShapeBorderModel?,
      alignment_enum_alignmentOptions: freezed ==
              alignment_enum_alignmentOptions
          ? _value.alignment_enum_alignmentOptions
          : alignment_enum_alignmentOptions // ignore: cast_nullable_to_non_nullable
              as AlignmentOptions?,
      iconColor_themeColorString: freezed == iconColor_themeColorString
          ? _value.iconColor_themeColorString
          : iconColor_themeColorString // ignore: cast_nullable_to_non_nullable
              as String?,
      titleTextStyle_textStyleString: freezed == titleTextStyle_textStyleString
          ? _value.titleTextStyle_textStyleString
          : titleTextStyle_textStyleString // ignore: cast_nullable_to_non_nullable
              as String?,
      contentTextStyle_textStyleString: freezed ==
              contentTextStyle_textStyleString
          ? _value.contentTextStyle_textStyleString
          : contentTextStyle_textStyleString // ignore: cast_nullable_to_non_nullable
              as String?,
      actionsPadding_edgeInsets: freezed == actionsPadding_edgeInsets
          ? _value.actionsPadding_edgeInsets
          : actionsPadding_edgeInsets // ignore: cast_nullable_to_non_nullable
              as EdgeInsetsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogModelImpl extends _DialogModel {
  const _$DialogModelImpl(
      {this.backgroundColor_themeColorString,
      this.elevation_double,
      this.shadowColor_themeColorString,
      this.surfaceTintColor_themeColorString,
      this.shape_shapeBorder,
      this.alignment_enum_alignmentOptions,
      this.iconColor_themeColorString,
      this.titleTextStyle_textStyleString,
      this.contentTextStyle_textStyleString,
      this.actionsPadding_edgeInsets = const EdgeInsetsModel()})
      : super._();

  factory _$DialogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogModelImplFromJson(json);

  @override
  final String? backgroundColor_themeColorString;
  @override
  final double? elevation_double;
  @override
  final String? shadowColor_themeColorString;
  @override
  final String? surfaceTintColor_themeColorString;
// @OutlinedBorderConverter()
  @override
  final ShapeBorderModel? shape_shapeBorder;
  @override
  final AlignmentOptions? alignment_enum_alignmentOptions;
  @override
  final String? iconColor_themeColorString;
  @override
  final String? titleTextStyle_textStyleString;
  @override
  final String? contentTextStyle_textStyleString;
  @override
  @JsonKey()
  final EdgeInsetsModel? actionsPadding_edgeInsets;

  @override
  String toString() {
    return 'DialogModel(backgroundColor_themeColorString: $backgroundColor_themeColorString, elevation_double: $elevation_double, shadowColor_themeColorString: $shadowColor_themeColorString, surfaceTintColor_themeColorString: $surfaceTintColor_themeColorString, shape_shapeBorder: $shape_shapeBorder, alignment_enum_alignmentOptions: $alignment_enum_alignmentOptions, iconColor_themeColorString: $iconColor_themeColorString, titleTextStyle_textStyleString: $titleTextStyle_textStyleString, contentTextStyle_textStyleString: $contentTextStyle_textStyleString, actionsPadding_edgeInsets: $actionsPadding_edgeInsets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogModelImpl &&
            (identical(other.backgroundColor_themeColorString, backgroundColor_themeColorString) ||
                other.backgroundColor_themeColorString ==
                    backgroundColor_themeColorString) &&
            (identical(other.elevation_double, elevation_double) ||
                other.elevation_double == elevation_double) &&
            (identical(other.shadowColor_themeColorString, shadowColor_themeColorString) ||
                other.shadowColor_themeColorString ==
                    shadowColor_themeColorString) &&
            (identical(other.surfaceTintColor_themeColorString,
                    surfaceTintColor_themeColorString) ||
                other.surfaceTintColor_themeColorString ==
                    surfaceTintColor_themeColorString) &&
            (identical(other.shape_shapeBorder, shape_shapeBorder) ||
                other.shape_shapeBorder == shape_shapeBorder) &&
            (identical(other.alignment_enum_alignmentOptions, alignment_enum_alignmentOptions) ||
                other.alignment_enum_alignmentOptions ==
                    alignment_enum_alignmentOptions) &&
            (identical(other.iconColor_themeColorString, iconColor_themeColorString) ||
                other.iconColor_themeColorString ==
                    iconColor_themeColorString) &&
            (identical(other.titleTextStyle_textStyleString, titleTextStyle_textStyleString) ||
                other.titleTextStyle_textStyleString ==
                    titleTextStyle_textStyleString) &&
            (identical(other.contentTextStyle_textStyleString,
                    contentTextStyle_textStyleString) ||
                other.contentTextStyle_textStyleString ==
                    contentTextStyle_textStyleString) &&
            (identical(
                    other.actionsPadding_edgeInsets, actionsPadding_edgeInsets) ||
                other.actionsPadding_edgeInsets == actionsPadding_edgeInsets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor_themeColorString,
      elevation_double,
      shadowColor_themeColorString,
      surfaceTintColor_themeColorString,
      shape_shapeBorder,
      alignment_enum_alignmentOptions,
      iconColor_themeColorString,
      titleTextStyle_textStyleString,
      contentTextStyle_textStyleString,
      actionsPadding_edgeInsets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogModelImplCopyWith<_$DialogModelImpl> get copyWith =>
      __$$DialogModelImplCopyWithImpl<_$DialogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogModelImplToJson(
      this,
    );
  }
}

abstract class _DialogModel extends DialogModel {
  const factory _DialogModel(
      {final String? backgroundColor_themeColorString,
      final double? elevation_double,
      final String? shadowColor_themeColorString,
      final String? surfaceTintColor_themeColorString,
      final ShapeBorderModel? shape_shapeBorder,
      final AlignmentOptions? alignment_enum_alignmentOptions,
      final String? iconColor_themeColorString,
      final String? titleTextStyle_textStyleString,
      final String? contentTextStyle_textStyleString,
      final EdgeInsetsModel? actionsPadding_edgeInsets}) = _$DialogModelImpl;
  const _DialogModel._() : super._();

  factory _DialogModel.fromJson(Map<String, dynamic> json) =
      _$DialogModelImpl.fromJson;

  @override
  String? get backgroundColor_themeColorString;
  @override
  double? get elevation_double;
  @override
  String? get shadowColor_themeColorString;
  @override
  String? get surfaceTintColor_themeColorString;
  @override // @OutlinedBorderConverter()
  ShapeBorderModel? get shape_shapeBorder;
  @override
  AlignmentOptions? get alignment_enum_alignmentOptions;
  @override
  String? get iconColor_themeColorString;
  @override
  String? get titleTextStyle_textStyleString;
  @override
  String? get contentTextStyle_textStyleString;
  @override
  EdgeInsetsModel? get actionsPadding_edgeInsets;
  @override
  @JsonKey(ignore: true)
  _$$DialogModelImplCopyWith<_$DialogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
