// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_search_query_parameters_model.dart';

class GoogleTextSearchParametersMapper
    extends ClassMapperBase<GoogleTextSearchParameters> {
  GoogleTextSearchParametersMapper._();

  static GoogleTextSearchParametersMapper? _instance;
  static GoogleTextSearchParametersMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GoogleTextSearchParametersMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GoogleTextSearchParameters';

  static String _$query(GoogleTextSearchParameters v) => v.query;
  static const Field<GoogleTextSearchParameters, String> _f$query =
      Field('query', _$query);
  static String? _$language(GoogleTextSearchParameters v) => v.language;
  static const Field<GoogleTextSearchParameters, String> _f$language =
      Field('language', _$language, opt: true);
  static String? _$region(GoogleTextSearchParameters v) => v.region;
  static const Field<GoogleTextSearchParameters, String> _f$region =
      Field('region', _$region, opt: true);
  static String? _$location(GoogleTextSearchParameters v) => v.location;
  static const Field<GoogleTextSearchParameters, String> _f$location =
      Field('location', _$location, opt: true);
  static String? _$radius(GoogleTextSearchParameters v) => v.radius;
  static const Field<GoogleTextSearchParameters, String> _f$radius =
      Field('radius', _$radius, opt: true);
  static String? _$type(GoogleTextSearchParameters v) => v.type;
  static const Field<GoogleTextSearchParameters, String> _f$type =
      Field('type', _$type, opt: true);
  static String? _$openNow(GoogleTextSearchParameters v) => v.openNow;
  static const Field<GoogleTextSearchParameters, String> _f$openNow =
      Field('openNow', _$openNow, opt: true);
  static String? _$minPrice(GoogleTextSearchParameters v) => v.minPrice;
  static const Field<GoogleTextSearchParameters, String> _f$minPrice =
      Field('minPrice', _$minPrice, opt: true);
  static String? _$maxPrice(GoogleTextSearchParameters v) => v.maxPrice;
  static const Field<GoogleTextSearchParameters, String> _f$maxPrice =
      Field('maxPrice', _$maxPrice, opt: true);
  static String? _$keyword(GoogleTextSearchParameters v) => v.keyword;
  static const Field<GoogleTextSearchParameters, String> _f$keyword =
      Field('keyword', _$keyword, opt: true);
  static String? _$pageToken(GoogleTextSearchParameters v) => v.pageToken;
  static const Field<GoogleTextSearchParameters, String> _f$pageToken =
      Field('pageToken', _$pageToken, opt: true);

  @override
  final MappableFields<GoogleTextSearchParameters> fields = const {
    #query: _f$query,
    #language: _f$language,
    #region: _f$region,
    #location: _f$location,
    #radius: _f$radius,
    #type: _f$type,
    #openNow: _f$openNow,
    #minPrice: _f$minPrice,
    #maxPrice: _f$maxPrice,
    #keyword: _f$keyword,
    #pageToken: _f$pageToken,
  };
  @override
  final bool ignoreNull = true;

  static GoogleTextSearchParameters _instantiate(DecodingData data) {
    return GoogleTextSearchParameters(
        query: data.dec(_f$query),
        language: data.dec(_f$language),
        region: data.dec(_f$region),
        location: data.dec(_f$location),
        radius: data.dec(_f$radius),
        type: data.dec(_f$type),
        openNow: data.dec(_f$openNow),
        minPrice: data.dec(_f$minPrice),
        maxPrice: data.dec(_f$maxPrice),
        keyword: data.dec(_f$keyword),
        pageToken: data.dec(_f$pageToken));
  }

  @override
  final Function instantiate = _instantiate;

  static GoogleTextSearchParameters fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GoogleTextSearchParameters>(map);
  }

  static GoogleTextSearchParameters fromJson(String json) {
    return ensureInitialized().decodeJson<GoogleTextSearchParameters>(json);
  }
}

