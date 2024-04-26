// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_search_responses_model.dart';

class GooglePlaceSearchStatusMapper
    extends EnumMapper<GooglePlaceSearchStatus> {
  GooglePlaceSearchStatusMapper._();

  static GooglePlaceSearchStatusMapper? _instance;
  static GooglePlaceSearchStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GooglePlaceSearchStatusMapper._());
    }
    return _instance!;
  }

  static GooglePlaceSearchStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  GooglePlaceSearchStatus decode(dynamic value) {
    switch (value) {
      case 'OK':
        return GooglePlaceSearchStatus.ok;
      case 'ZERO_RESULTS':
        return GooglePlaceSearchStatus.zeroResults;
      case 'INVALID_REQUEST':
        return GooglePlaceSearchStatus.invalidRequest;
      case 'OVER_QUERY_LIMIT':
        return GooglePlaceSearchStatus.overQueryLimit;
      case 'REQUEST_DENIED':
        return GooglePlaceSearchStatus.requestDenied;
      case 'UNKNOWN_ERROR':
        return GooglePlaceSearchStatus.unknownError;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(GooglePlaceSearchStatus self) {
    switch (self) {
      case GooglePlaceSearchStatus.ok:
        return 'OK';
      case GooglePlaceSearchStatus.zeroResults:
        return 'ZERO_RESULTS';
      case GooglePlaceSearchStatus.invalidRequest:
        return 'INVALID_REQUEST';
      case GooglePlaceSearchStatus.overQueryLimit:
        return 'OVER_QUERY_LIMIT';
      case GooglePlaceSearchStatus.requestDenied:
        return 'REQUEST_DENIED';
      case GooglePlaceSearchStatus.unknownError:
        return 'UNKNOWN_ERROR';
    }
  }
}

extension GooglePlaceSearchStatusMapperExtension on GooglePlaceSearchStatus {
  String toValue() {
    GooglePlaceSearchStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<GooglePlaceSearchStatus>(this)
        as String;
  }
}

class GoogleTextSearchResponsesModelMapper
    extends ClassMapperBase<GoogleTextSearchResponsesModel> {
  GoogleTextSearchResponsesModelMapper._();

  static GoogleTextSearchResponsesModelMapper? _instance;
  static GoogleTextSearchResponsesModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GoogleTextSearchResponsesModelMapper._());
      GooglePlaceMapper.ensureInitialized();
      GooglePlaceSearchStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GoogleTextSearchResponsesModel';

  static List<String> _$htmlAttributions(GoogleTextSearchResponsesModel v) =>
      v.htmlAttributions;
  static const Field<GoogleTextSearchResponsesModel, List<String>>
      _f$htmlAttributions =
      Field('htmlAttributions', _$htmlAttributions, key: 'html_attributions');
  static String? _$nextPageToken(GoogleTextSearchResponsesModel v) =>
      v.nextPageToken;
  static const Field<GoogleTextSearchResponsesModel, String> _f$nextPageToken =
      Field('nextPageToken', _$nextPageToken, key: 'next_page_token');
  static List<GooglePlace> _$results(GoogleTextSearchResponsesModel v) =>
      v.results;
  static const Field<GoogleTextSearchResponsesModel, List<GooglePlace>>
      _f$results = Field('results', _$results);
  static GooglePlaceSearchStatus _$status(GoogleTextSearchResponsesModel v) =>
      v.status;
  static const Field<GoogleTextSearchResponsesModel, GooglePlaceSearchStatus>
      _f$status = Field('status', _$status);
  static String? _$errorMessage(GoogleTextSearchResponsesModel v) =>
      v.errorMessage;
  static const Field<GoogleTextSearchResponsesModel, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, key: 'error_message');
  static List<String>? _$infoMessages(GoogleTextSearchResponsesModel v) =>
      v.infoMessages;
  static const Field<GoogleTextSearchResponsesModel, List<String>>
      _f$infoMessages =
      Field('infoMessages', _$infoMessages, key: 'info_messages');

  @override
  final MappableFields<GoogleTextSearchResponsesModel> fields = const {
    #htmlAttributions: _f$htmlAttributions,
    #nextPageToken: _f$nextPageToken,
    #results: _f$results,
    #status: _f$status,
    #errorMessage: _f$errorMessage,
    #infoMessages: _f$infoMessages,
  };

  static GoogleTextSearchResponsesModel _instantiate(DecodingData data) {
    return GoogleTextSearchResponsesModel(
        htmlAttributions: data.dec(_f$htmlAttributions),
        nextPageToken: data.dec(_f$nextPageToken),
        results: data.dec(_f$results),
        status: data.dec(_f$status),
        errorMessage: data.dec(_f$errorMessage),
        infoMessages: data.dec(_f$infoMessages));
  }

  @override
  final Function instantiate = _instantiate;

  static GoogleTextSearchResponsesModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GoogleTextSearchResponsesModel>(map);
  }

  static GoogleTextSearchResponsesModel fromJson(String json) {
    return ensureInitialized().decodeJson<GoogleTextSearchResponsesModel>(json);
  }
}

