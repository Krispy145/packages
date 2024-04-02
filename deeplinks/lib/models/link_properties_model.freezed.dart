// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_properties_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinkPropertiesModel _$LinkPropertiesModelFromJson(Map<String, dynamic> json) {
  return _LinkProperties.fromJson(json);
}

/// @nodoc
mixin _$LinkPropertiesModel {
  List<String> get tags => throw _privateConstructorUsedError;
  set tags(List<String> value) => throw _privateConstructorUsedError;
  String? get feature => throw _privateConstructorUsedError;
  set feature(String? value) => throw _privateConstructorUsedError;
  String? get alias => throw _privateConstructorUsedError;
  set alias(String? value) => throw _privateConstructorUsedError;
  String? get stage => throw _privateConstructorUsedError;
  set stage(String? value) => throw _privateConstructorUsedError;
  Duration? get matchDuration => throw _privateConstructorUsedError;
  set matchDuration(Duration? value) => throw _privateConstructorUsedError;
  String? get channel => throw _privateConstructorUsedError;
  set channel(String? value) => throw _privateConstructorUsedError;
  String? get campaign => throw _privateConstructorUsedError;
  set campaign(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkPropertiesModelCopyWith<LinkPropertiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPropertiesModelCopyWith<$Res> {
  factory $LinkPropertiesModelCopyWith(
          LinkPropertiesModel value, $Res Function(LinkPropertiesModel) then) =
      _$LinkPropertiesModelCopyWithImpl<$Res, LinkPropertiesModel>;
  @useResult
  $Res call(
      {List<String> tags,
      String? feature,
      String? alias,
      String? stage,
      Duration? matchDuration,
      String? channel,
      String? campaign});
}

/// @nodoc
class _$LinkPropertiesModelCopyWithImpl<$Res, $Val extends LinkPropertiesModel>
    implements $LinkPropertiesModelCopyWith<$Res> {
  _$LinkPropertiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? feature = freezed,
    Object? alias = freezed,
    Object? stage = freezed,
    Object? matchDuration = freezed,
    Object? channel = freezed,
    Object? campaign = freezed,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feature: freezed == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String?,
      matchDuration: freezed == matchDuration
          ? _value.matchDuration
          : matchDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      campaign: freezed == campaign
          ? _value.campaign
          : campaign // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkPropertiesImplCopyWith<$Res>
    implements $LinkPropertiesModelCopyWith<$Res> {
  factory _$$LinkPropertiesImplCopyWith(_$LinkPropertiesImpl value,
          $Res Function(_$LinkPropertiesImpl) then) =
      __$$LinkPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> tags,
      String? feature,
      String? alias,
      String? stage,
      Duration? matchDuration,
      String? channel,
      String? campaign});
}

/// @nodoc
class __$$LinkPropertiesImplCopyWithImpl<$Res>
    extends _$LinkPropertiesModelCopyWithImpl<$Res, _$LinkPropertiesImpl>
    implements _$$LinkPropertiesImplCopyWith<$Res> {
  __$$LinkPropertiesImplCopyWithImpl(
      _$LinkPropertiesImpl _value, $Res Function(_$LinkPropertiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? feature = freezed,
    Object? alias = freezed,
    Object? stage = freezed,
    Object? matchDuration = freezed,
    Object? channel = freezed,
    Object? campaign = freezed,
  }) {
    return _then(_$LinkPropertiesImpl(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      feature: freezed == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String?,
      matchDuration: freezed == matchDuration
          ? _value.matchDuration
          : matchDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      campaign: freezed == campaign
          ? _value.campaign
          : campaign // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkPropertiesImpl extends _LinkProperties {
  _$LinkPropertiesImpl(
      {this.tags = const [],
      this.feature,
      this.alias,
      this.stage,
      this.matchDuration,
      this.channel,
      this.campaign})
      : super._();

  factory _$LinkPropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkPropertiesImplFromJson(json);

  @override
  @JsonKey()
  List<String> tags;
  @override
  String? feature;
  @override
  String? alias;
  @override
  String? stage;
  @override
  Duration? matchDuration;
  @override
  String? channel;
  @override
  String? campaign;

  @override
  String toString() {
    return 'LinkPropertiesModel(tags: $tags, feature: $feature, alias: $alias, stage: $stage, matchDuration: $matchDuration, channel: $channel, campaign: $campaign)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkPropertiesImplCopyWith<_$LinkPropertiesImpl> get copyWith =>
      __$$LinkPropertiesImplCopyWithImpl<_$LinkPropertiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkPropertiesImplToJson(
      this,
    );
  }
}

abstract class _LinkProperties extends LinkPropertiesModel {
  factory _LinkProperties(
      {List<String> tags,
      String? feature,
      String? alias,
      String? stage,
      Duration? matchDuration,
      String? channel,
      String? campaign}) = _$LinkPropertiesImpl;
  _LinkProperties._() : super._();

  factory _LinkProperties.fromJson(Map<String, dynamic> json) =
      _$LinkPropertiesImpl.fromJson;

  @override
  List<String> get tags;
  set tags(List<String> value);
  @override
  String? get feature;
  set feature(String? value);
  @override
  String? get alias;
  set alias(String? value);
  @override
  String? get stage;
  set stage(String? value);
  @override
  Duration? get matchDuration;
  set matchDuration(Duration? value);
  @override
  String? get channel;
  set channel(String? value);
  @override
  String? get campaign;
  set campaign(String? value);
  @override
  @JsonKey(ignore: true)
  _$$LinkPropertiesImplCopyWith<_$LinkPropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
