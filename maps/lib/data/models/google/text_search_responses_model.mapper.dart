// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_search_responses_model.dart';

class GoogleResponseStatusMapper extends EnumMapper<GoogleResponseStatus> {
  GoogleResponseStatusMapper._();

  static GoogleResponseStatusMapper? _instance;
  static GoogleResponseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GoogleResponseStatusMapper._());
    }
    return _instance!;
  }

  static GoogleResponseStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  GoogleResponseStatus decode(dynamic value) {
    switch (value) {
      case 'OK':
        return GoogleResponseStatus.ok;
      case 'ZERO_RESULTS':
        return GoogleResponseStatus.zeroResults;
      case 'INVALID_REQUEST':
        return GoogleResponseStatus.invalidRequest;
      case 'OVER_QUERY_LIMIT':
        return GoogleResponseStatus.overQueryLimit;
      case 'REQUEST_DENIED':
        return GoogleResponseStatus.requestDenied;
      case 'UNKNOWN_ERROR':
        return GoogleResponseStatus.unknownError;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(GoogleResponseStatus self) {
    switch (self) {
      case GoogleResponseStatus.ok:
        return 'OK';
      case GoogleResponseStatus.zeroResults:
        return 'ZERO_RESULTS';
      case GoogleResponseStatus.invalidRequest:
        return 'INVALID_REQUEST';
      case GoogleResponseStatus.overQueryLimit:
        return 'OVER_QUERY_LIMIT';
      case GoogleResponseStatus.requestDenied:
        return 'REQUEST_DENIED';
      case GoogleResponseStatus.unknownError:
        return 'UNKNOWN_ERROR';
    }
  }
}

extension GoogleResponseStatusMapperExtension on GoogleResponseStatus {
  String toValue() {
    GoogleResponseStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<GoogleResponseStatus>(this)
        as String;
  }
}

class GoogleResponsesModelMapper extends ClassMapperBase<GoogleResponsesModel> {
  GoogleResponsesModelMapper._();

  static GoogleResponsesModelMapper? _instance;
  static GoogleResponsesModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GoogleResponsesModelMapper._());
      GooglePlaceMapper.ensureInitialized();
      GoogleResponseStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GoogleResponsesModel';

  static List<String> _$htmlAttributions(GoogleResponsesModel v) =>
      v.htmlAttributions;
  static const Field<GoogleResponsesModel, List<String>> _f$htmlAttributions =
      Field('htmlAttributions', _$htmlAttributions, key: 'html_attributions');
  static String? _$nextPageToken(GoogleResponsesModel v) => v.nextPageToken;
  static const Field<GoogleResponsesModel, String> _f$nextPageToken =
      Field('nextPageToken', _$nextPageToken, key: 'next_page_token');
  static List<GooglePlace>? _$results(GoogleResponsesModel v) => v.results;
  static const Field<GoogleResponsesModel, List<GooglePlace>> _f$results =
      Field('results', _$results, opt: true);
  static GooglePlace? _$result(GoogleResponsesModel v) => v.result;
  static const Field<GoogleResponsesModel, GooglePlace> _f$result =
      Field('result', _$result, opt: true);
  static GoogleResponseStatus _$status(GoogleResponsesModel v) => v.status;
  static const Field<GoogleResponsesModel, GoogleResponseStatus> _f$status =
      Field('status', _$status);
  static String? _$errorMessage(GoogleResponsesModel v) => v.errorMessage;
  static const Field<GoogleResponsesModel, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, key: 'error_message');
  static List<String>? _$infoMessages(GoogleResponsesModel v) => v.infoMessages;
  static const Field<GoogleResponsesModel, List<String>> _f$infoMessages =
      Field('infoMessages', _$infoMessages, key: 'info_messages');

  @override
  final MappableFields<GoogleResponsesModel> fields = const {
    #htmlAttributions: _f$htmlAttributions,
    #nextPageToken: _f$nextPageToken,
    #results: _f$results,
    #result: _f$result,
    #status: _f$status,
    #errorMessage: _f$errorMessage,
    #infoMessages: _f$infoMessages,
  };

  static GoogleResponsesModel _instantiate(DecodingData data) {
    return GoogleResponsesModel(
        htmlAttributions: data.dec(_f$htmlAttributions),
        nextPageToken: data.dec(_f$nextPageToken),
        results: data.dec(_f$results),
        result: data.dec(_f$result),
        status: data.dec(_f$status),
        errorMessage: data.dec(_f$errorMessage),
        infoMessages: data.dec(_f$infoMessages));
  }

  @override
  final Function instantiate = _instantiate;

  static GoogleResponsesModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GoogleResponsesModel>(map);
  }

  static GoogleResponsesModel fromJson(String json) {
    return ensureInitialized().decodeJson<GoogleResponsesModel>(json);
  }
}