mixin GoogleTextSearchResponsesModelMappable {
  String toJson() {
    return GoogleTextSearchResponsesModelMapper.ensureInitialized()
        .encodeJson<GoogleTextSearchResponsesModel>(
            this as GoogleTextSearchResponsesModel);
  }

  Map<String, dynamic> toMap() {
    return GoogleTextSearchResponsesModelMapper.ensureInitialized()
        .encodeMap<GoogleTextSearchResponsesModel>(
            this as GoogleTextSearchResponsesModel);
  }

  GoogleTextSearchResponsesModelCopyWith<GoogleTextSearchResponsesModel,
          GoogleTextSearchResponsesModel, GoogleTextSearchResponsesModel>
      get copyWith => _GoogleTextSearchResponsesModelCopyWithImpl(
          this as GoogleTextSearchResponsesModel, $identity, $identity);
  @override
  String toString() {
    return GoogleTextSearchResponsesModelMapper.ensureInitialized()
        .stringifyValue(this as GoogleTextSearchResponsesModel);
  }

  @override
  bool operator ==(Object other) {
    return GoogleTextSearchResponsesModelMapper.ensureInitialized()
        .equalsValue(this as GoogleTextSearchResponsesModel, other);
  }

  @override
  int get hashCode {
    return GoogleTextSearchResponsesModelMapper.ensureInitialized()
        .hashValue(this as GoogleTextSearchResponsesModel);
  }
}

extension GoogleTextSearchResponsesModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GoogleTextSearchResponsesModel, $Out> {
  GoogleTextSearchResponsesModelCopyWith<$R, GoogleTextSearchResponsesModel,
          $Out>
      get $asGoogleTextSearchResponsesModel => $base.as(
          (v, t, t2) => _GoogleTextSearchResponsesModelCopyWithImpl(v, t, t2));
}

abstract class GoogleTextSearchResponsesModelCopyWith<
    $R,
    $In extends GoogleTextSearchResponsesModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get htmlAttributions;
  ListCopyWith<$R, GooglePlace,
      GooglePlaceCopyWith<$R, GooglePlace, GooglePlace>> get results;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get infoMessages;
  $R call(
      {List<String>? htmlAttributions,
      String? nextPageToken,
      List<GooglePlace>? results,
      GooglePlaceSearchStatus? status,
      String? errorMessage,
      List<String>? infoMessages});
  GoogleTextSearchResponsesModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GoogleTextSearchResponsesModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GoogleTextSearchResponsesModel, $Out>
    implements
        GoogleTextSearchResponsesModelCopyWith<$R,
            GoogleTextSearchResponsesModel, $Out> {
  _GoogleTextSearchResponsesModelCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GoogleTextSearchResponsesModel> $mapper =
      GoogleTextSearchResponsesModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get htmlAttributions => ListCopyWith(
          $value.htmlAttributions,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(htmlAttributions: v));
  @override
  ListCopyWith<$R, GooglePlace,
          GooglePlaceCopyWith<$R, GooglePlace, GooglePlace>>
      get results => ListCopyWith($value.results,
          (v, t) => v.copyWith.$chain(t), (v) => call(results: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get infoMessages => $value.infoMessages != null
          ? ListCopyWith(
              $value.infoMessages!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(infoMessages: v))
          : null;
  @override
  $R call(
          {List<String>? htmlAttributions,
          Object? nextPageToken = $none,
          List<GooglePlace>? results,
          GooglePlaceSearchStatus? status,
          Object? errorMessage = $none,
          Object? infoMessages = $none}) =>
      $apply(FieldCopyWithData({
        if (htmlAttributions != null) #htmlAttributions: htmlAttributions,
        if (nextPageToken != $none) #nextPageToken: nextPageToken,
        if (results != null) #results: results,
        if (status != null) #status: status,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (infoMessages != $none) #infoMessages: infoMessages
      }));
  @override
  GoogleTextSearchResponsesModel $make(CopyWithData data) =>
      GoogleTextSearchResponsesModel(
          htmlAttributions:
              data.get(#htmlAttributions, or: $value.htmlAttributions),
          nextPageToken: data.get(#nextPageToken, or: $value.nextPageToken),
          results: data.get(#results, or: $value.results),
          status: data.get(#status, or: $value.status),
          errorMessage: data.get(#errorMessage, or: $value.errorMessage),
          infoMessages: data.get(#infoMessages, or: $value.infoMessages));

  @override
  GoogleTextSearchResponsesModelCopyWith<$R2, GoogleTextSearchResponsesModel,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GoogleTextSearchResponsesModelCopyWithImpl($value, $cast, t);
}
