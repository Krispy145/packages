// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'deeplink_model.dart';

class DeepLinkModelMapper extends ClassMapperBase<DeepLinkModel> {
  DeepLinkModelMapper._();

  static DeepLinkModelMapper? _instance;
  static DeepLinkModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeepLinkModelMapper._());
      AppDestinationModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DeepLinkModel';

  static String _$canonicalIdentifier(DeepLinkModel v) => v.canonicalIdentifier;
  static const Field<DeepLinkModel, String> _f$canonicalIdentifier = Field(
      'canonicalIdentifier', _$canonicalIdentifier,
      key: 'canonical_identifier');
  static String _$title(DeepLinkModel v) => v.title;
  static const Field<DeepLinkModel, String> _f$title = Field('title', _$title);
  static String? _$contentDescription(DeepLinkModel v) => v.contentDescription;
  static const Field<DeepLinkModel, String> _f$contentDescription = Field(
      'contentDescription', _$contentDescription,
      key: 'content_description', opt: true);
  static String? _$imageUrl(DeepLinkModel v) => v.imageUrl;
  static const Field<DeepLinkModel, String> _f$imageUrl =
      Field('imageUrl', _$imageUrl, key: 'image_url', opt: true);
  static String? _$canonicalUrl(DeepLinkModel v) => v.canonicalUrl;
  static const Field<DeepLinkModel, String> _f$canonicalUrl =
      Field('canonicalUrl', _$canonicalUrl, key: 'canonical_url', opt: true);
  static AppDestinationModel? _$destination(DeepLinkModel v) => v.destination;
  static const Field<DeepLinkModel, AppDestinationModel> _f$destination =
      Field('destination', _$destination, opt: true);
  static Map<String, dynamic>? _$metadata(DeepLinkModel v) => v.metadata;
  static const Field<DeepLinkModel, Map<String, dynamic>> _f$metadata =
      Field('metadata', _$metadata, opt: true);
  static List<String> _$keywords(DeepLinkModel v) => v.keywords;
  static const Field<DeepLinkModel, List<String>> _f$keywords =
      Field('keywords', _$keywords, opt: true, def: const []);
  static bool _$publicIndex(DeepLinkModel v) => v.publicIndex;
  static const Field<DeepLinkModel, bool> _f$publicIndex = Field(
      'publicIndex', _$publicIndex,
      key: 'public_index', opt: true, def: true);
  static bool _$localIndex(DeepLinkModel v) => v.localIndex;
  static const Field<DeepLinkModel, bool> _f$localIndex = Field(
      'localIndex', _$localIndex,
      key: 'local_index', opt: true, def: true);
  static DateTime? _$expirationDate(DeepLinkModel v) => v.expirationDate;
  static const Field<DeepLinkModel, DateTime> _f$expirationDate = Field(
      'expirationDate', _$expirationDate,
      key: 'expiration_date', opt: true);

  @override
  final MappableFields<DeepLinkModel> fields = const {
    #canonicalIdentifier: _f$canonicalIdentifier,
    #title: _f$title,
    #contentDescription: _f$contentDescription,
    #imageUrl: _f$imageUrl,
    #canonicalUrl: _f$canonicalUrl,
    #destination: _f$destination,
    #metadata: _f$metadata,
    #keywords: _f$keywords,
    #publicIndex: _f$publicIndex,
    #localIndex: _f$localIndex,
    #expirationDate: _f$expirationDate,
  };

  static DeepLinkModel _instantiate(DecodingData data) {
    return DeepLinkModel(
        canonicalIdentifier: data.dec(_f$canonicalIdentifier),
        title: data.dec(_f$title),
        contentDescription: data.dec(_f$contentDescription),
        imageUrl: data.dec(_f$imageUrl),
        canonicalUrl: data.dec(_f$canonicalUrl),
        destination: data.dec(_f$destination),
        metadata: data.dec(_f$metadata),
        keywords: data.dec(_f$keywords),
        publicIndex: data.dec(_f$publicIndex),
        localIndex: data.dec(_f$localIndex),
        expirationDate: data.dec(_f$expirationDate));
  }

  @override
  final Function instantiate = _instantiate;

  static DeepLinkModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DeepLinkModel>(map);
  }

  static DeepLinkModel fromJson(String json) {
    return ensureInitialized().decodeJson<DeepLinkModel>(json);
  }
}

