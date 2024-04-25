// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_review_model.dart';

class PlaceReviewMapper extends ClassMapperBase<PlaceReview> {
  PlaceReviewMapper._();

  static PlaceReviewMapper? _instance;
  static PlaceReviewMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaceReviewMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlaceReview';

  static String _$authorName(PlaceReview v) => v.authorName;
  static const Field<PlaceReview, String> _f$authorName =
      Field('authorName', _$authorName, key: 'author_name');
  static double _$rating(PlaceReview v) => v.rating;
  static const Field<PlaceReview, double> _f$rating = Field('rating', _$rating);
  static String _$relativeTimeDescription(PlaceReview v) =>
      v.relativeTimeDescription;
  static const Field<PlaceReview, String> _f$relativeTimeDescription = Field(
      'relativeTimeDescription', _$relativeTimeDescription,
      key: 'relative_time_description');
  static double _$time(PlaceReview v) => v.time;
  static const Field<PlaceReview, double> _f$time = Field('time', _$time);
  static String? _$authorUrl(PlaceReview v) => v.authorUrl;
  static const Field<PlaceReview, String> _f$authorUrl =
      Field('authorUrl', _$authorUrl, key: 'author_url', opt: true);
  static String? _$language(PlaceReview v) => v.language;
  static const Field<PlaceReview, String> _f$language =
      Field('language', _$language, opt: true);
  static String? _$originalLanguage(PlaceReview v) => v.originalLanguage;
  static const Field<PlaceReview, String> _f$originalLanguage = Field(
      'originalLanguage', _$originalLanguage,
      key: 'original_language', opt: true);
  static String? _$profilePhotoUrl(PlaceReview v) => v.profilePhotoUrl;
  static const Field<PlaceReview, String> _f$profilePhotoUrl = Field(
      'profilePhotoUrl', _$profilePhotoUrl,
      key: 'profile_photo_url', opt: true);
  static String? _$text(PlaceReview v) => v.text;
  static const Field<PlaceReview, String> _f$text =
      Field('text', _$text, opt: true);
  static bool? _$translated(PlaceReview v) => v.translated;
  static const Field<PlaceReview, bool> _f$translated =
      Field('translated', _$translated, opt: true);

  @override
  final MappableFields<PlaceReview> fields = const {
    #authorName: _f$authorName,
    #rating: _f$rating,
    #relativeTimeDescription: _f$relativeTimeDescription,
    #time: _f$time,
    #authorUrl: _f$authorUrl,
    #language: _f$language,
    #originalLanguage: _f$originalLanguage,
    #profilePhotoUrl: _f$profilePhotoUrl,
    #text: _f$text,
    #translated: _f$translated,
  };

  static PlaceReview _instantiate(DecodingData data) {
    return PlaceReview(
        authorName: data.dec(_f$authorName),
        rating: data.dec(_f$rating),
        relativeTimeDescription: data.dec(_f$relativeTimeDescription),
        time: data.dec(_f$time),
        authorUrl: data.dec(_f$authorUrl),
        language: data.dec(_f$language),
        originalLanguage: data.dec(_f$originalLanguage),
        profilePhotoUrl: data.dec(_f$profilePhotoUrl),
        text: data.dec(_f$text),
        translated: data.dec(_f$translated));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaceReview fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaceReview>(map);
  }

  static PlaceReview fromJson(String json) {
    return ensureInitialized().decodeJson<PlaceReview>(json);
  }
}

mixin PlaceReviewMappable {
  String toJson() {
    return PlaceReviewMapper.ensureInitialized()
        .encodeJson<PlaceReview>(this as PlaceReview);
  }

  Map<String, dynamic> toMap() {
    return PlaceReviewMapper.ensureInitialized()
        .encodeMap<PlaceReview>(this as PlaceReview);
  }

  PlaceReviewCopyWith<PlaceReview, PlaceReview, PlaceReview> get copyWith =>
      _PlaceReviewCopyWithImpl(this as PlaceReview, $identity, $identity);
  @override
  String toString() {
    return PlaceReviewMapper.ensureInitialized()
        .stringifyValue(this as PlaceReview);
  }

  @override
  bool operator ==(Object other) {
    return PlaceReviewMapper.ensureInitialized()
        .equalsValue(this as PlaceReview, other);
  }

  @override
  int get hashCode {
    return PlaceReviewMapper.ensureInitialized().hashValue(this as PlaceReview);
  }
}

extension PlaceReviewValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaceReview, $Out> {
  PlaceReviewCopyWith<$R, PlaceReview, $Out> get $asPlaceReview =>
      $base.as((v, t, t2) => _PlaceReviewCopyWithImpl(v, t, t2));
}

abstract class PlaceReviewCopyWith<$R, $In extends PlaceReview, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? authorName,
      double? rating,
      String? relativeTimeDescription,
      double? time,
      String? authorUrl,
      String? language,
      String? originalLanguage,
      String? profilePhotoUrl,
      String? text,
      bool? translated});
  PlaceReviewCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlaceReviewCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaceReview, $Out>
    implements PlaceReviewCopyWith<$R, PlaceReview, $Out> {
  _PlaceReviewCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaceReview> $mapper =
      PlaceReviewMapper.ensureInitialized();
  @override
  $R call(
          {String? authorName,
          double? rating,
          String? relativeTimeDescription,
          double? time,
          Object? authorUrl = $none,
          Object? language = $none,
          Object? originalLanguage = $none,
          Object? profilePhotoUrl = $none,
          Object? text = $none,
          Object? translated = $none}) =>
      $apply(FieldCopyWithData({
        if (authorName != null) #authorName: authorName,
        if (rating != null) #rating: rating,
        if (relativeTimeDescription != null)
          #relativeTimeDescription: relativeTimeDescription,
        if (time != null) #time: time,
        if (authorUrl != $none) #authorUrl: authorUrl,
        if (language != $none) #language: language,
        if (originalLanguage != $none) #originalLanguage: originalLanguage,
        if (profilePhotoUrl != $none) #profilePhotoUrl: profilePhotoUrl,
        if (text != $none) #text: text,
        if (translated != $none) #translated: translated
      }));
  @override
  PlaceReview $make(CopyWithData data) => PlaceReview(
      authorName: data.get(#authorName, or: $value.authorName),
      rating: data.get(#rating, or: $value.rating),
      relativeTimeDescription: data.get(#relativeTimeDescription,
          or: $value.relativeTimeDescription),
      time: data.get(#time, or: $value.time),
      authorUrl: data.get(#authorUrl, or: $value.authorUrl),
      language: data.get(#language, or: $value.language),
      originalLanguage:
          data.get(#originalLanguage, or: $value.originalLanguage),
      profilePhotoUrl: data.get(#profilePhotoUrl, or: $value.profilePhotoUrl),
      text: data.get(#text, or: $value.text),
      translated: data.get(#translated, or: $value.translated));

  @override
  PlaceReviewCopyWith<$R2, PlaceReview, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlaceReviewCopyWithImpl($value, $cast, t);
}