mixin GoogleTextSearchParametersMappable {
  String toJson() {
    return GoogleTextSearchParametersMapper.ensureInitialized()
        .encodeJson<GoogleTextSearchParameters>(
            this as GoogleTextSearchParameters);
  }

  Map<String, dynamic> toMap() {
    return GoogleTextSearchParametersMapper.ensureInitialized()
        .encodeMap<GoogleTextSearchParameters>(
            this as GoogleTextSearchParameters);
  }

  GoogleTextSearchParametersCopyWith<GoogleTextSearchParameters,
          GoogleTextSearchParameters, GoogleTextSearchParameters>
      get copyWith => _GoogleTextSearchParametersCopyWithImpl(
          this as GoogleTextSearchParameters, $identity, $identity);
  @override
  String toString() {
    return GoogleTextSearchParametersMapper.ensureInitialized()
        .stringifyValue(this as GoogleTextSearchParameters);
  }

  @override
  bool operator ==(Object other) {
    return GoogleTextSearchParametersMapper.ensureInitialized()
        .equalsValue(this as GoogleTextSearchParameters, other);
  }

  @override
  int get hashCode {
    return GoogleTextSearchParametersMapper.ensureInitialized()
        .hashValue(this as GoogleTextSearchParameters);
  }
}

extension GoogleTextSearchParametersValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GoogleTextSearchParameters, $Out> {
  GoogleTextSearchParametersCopyWith<$R, GoogleTextSearchParameters, $Out>
      get $asGoogleTextSearchParameters => $base
          .as((v, t, t2) => _GoogleTextSearchParametersCopyWithImpl(v, t, t2));
}

abstract class GoogleTextSearchParametersCopyWith<
    $R,
    $In extends GoogleTextSearchParameters,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? query,
      String? language,
      String? region,
      String? location,
      String? radius,
      String? type,
      String? openNow,
      String? minPrice,
      String? maxPrice,
      String? keyword,
      String? pageToken});
  GoogleTextSearchParametersCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GoogleTextSearchParametersCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GoogleTextSearchParameters, $Out>
    implements
        GoogleTextSearchParametersCopyWith<$R, GoogleTextSearchParameters,
            $Out> {
  _GoogleTextSearchParametersCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GoogleTextSearchParameters> $mapper =
      GoogleTextSearchParametersMapper.ensureInitialized();
  @override
  $R call(
          {String? query,
          Object? language = $none,
          Object? region = $none,
          Object? location = $none,
          Object? radius = $none,
          Object? type = $none,
          Object? openNow = $none,
          Object? minPrice = $none,
          Object? maxPrice = $none,
          Object? keyword = $none,
          Object? pageToken = $none}) =>
      $apply(FieldCopyWithData({
        if (query != null) #query: query,
        if (language != $none) #language: language,
        if (region != $none) #region: region,
        if (location != $none) #location: location,
        if (radius != $none) #radius: radius,
        if (type != $none) #type: type,
        if (openNow != $none) #openNow: openNow,
        if (minPrice != $none) #minPrice: minPrice,
        if (maxPrice != $none) #maxPrice: maxPrice,
        if (keyword != $none) #keyword: keyword,
        if (pageToken != $none) #pageToken: pageToken
      }));
  @override
  GoogleTextSearchParameters $make(CopyWithData data) =>
      GoogleTextSearchParameters(
          query: data.get(#query, or: $value.query),
          language: data.get(#language, or: $value.language),
          region: data.get(#region, or: $value.region),
          location: data.get(#location, or: $value.location),
          radius: data.get(#radius, or: $value.radius),
          type: data.get(#type, or: $value.type),
          openNow: data.get(#openNow, or: $value.openNow),
          minPrice: data.get(#minPrice, or: $value.minPrice),
          maxPrice: data.get(#maxPrice, or: $value.maxPrice),
          keyword: data.get(#keyword, or: $value.keyword),
          pageToken: data.get(#pageToken, or: $value.pageToken));

  @override
  GoogleTextSearchParametersCopyWith<$R2, GoogleTextSearchParameters, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GoogleTextSearchParametersCopyWithImpl($value, $cast, t);
}
