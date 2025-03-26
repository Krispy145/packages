// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'payment_methods_model.dart';

class PaymentMethodsModelMapper extends ClassMapperBase<PaymentMethodsModel> {
  PaymentMethodsModelMapper._();

  static PaymentMethodsModelMapper? _instance;
  static PaymentMethodsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentMethodsModelMapper._());
      BillingDetailsModelMapper.ensureInitialized();
      CardModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentMethodsModel';

  static String _$id(PaymentMethodsModel v) => v.id;
  static const Field<PaymentMethodsModel, String> _f$id = Field('id', _$id);
  static String _$allowRedisplay(PaymentMethodsModel v) => v.allowRedisplay;
  static const Field<PaymentMethodsModel, String> _f$allowRedisplay =
      Field('allowRedisplay', _$allowRedisplay, key: r'allow_redisplay');
  static String _$customer(PaymentMethodsModel v) => v.customer;
  static const Field<PaymentMethodsModel, String> _f$customer =
      Field('customer', _$customer);
  static bool _$liveMode(PaymentMethodsModel v) => v.liveMode;
  static const Field<PaymentMethodsModel, bool> _f$liveMode =
      Field('liveMode', _$liveMode, key: r'live_mode', opt: true, def: false);
  static BillingDetailsModel _$billingDetails(PaymentMethodsModel v) =>
      v.billingDetails;
  static const Field<PaymentMethodsModel, BillingDetailsModel>
      _f$billingDetails =
      Field('billingDetails', _$billingDetails, key: r'billing_details');
  static CardModel _$card(PaymentMethodsModel v) => v.card;
  static const Field<PaymentMethodsModel, CardModel> _f$card =
      Field('card', _$card);
  static int _$created(PaymentMethodsModel v) => v.created;
  static const Field<PaymentMethodsModel, int> _f$created =
      Field('created', _$created);
  static String _$object(PaymentMethodsModel v) => v.object;
  static const Field<PaymentMethodsModel, String> _f$object =
      Field('object', _$object);
  static String _$type(PaymentMethodsModel v) => v.type;
  static const Field<PaymentMethodsModel, String> _f$type =
      Field('type', _$type);
  static Map<String, String>? _$metadata(PaymentMethodsModel v) => v.metadata;
  static const Field<PaymentMethodsModel, Map<String, String>> _f$metadata =
      Field('metadata', _$metadata);

  @override
  final MappableFields<PaymentMethodsModel> fields = const {
    #id: _f$id,
    #allowRedisplay: _f$allowRedisplay,
    #customer: _f$customer,
    #liveMode: _f$liveMode,
    #billingDetails: _f$billingDetails,
    #card: _f$card,
    #created: _f$created,
    #object: _f$object,
    #type: _f$type,
    #metadata: _f$metadata,
  };

  static PaymentMethodsModel _instantiate(DecodingData data) {
    return PaymentMethodsModel(
        id: data.dec(_f$id),
        allowRedisplay: data.dec(_f$allowRedisplay),
        customer: data.dec(_f$customer),
        liveMode: data.dec(_f$liveMode),
        billingDetails: data.dec(_f$billingDetails),
        card: data.dec(_f$card),
        created: data.dec(_f$created),
        object: data.dec(_f$object),
        type: data.dec(_f$type),
        metadata: data.dec(_f$metadata));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentMethodsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentMethodsModel>(map);
  }

  static PaymentMethodsModel fromJson(String json) {
    return ensureInitialized().decodeJson<PaymentMethodsModel>(json);
  }
}