mixin DeepLinkModelMappable {
  String toJson() {
    return DeepLinkModelMapper.ensureInitialized()
        .encodeJson<DeepLinkModel>(this as DeepLinkModel);
  }

  Map<String, dynamic> toMap() {
    return DeepLinkModelMapper.ensureInitialized()
        .encodeMap<DeepLinkModel>(this as DeepLinkModel);
  }

  DeepLinkModelCopyWith<DeepLinkModel, DeepLinkModel, DeepLinkModel>
      get copyWith => _DeepLinkModelCopyWithImpl(
          this as DeepLinkModel, $identity, $identity);
  @override
  String toString() {
    return DeepLinkModelMapper.ensureInitialized()
        .stringifyValue(this as DeepLinkModel);
  }

  @override
  bool operator ==(Object other) {
    return DeepLinkModelMapper.ensureInitialized()
        .equalsValue(this as DeepLinkModel, other);
  }

  @override
  int get hashCode {
    return DeepLinkModelMapper.ensureInitialized()
        .hashValue(this as DeepLinkModel);
  }
}

extension DeepLinkModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeepLinkModel, $Out> {
  DeepLinkModelCopyWith<$R, DeepLinkModel, $Out> get $asDeepLinkModel =>
      $base.as((v, t, t2) => _DeepLinkModelCopyWithImpl(v, t, t2));
}

abstract class DeepLinkModelCopyWith<$R, $In extends DeepLinkModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  AppDestinationModelCopyWith<$R, AppDestinationModel, AppDestinationModel>?
      get destination;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get metadata;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get keywords;
  $R call(
      {String? canonicalIdentifier,
      String? title,
      String? contentDescription,
      String? imageUrl,
      String? canonicalUrl,
      AppDestinationModel? destination,
      Map<String, dynamic>? metadata,
      List<String>? keywords,
      bool? publicIndex,
      bool? localIndex,
      DateTime? expirationDate});
  DeepLinkModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DeepLinkModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeepLinkModel, $Out>
    implements DeepLinkModelCopyWith<$R, DeepLinkModel, $Out> {
  _DeepLinkModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeepLinkModel> $mapper =
      DeepLinkModelMapper.ensureInitialized();
  @override
  AppDestinationModelCopyWith<$R, AppDestinationModel, AppDestinationModel>?
      get destination =>
          $value.destination?.copyWith.$chain((v) => call(destination: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get metadata => $value.metadata != null
          ? MapCopyWith(
              $value.metadata!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(metadata: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get keywords =>
      ListCopyWith($value.keywords, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(keywords: v));
  @override
  $R call(
          {String? canonicalIdentifier,
          String? title,
          Object? contentDescription = $none,
          Object? imageUrl = $none,
          Object? canonicalUrl = $none,
          Object? destination = $none,
          Object? metadata = $none,
          List<String>? keywords,
          bool? publicIndex,
          bool? localIndex,
          Object? expirationDate = $none}) =>
      $apply(FieldCopyWithData({
        if (canonicalIdentifier != null)
          #canonicalIdentifier: canonicalIdentifier,
        if (title != null) #title: title,
        if (contentDescription != $none)
          #contentDescription: contentDescription,
        if (imageUrl != $none) #imageUrl: imageUrl,
        if (canonicalUrl != $none) #canonicalUrl: canonicalUrl,
        if (destination != $none) #destination: destination,
        if (metadata != $none) #metadata: metadata,
        if (keywords != null) #keywords: keywords,
        if (publicIndex != null) #publicIndex: publicIndex,
        if (localIndex != null) #localIndex: localIndex,
        if (expirationDate != $none) #expirationDate: expirationDate
      }));
  @override
  DeepLinkModel $make(CopyWithData data) => DeepLinkModel(
      canonicalIdentifier:
          data.get(#canonicalIdentifier, or: $value.canonicalIdentifier),
      title: data.get(#title, or: $value.title),
      contentDescription:
          data.get(#contentDescription, or: $value.contentDescription),
      imageUrl: data.get(#imageUrl, or: $value.imageUrl),
      canonicalUrl: data.get(#canonicalUrl, or: $value.canonicalUrl),
      destination: data.get(#destination, or: $value.destination),
      metadata: data.get(#metadata, or: $value.metadata),
      keywords: data.get(#keywords, or: $value.keywords),
      publicIndex: data.get(#publicIndex, or: $value.publicIndex),
      localIndex: data.get(#localIndex, or: $value.localIndex),
      expirationDate: data.get(#expirationDate, or: $value.expirationDate));

  @override
  DeepLinkModelCopyWith<$R2, DeepLinkModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DeepLinkModelCopyWithImpl($value, $cast, t);
}
