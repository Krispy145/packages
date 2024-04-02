// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deeplink_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeepLinkModel _$DeepLinkModelFromJson(Map<String, dynamic> json) {
  return _DeepLink.fromJson(json);
}

/// @nodoc
mixin _$DeepLinkModel {
  String get canonicalIdentifier => throw _privateConstructorUsedError;
  set canonicalIdentifier(String value) => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String? get contentDescription => throw _privateConstructorUsedError;
  set contentDescription(String? value) => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  set imageUrl(String? value) => throw _privateConstructorUsedError;
  String? get canonicalUrl => throw _privateConstructorUsedError;
  set canonicalUrl(String? value) => throw _privateConstructorUsedError;
  AppDestination? get destination => throw _privateConstructorUsedError;
  set destination(AppDestination? value) => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  set metadata(Map<String, dynamic>? value) =>
      throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;
  set keywords(List<String> value) => throw _privateConstructorUsedError;
  bool get publicIndex => throw _privateConstructorUsedError;
  set publicIndex(bool value) => throw _privateConstructorUsedError;
  bool get localIndex => throw _privateConstructorUsedError;
  set localIndex(bool value) => throw _privateConstructorUsedError;
  DateTime? get expirationDate => throw _privateConstructorUsedError;
  set expirationDate(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeepLinkModelCopyWith<DeepLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepLinkModelCopyWith<$Res> {
  factory $DeepLinkModelCopyWith(
          DeepLinkModel value, $Res Function(DeepLinkModel) then) =
      _$DeepLinkModelCopyWithImpl<$Res, DeepLinkModel>;
  @useResult
  $Res call(
      {String canonicalIdentifier,
      String title,
      String? contentDescription,
      String? imageUrl,
      String? canonicalUrl,
      AppDestination? destination,
      Map<String, dynamic>? metadata,
      List<String> keywords,
      bool publicIndex,
      bool localIndex,
      DateTime? expirationDate});

  $AppDestinationCopyWith<$Res>? get destination;
}

/// @nodoc
class _$DeepLinkModelCopyWithImpl<$Res, $Val extends DeepLinkModel>
    implements $DeepLinkModelCopyWith<$Res> {
  _$DeepLinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canonicalIdentifier = null,
    Object? title = null,
    Object? contentDescription = freezed,
    Object? imageUrl = freezed,
    Object? canonicalUrl = freezed,
    Object? destination = freezed,
    Object? metadata = freezed,
    Object? keywords = null,
    Object? publicIndex = null,
    Object? localIndex = null,
    Object? expirationDate = freezed,
  }) {
    return _then(_value.copyWith(
      canonicalIdentifier: null == canonicalIdentifier
          ? _value.canonicalIdentifier
          : canonicalIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contentDescription: freezed == contentDescription
          ? _value.contentDescription
          : contentDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalUrl: freezed == canonicalUrl
          ? _value.canonicalUrl
          : canonicalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as AppDestination?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publicIndex: null == publicIndex
          ? _value.publicIndex
          : publicIndex // ignore: cast_nullable_to_non_nullable
              as bool,
      localIndex: null == localIndex
          ? _value.localIndex
          : localIndex // ignore: cast_nullable_to_non_nullable
              as bool,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppDestinationCopyWith<$Res>? get destination {
    if (_value.destination == null) {
      return null;
    }

    return $AppDestinationCopyWith<$Res>(_value.destination!, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeepLinkImplCopyWith<$Res>
    implements $DeepLinkModelCopyWith<$Res> {
  factory _$$DeepLinkImplCopyWith(
          _$DeepLinkImpl value, $Res Function(_$DeepLinkImpl) then) =
      __$$DeepLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String canonicalIdentifier,
      String title,
      String? contentDescription,
      String? imageUrl,
      String? canonicalUrl,
      AppDestination? destination,
      Map<String, dynamic>? metadata,
      List<String> keywords,
      bool publicIndex,
      bool localIndex,
      DateTime? expirationDate});

  @override
  $AppDestinationCopyWith<$Res>? get destination;
}

/// @nodoc
class __$$DeepLinkImplCopyWithImpl<$Res>
    extends _$DeepLinkModelCopyWithImpl<$Res, _$DeepLinkImpl>
    implements _$$DeepLinkImplCopyWith<$Res> {
  __$$DeepLinkImplCopyWithImpl(
      _$DeepLinkImpl _value, $Res Function(_$DeepLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canonicalIdentifier = null,
    Object? title = null,
    Object? contentDescription = freezed,
    Object? imageUrl = freezed,
    Object? canonicalUrl = freezed,
    Object? destination = freezed,
    Object? metadata = freezed,
    Object? keywords = null,
    Object? publicIndex = null,
    Object? localIndex = null,
    Object? expirationDate = freezed,
  }) {
    return _then(_$DeepLinkImpl(
      canonicalIdentifier: null == canonicalIdentifier
          ? _value.canonicalIdentifier
          : canonicalIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contentDescription: freezed == contentDescription
          ? _value.contentDescription
          : contentDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalUrl: freezed == canonicalUrl
          ? _value.canonicalUrl
          : canonicalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as AppDestination?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publicIndex: null == publicIndex
          ? _value.publicIndex
          : publicIndex // ignore: cast_nullable_to_non_nullable
              as bool,
      localIndex: null == localIndex
          ? _value.localIndex
          : localIndex // ignore: cast_nullable_to_non_nullable
              as bool,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeepLinkImpl extends _DeepLink {
  _$DeepLinkImpl(
      {required this.canonicalIdentifier,
      required this.title,
      this.contentDescription,
      this.imageUrl,
      this.canonicalUrl,
      this.destination,
      this.metadata,
      this.keywords = const [],
      this.publicIndex = true,
      this.localIndex = true,
      this.expirationDate})
      : super._();

  factory _$DeepLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeepLinkImplFromJson(json);

  @override
  String canonicalIdentifier;
  @override
  String title;
  @override
  String? contentDescription;
  @override
  String? imageUrl;
  @override
  String? canonicalUrl;
  @override
  AppDestination? destination;
  @override
  Map<String, dynamic>? metadata;
  @override
  @JsonKey()
  List<String> keywords;
  @override
  @JsonKey()
  bool publicIndex;
  @override
  @JsonKey()
  bool localIndex;
  @override
  DateTime? expirationDate;

  @override
  String toString() {
    return 'DeepLinkModel(canonicalIdentifier: $canonicalIdentifier, title: $title, contentDescription: $contentDescription, imageUrl: $imageUrl, canonicalUrl: $canonicalUrl, destination: $destination, metadata: $metadata, keywords: $keywords, publicIndex: $publicIndex, localIndex: $localIndex, expirationDate: $expirationDate)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeepLinkImplCopyWith<_$DeepLinkImpl> get copyWith =>
      __$$DeepLinkImplCopyWithImpl<_$DeepLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeepLinkImplToJson(
      this,
    );
  }
}

abstract class _DeepLink extends DeepLinkModel {
  factory _DeepLink(
      {required String canonicalIdentifier,
      required String title,
      String? contentDescription,
      String? imageUrl,
      String? canonicalUrl,
      AppDestination? destination,
      Map<String, dynamic>? metadata,
      List<String> keywords,
      bool publicIndex,
      bool localIndex,
      DateTime? expirationDate}) = _$DeepLinkImpl;
  _DeepLink._() : super._();

  factory _DeepLink.fromJson(Map<String, dynamic> json) =
      _$DeepLinkImpl.fromJson;

  @override
  String get canonicalIdentifier;
  set canonicalIdentifier(String value);
  @override
  String get title;
  set title(String value);
  @override
  String? get contentDescription;
  set contentDescription(String? value);
  @override
  String? get imageUrl;
  set imageUrl(String? value);
  @override
  String? get canonicalUrl;
  set canonicalUrl(String? value);
  @override
  AppDestination? get destination;
  set destination(AppDestination? value);
  @override
  Map<String, dynamic>? get metadata;
  set metadata(Map<String, dynamic>? value);
  @override
  List<String> get keywords;
  set keywords(List<String> value);
  @override
  bool get publicIndex;
  set publicIndex(bool value);
  @override
  bool get localIndex;
  set localIndex(bool value);
  @override
  DateTime? get expirationDate;
  set expirationDate(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$DeepLinkImplCopyWith<_$DeepLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