mixin PaymentMethodsModelMappable {
  String toJson() {
    return PaymentMethodsModelMapper.ensureInitialized()
        .encodeJson<PaymentMethodsModel>(this as PaymentMethodsModel);
  }

  Map<String, dynamic> toMap() {
    return PaymentMethodsModelMapper.ensureInitialized()
        .encodeMap<PaymentMethodsModel>(this as PaymentMethodsModel);
  }

  PaymentMethodsModelCopyWith<PaymentMethodsModel, PaymentMethodsModel,
          PaymentMethodsModel>
      get copyWith => _PaymentMethodsModelCopyWithImpl(
          this as PaymentMethodsModel, $identity, $identity);
  @override
  String toString() {
    return PaymentMethodsModelMapper.ensureInitialized()
        .stringifyValue(this as PaymentMethodsModel);
  }

  @override
  bool operator ==(Object other) {
    return PaymentMethodsModelMapper.ensureInitialized()
        .equalsValue(this as PaymentMethodsModel, other);
  }

  @override
  int get hashCode {
    return PaymentMethodsModelMapper.ensureInitialized()
        .hashValue(this as PaymentMethodsModel);
  }
}

extension PaymentMethodsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentMethodsModel, $Out> {
  PaymentMethodsModelCopyWith<$R, PaymentMethodsModel, $Out>
      get $asPaymentMethodsModel =>
          $base.as((v, t, t2) => _PaymentMethodsModelCopyWithImpl(v, t, t2));
}

abstract class PaymentMethodsModelCopyWith<$R, $In extends PaymentMethodsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  BillingDetailsModelCopyWith<$R, BillingDetailsModel, BillingDetailsModel>
      get billingDetails;
  CardModelCopyWith<$R, CardModel, CardModel> get card;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get metadata;
  $R call(
      {String? id,
      String? allowRedisplay,
      String? customer,
      bool? liveMode,
      BillingDetailsModel? billingDetails,
      CardModel? card,
      int? created,
      String? object,
      String? type,
      Map<String, String>? metadata});
  PaymentMethodsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentMethodsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentMethodsModel, $Out>
    implements PaymentMethodsModelCopyWith<$R, PaymentMethodsModel, $Out> {
  _PaymentMethodsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentMethodsModel> $mapper =
      PaymentMethodsModelMapper.ensureInitialized();
  @override
  BillingDetailsModelCopyWith<$R, BillingDetailsModel, BillingDetailsModel>
      get billingDetails =>
          $value.billingDetails.copyWith.$chain((v) => call(billingDetails: v));
  @override
  CardModelCopyWith<$R, CardModel, CardModel> get card =>
      $value.card.copyWith.$chain((v) => call(card: v));
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get metadata => $value.metadata != null
          ? MapCopyWith(
              $value.metadata!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(metadata: v))
          : null;
  @override
  $R call(
          {String? id,
          String? allowRedisplay,
          String? customer,
          bool? liveMode,
          BillingDetailsModel? billingDetails,
          CardModel? card,
          int? created,
          String? object,
          String? type,
          Object? metadata = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (allowRedisplay != null) #allowRedisplay: allowRedisplay,
        if (customer != null) #customer: customer,
        if (liveMode != null) #liveMode: liveMode,
        if (billingDetails != null) #billingDetails: billingDetails,
        if (card != null) #card: card,
        if (created != null) #created: created,
        if (object != null) #object: object,
        if (type != null) #type: type,
        if (metadata != $none) #metadata: metadata
      }));
  @override
  PaymentMethodsModel $make(CopyWithData data) => PaymentMethodsModel(
      id: data.get(#id, or: $value.id),
      allowRedisplay: data.get(#allowRedisplay, or: $value.allowRedisplay),
      customer: data.get(#customer, or: $value.customer),
      liveMode: data.get(#liveMode, or: $value.liveMode),
      billingDetails: data.get(#billingDetails, or: $value.billingDetails),
      card: data.get(#card, or: $value.card),
      created: data.get(#created, or: $value.created),
      object: data.get(#object, or: $value.object),
      type: data.get(#type, or: $value.type),
      metadata: data.get(#metadata, or: $value.metadata));

  @override
  PaymentMethodsModelCopyWith<$R2, PaymentMethodsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PaymentMethodsModelCopyWithImpl($value, $cast, t);
}