mixin GoogleResponsesModelMappable {
  String toJson() {
    return GoogleResponsesModelMapper.ensureInitialized()
        .encodeJson<GoogleResponsesModel>(this as GoogleResponsesModel);
  }

  Map<String, dynamic> toMap() {
    return GoogleResponsesModelMapper.ensureInitialized()
        .encodeMap<GoogleResponsesModel>(this as GoogleResponsesModel);
  }

  GoogleResponsesModelCopyWith<GoogleResponsesModel, GoogleResponsesModel,
          GoogleResponsesModel>
      get copyWith => _GoogleResponsesModelCopyWithImpl(
          this as GoogleResponsesModel, $identity, $identity);
  @override
  String toString() {
    return GoogleResponsesModelMapper.ensureInitialized()
        .stringifyValue(this as GoogleResponsesModel);
  }

  @override
  bool operator ==(Object other) {
    return GoogleResponsesModelMapper.ensureInitialized()
        .equalsValue(this as GoogleResponsesModel, other);
  }

  @override
  int get hashCode {
    return GoogleResponsesModelMapper.ensureInitialized()
        .hashValue(this as GoogleResponsesModel);
  }
}

extension GoogleResponsesModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GoogleResponsesModel, $Out> {
  GoogleResponsesModelCopyWith<$R, GoogleResponsesModel, $Out>
      get $asGoogleResponsesModel =>
          $base.as((v, t, t2) => _GoogleResponsesModelCopyWithImpl(v, t, t2));
}

abstract class GoogleResponsesModelCopyWith<
    $R,
    $In extends GoogleResponsesModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get htmlAttributions;
  ListCopyWith<$R, GooglePlace,
      GooglePlaceCopyWith<$R, GooglePlace, GooglePlace>>? get results;
  GooglePlaceCopyWith<$R, GooglePlace, GooglePlace>? get result;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get infoMessages;
  $R call(
      {List<String>? htmlAttributions,
      String? nextPageToken,
      List<GooglePlace>? results,
      GooglePlace? result,
      GoogleResponseStatus? status,
      String? errorMessage,
      List<String>? infoMessages});
  GoogleResponsesModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GoogleResponsesModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GoogleResponsesModel, $Out>
    implements GoogleResponsesModelCopyWith<$R, GoogleResponsesModel, $Out> {
  _GoogleResponsesModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GoogleResponsesModel> $mapper =
      GoogleResponsesModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get htmlAttributions => ListCopyWith(
          $value.htmlAttributions,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(htmlAttributions: v));
  @override
  ListCopyWith<$R, GooglePlace,
          GooglePlaceCopyWith<$R, GooglePlace, GooglePlace>>?
      get results => $value.results != null
          ? ListCopyWith($value.results!, (v, t) => v.copyWith.$chain(t),
              (v) => call(results: v))
          : null;
  @override
  GooglePlaceCopyWith<$R, GooglePlace, GooglePlace>? get result =>
      $value.result?.copyWith.$chain((v) => call(result: v));
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
          Object? results = $none,
          Object? result = $none,
          GoogleResponseStatus? status,
          Object? errorMessage = $none,
          Object? infoMessages = $none}) =>
      $apply(FieldCopyWithData({
        if (htmlAttributions != null) #htmlAttributions: htmlAttributions,
        if (nextPageToken != $none) #nextPageToken: nextPageToken,
        if (results != $none) #results: results,
        if (result != $none) #result: result,
        if (status != null) #status: status,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (infoMessages != $none) #infoMessages: infoMessages
      }));
  @override
  GoogleResponsesModel $make(CopyWithData data) => GoogleResponsesModel(
      htmlAttributions:
          data.get(#htmlAttributions, or: $value.htmlAttributions),
      nextPageToken: data.get(#nextPageToken, or: $value.nextPageToken),
      results: data.get(#results, or: $value.results),
      result: data.get(#result, or: $value.result),
      status: data.get(#status, or: $value.status),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      infoMessages: data.get(#infoMessages, or: $value.infoMessages));

  @override
  GoogleResponsesModelCopyWith<$R2, GoogleResponsesModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GoogleResponsesModelCopyWithImpl($value, $cast, t);
}
