// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'session_data_model.dart';

class SessionDataModelMapper extends ClassMapperBase<SessionDataModel> {
  SessionDataModelMapper._();

  static SessionDataModelMapper? _instance;
  static SessionDataModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SessionDataModelMapper._());
      PriceItemModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SessionDataModel';

  static String _$successUrl(SessionDataModel v) => v.successUrl;
  static const Field<SessionDataModel, String> _f$successUrl =
      Field('successUrl', _$successUrl, key: r'success_url');
  static String _$cancelUrl(SessionDataModel v) => v.cancelUrl;
  static const Field<SessionDataModel, String> _f$cancelUrl =
      Field('cancelUrl', _$cancelUrl, key: r'cancel_url');
  static List<PriceItemModel> _$items(SessionDataModel v) => v.items;
  static const Field<SessionDataModel, List<PriceItemModel>> _f$items =
      Field('items', _$items);

  @override
  final MappableFields<SessionDataModel> fields = const {
    #successUrl: _f$successUrl,
    #cancelUrl: _f$cancelUrl,
    #items: _f$items,
  };

  static SessionDataModel _instantiate(DecodingData data) {
    return SessionDataModel(
        successUrl: data.dec(_f$successUrl),
        cancelUrl: data.dec(_f$cancelUrl),
        items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static SessionDataModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SessionDataModel>(map);
  }

  static SessionDataModel fromJson(String json) {
    return ensureInitialized().decodeJson<SessionDataModel>(json);
  }
}

mixin SessionDataModelMappable {
  String toJson() {
    return SessionDataModelMapper.ensureInitialized()
        .encodeJson<SessionDataModel>(this as SessionDataModel);
  }

  Map<String, dynamic> toMap() {
    return SessionDataModelMapper.ensureInitialized()
        .encodeMap<SessionDataModel>(this as SessionDataModel);
  }

  SessionDataModelCopyWith<SessionDataModel, SessionDataModel, SessionDataModel>
      get copyWith =>
          _SessionDataModelCopyWithImpl<SessionDataModel, SessionDataModel>(
              this as SessionDataModel, $identity, $identity);
  @override
  String toString() {
    return SessionDataModelMapper.ensureInitialized()
        .stringifyValue(this as SessionDataModel);
  }

  @override
  bool operator ==(Object other) {
    return SessionDataModelMapper.ensureInitialized()
        .equalsValue(this as SessionDataModel, other);
  }

  @override
  int get hashCode {
    return SessionDataModelMapper.ensureInitialized()
        .hashValue(this as SessionDataModel);
  }
}

extension SessionDataModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SessionDataModel, $Out> {
  SessionDataModelCopyWith<$R, SessionDataModel, $Out>
      get $asSessionDataModel => $base
          .as((v, t, t2) => _SessionDataModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SessionDataModelCopyWith<$R, $In extends SessionDataModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, PriceItemModel,
      PriceItemModelCopyWith<$R, PriceItemModel, PriceItemModel>> get items;
  $R call({String? successUrl, String? cancelUrl, List<PriceItemModel>? items});
  SessionDataModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SessionDataModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SessionDataModel, $Out>
    implements SessionDataModelCopyWith<$R, SessionDataModel, $Out> {
  _SessionDataModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SessionDataModel> $mapper =
      SessionDataModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, PriceItemModel,
          PriceItemModelCopyWith<$R, PriceItemModel, PriceItemModel>>
      get items => ListCopyWith(
          $value.items, (v, t) => v.copyWith.$chain(t), (v) => call(items: v));
  @override
  $R call(
          {String? successUrl,
          String? cancelUrl,
          List<PriceItemModel>? items}) =>
      $apply(FieldCopyWithData({
        if (successUrl != null) #successUrl: successUrl,
        if (cancelUrl != null) #cancelUrl: cancelUrl,
        if (items != null) #items: items
      }));
  @override
  SessionDataModel $make(CopyWithData data) => SessionDataModel(
      successUrl: data.get(#successUrl, or: $value.successUrl),
      cancelUrl: data.get(#cancelUrl, or: $value.cancelUrl),
      items: data.get(#items, or: $value.items));

  @override
  SessionDataModelCopyWith<$R2, SessionDataModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SessionDataModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
