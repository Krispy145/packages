// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'payment_method_model.dart';

class PaymentMethodModelMapper extends ClassMapperBase<PaymentMethodModel> {
  PaymentMethodModelMapper._();

  static PaymentMethodModelMapper? _instance;
  static PaymentMethodModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentMethodModelMapper._());
      PaymentMethodCardMapper.ensureInitialized();
      PaymentMethodBillingDetailsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentMethodModel';

  static String _$id(PaymentMethodModel v) => v.id;
  static const Field<PaymentMethodModel, String> _f$id = Field('id', _$id);
  static String _$type(PaymentMethodModel v) => v.type;
  static const Field<PaymentMethodModel, String> _f$type =
      Field('type', _$type, opt: true, def: "card");
  static String? _$customerId(PaymentMethodModel v) => v.customerId;
  static const Field<PaymentMethodModel, String> _f$customerId =
      Field('customerId', _$customerId, key: r'customer_id', opt: true);
  static PaymentMethodCard _$card(PaymentMethodModel v) => v.card;
  static const Field<PaymentMethodModel, PaymentMethodCard> _f$card =
      Field('card', _$card);
  static PaymentMethodBillingDetails _$billingDetails(PaymentMethodModel v) =>
      v.billingDetails;
  static const Field<PaymentMethodModel, PaymentMethodBillingDetails>
      _f$billingDetails =
      Field('billingDetails', _$billingDetails, key: r'billing_details');
  static DateTime? _$created(PaymentMethodModel v) => v.created;
  static const Field<PaymentMethodModel, DateTime> _f$created =
      Field('created', _$created, opt: true);
  static bool? _$livemode(PaymentMethodModel v) => v.livemode;
  static const Field<PaymentMethodModel, bool> _f$livemode =
      Field('livemode', _$livemode, opt: true);
  static String? _$allowRedisplay(PaymentMethodModel v) => v.allowRedisplay;
  static const Field<PaymentMethodModel, String> _f$allowRedisplay = Field(
      'allowRedisplay', _$allowRedisplay,
      key: r'allow_redisplay', opt: true);
  static Map<String, dynamic>? _$metadata(PaymentMethodModel v) => v.metadata;
  static const Field<PaymentMethodModel, Map<String, dynamic>> _f$metadata =
      Field('metadata', _$metadata, opt: true);
  static String? _$object(PaymentMethodModel v) => v.object;
  static const Field<PaymentMethodModel, String> _f$object =
      Field('object', _$object, opt: true);

  @override
  final MappableFields<PaymentMethodModel> fields = const {
    #id: _f$id,
    #type: _f$type,
    #customerId: _f$customerId,
    #card: _f$card,
    #billingDetails: _f$billingDetails,
    #created: _f$created,
    #livemode: _f$livemode,
    #allowRedisplay: _f$allowRedisplay,
    #metadata: _f$metadata,
    #object: _f$object,
  };

  static PaymentMethodModel _instantiate(DecodingData data) {
    return PaymentMethodModel(
        id: data.dec(_f$id),
        type: data.dec(_f$type),
        customerId: data.dec(_f$customerId),
        card: data.dec(_f$card),
        billingDetails: data.dec(_f$billingDetails),
        created: data.dec(_f$created),
        livemode: data.dec(_f$livemode),
        allowRedisplay: data.dec(_f$allowRedisplay),
        metadata: data.dec(_f$metadata),
        object: data.dec(_f$object));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentMethodModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentMethodModel>(map);
  }

  static PaymentMethodModel fromJson(String json) {
    return ensureInitialized().decodeJson<PaymentMethodModel>(json);
  }
}

mixin PaymentMethodModelMappable {
  String toJson() {
    return PaymentMethodModelMapper.ensureInitialized()
        .encodeJson<PaymentMethodModel>(this as PaymentMethodModel);
  }

  Map<String, dynamic> toMap() {
    return PaymentMethodModelMapper.ensureInitialized()
        .encodeMap<PaymentMethodModel>(this as PaymentMethodModel);
  }

  PaymentMethodModelCopyWith<PaymentMethodModel, PaymentMethodModel,
          PaymentMethodModel>
      get copyWith => _PaymentMethodModelCopyWithImpl<PaymentMethodModel,
          PaymentMethodModel>(this as PaymentMethodModel, $identity, $identity);
  @override
  String toString() {
    return PaymentMethodModelMapper.ensureInitialized()
        .stringifyValue(this as PaymentMethodModel);
  }

  @override
  bool operator ==(Object other) {
    return PaymentMethodModelMapper.ensureInitialized()
        .equalsValue(this as PaymentMethodModel, other);
  }

  @override
  int get hashCode {
    return PaymentMethodModelMapper.ensureInitialized()
        .hashValue(this as PaymentMethodModel);
  }
}

extension PaymentMethodModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentMethodModel, $Out> {
  PaymentMethodModelCopyWith<$R, PaymentMethodModel, $Out>
      get $asPaymentMethodModel => $base.as(
          (v, t, t2) => _PaymentMethodModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaymentMethodModelCopyWith<$R, $In extends PaymentMethodModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  PaymentMethodCardCopyWith<$R, PaymentMethodCard, PaymentMethodCard> get card;
  PaymentMethodBillingDetailsCopyWith<$R, PaymentMethodBillingDetails,
      PaymentMethodBillingDetails> get billingDetails;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get metadata;
  $R call(
      {String? id,
      String? type,
      String? customerId,
      PaymentMethodCard? card,
      PaymentMethodBillingDetails? billingDetails,
      DateTime? created,
      bool? livemode,
      String? allowRedisplay,
      Map<String, dynamic>? metadata,
      String? object});
  PaymentMethodModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentMethodModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentMethodModel, $Out>
    implements PaymentMethodModelCopyWith<$R, PaymentMethodModel, $Out> {
  _PaymentMethodModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentMethodModel> $mapper =
      PaymentMethodModelMapper.ensureInitialized();
  @override
  PaymentMethodCardCopyWith<$R, PaymentMethodCard, PaymentMethodCard>
      get card => $value.card.copyWith.$chain((v) => call(card: v));
  @override
  PaymentMethodBillingDetailsCopyWith<$R, PaymentMethodBillingDetails,
          PaymentMethodBillingDetails>
      get billingDetails =>
          $value.billingDetails.copyWith.$chain((v) => call(billingDetails: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get metadata => $value.metadata != null
          ? MapCopyWith(
              $value.metadata!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(metadata: v))
          : null;
  @override
  $R call(
          {String? id,
          String? type,
          Object? customerId = $none,
          PaymentMethodCard? card,
          PaymentMethodBillingDetails? billingDetails,
          Object? created = $none,
          Object? livemode = $none,
          Object? allowRedisplay = $none,
          Object? metadata = $none,
          Object? object = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (type != null) #type: type,
        if (customerId != $none) #customerId: customerId,
        if (card != null) #card: card,
        if (billingDetails != null) #billingDetails: billingDetails,
        if (created != $none) #created: created,
        if (livemode != $none) #livemode: livemode,
        if (allowRedisplay != $none) #allowRedisplay: allowRedisplay,
        if (metadata != $none) #metadata: metadata,
        if (object != $none) #object: object
      }));
  @override
  PaymentMethodModel $make(CopyWithData data) => PaymentMethodModel(
      id: data.get(#id, or: $value.id),
      type: data.get(#type, or: $value.type),
      customerId: data.get(#customerId, or: $value.customerId),
      card: data.get(#card, or: $value.card),
      billingDetails: data.get(#billingDetails, or: $value.billingDetails),
      created: data.get(#created, or: $value.created),
      livemode: data.get(#livemode, or: $value.livemode),
      allowRedisplay: data.get(#allowRedisplay, or: $value.allowRedisplay),
      metadata: data.get(#metadata, or: $value.metadata),
      object: data.get(#object, or: $value.object));

  @override
  PaymentMethodModelCopyWith<$R2, PaymentMethodModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaymentMethodModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PaymentMethodCardMapper extends ClassMapperBase<PaymentMethodCard> {
  PaymentMethodCardMapper._();

  static PaymentMethodCardMapper? _instance;
  static PaymentMethodCardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentMethodCardMapper._());
      CardNetworksMapper.ensureInitialized();
      CardChecksMapper.ensureInitialized();
      ThreeDSecureUsageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentMethodCard';

  static String? _$brand(PaymentMethodCard v) => v.brand;
  static const Field<PaymentMethodCard, String> _f$brand =
      Field('brand', _$brand, opt: true);
  static String? _$country(PaymentMethodCard v) => v.country;
  static const Field<PaymentMethodCard, String> _f$country =
      Field('country', _$country, opt: true);
  static int _$expMonth(PaymentMethodCard v) => v.expMonth;
  static const Field<PaymentMethodCard, int> _f$expMonth =
      Field('expMonth', _$expMonth, key: r'exp_month');
  static int _$expYear(PaymentMethodCard v) => v.expYear;
  static const Field<PaymentMethodCard, int> _f$expYear =
      Field('expYear', _$expYear, key: r'exp_year');
  static String? _$funding(PaymentMethodCard v) => v.funding;
  static const Field<PaymentMethodCard, String> _f$funding =
      Field('funding', _$funding, opt: true);
  static String _$number(PaymentMethodCard v) => v.number;
  static const Field<PaymentMethodCard, String> _f$number =
      Field('number', _$number);
  static String _$object(PaymentMethodCard v) => v.object;
  static const Field<PaymentMethodCard, String> _f$object =
      Field('object', _$object, opt: true, def: "card");
  static String _$last4(PaymentMethodCard v) => v.last4;
  static const Field<PaymentMethodCard, String> _f$last4 =
      Field('last4', _$last4);
  static CardNetworks? _$networks(PaymentMethodCard v) => v.networks;
  static const Field<PaymentMethodCard, CardNetworks> _f$networks =
      Field('networks', _$networks, opt: true);
  static String? _$displayBrand(PaymentMethodCard v) => v.displayBrand;
  static const Field<PaymentMethodCard, String> _f$displayBrand =
      Field('displayBrand', _$displayBrand, key: r'display_brand', opt: true);
  static CardChecks? _$checks(PaymentMethodCard v) => v.checks;
  static const Field<PaymentMethodCard, CardChecks> _f$checks =
      Field('checks', _$checks, opt: true);
  static String? _$regulatedStatus(PaymentMethodCard v) => v.regulatedStatus;
  static const Field<PaymentMethodCard, String> _f$regulatedStatus = Field(
      'regulatedStatus', _$regulatedStatus,
      key: r'regulated_status', opt: true);
  static dynamic _$wallet(PaymentMethodCard v) => v.wallet;
  static const Field<PaymentMethodCard, dynamic> _f$wallet =
      Field('wallet', _$wallet, opt: true);
  static ThreeDSecureUsage? _$threeDSecureUsage(PaymentMethodCard v) =>
      v.threeDSecureUsage;
  static const Field<PaymentMethodCard, ThreeDSecureUsage>
      _f$threeDSecureUsage = Field('threeDSecureUsage', _$threeDSecureUsage,
          key: r'three_dsecure_usage', opt: true);
  static String? _$fingerprint(PaymentMethodCard v) => v.fingerprint;
  static const Field<PaymentMethodCard, String> _f$fingerprint =
      Field('fingerprint', _$fingerprint, opt: true);
  static dynamic _$generatedFrom(PaymentMethodCard v) => v.generatedFrom;
  static const Field<PaymentMethodCard, dynamic> _f$generatedFrom = Field(
      'generatedFrom', _$generatedFrom,
      key: r'generated_from', opt: true);

  @override
  final MappableFields<PaymentMethodCard> fields = const {
    #brand: _f$brand,
    #country: _f$country,
    #expMonth: _f$expMonth,
    #expYear: _f$expYear,
    #funding: _f$funding,
    #number: _f$number,
    #object: _f$object,
    #last4: _f$last4,
    #networks: _f$networks,
    #displayBrand: _f$displayBrand,
    #checks: _f$checks,
    #regulatedStatus: _f$regulatedStatus,
    #wallet: _f$wallet,
    #threeDSecureUsage: _f$threeDSecureUsage,
    #fingerprint: _f$fingerprint,
    #generatedFrom: _f$generatedFrom,
  };

  static PaymentMethodCard _instantiate(DecodingData data) {
    return PaymentMethodCard(
        brand: data.dec(_f$brand),
        country: data.dec(_f$country),
        expMonth: data.dec(_f$expMonth),
        expYear: data.dec(_f$expYear),
        funding: data.dec(_f$funding),
        number: data.dec(_f$number),
        object: data.dec(_f$object),
        last4: data.dec(_f$last4),
        networks: data.dec(_f$networks),
        displayBrand: data.dec(_f$displayBrand),
        checks: data.dec(_f$checks),
        regulatedStatus: data.dec(_f$regulatedStatus),
        wallet: data.dec(_f$wallet),
        threeDSecureUsage: data.dec(_f$threeDSecureUsage),
        fingerprint: data.dec(_f$fingerprint),
        generatedFrom: data.dec(_f$generatedFrom));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentMethodCard fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentMethodCard>(map);
  }

  static PaymentMethodCard fromJson(String json) {
    return ensureInitialized().decodeJson<PaymentMethodCard>(json);
  }
}

mixin PaymentMethodCardMappable {
  String toJson() {
    return PaymentMethodCardMapper.ensureInitialized()
        .encodeJson<PaymentMethodCard>(this as PaymentMethodCard);
  }

  Map<String, dynamic> toMap() {
    return PaymentMethodCardMapper.ensureInitialized()
        .encodeMap<PaymentMethodCard>(this as PaymentMethodCard);
  }

  PaymentMethodCardCopyWith<PaymentMethodCard, PaymentMethodCard,
          PaymentMethodCard>
      get copyWith =>
          _PaymentMethodCardCopyWithImpl<PaymentMethodCard, PaymentMethodCard>(
              this as PaymentMethodCard, $identity, $identity);
  @override
  String toString() {
    return PaymentMethodCardMapper.ensureInitialized()
        .stringifyValue(this as PaymentMethodCard);
  }

  @override
  bool operator ==(Object other) {
    return PaymentMethodCardMapper.ensureInitialized()
        .equalsValue(this as PaymentMethodCard, other);
  }

  @override
  int get hashCode {
    return PaymentMethodCardMapper.ensureInitialized()
        .hashValue(this as PaymentMethodCard);
  }
}

extension PaymentMethodCardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentMethodCard, $Out> {
  PaymentMethodCardCopyWith<$R, PaymentMethodCard, $Out>
      get $asPaymentMethodCard => $base
          .as((v, t, t2) => _PaymentMethodCardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaymentMethodCardCopyWith<$R, $In extends PaymentMethodCard,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  CardNetworksCopyWith<$R, CardNetworks, CardNetworks>? get networks;
  CardChecksCopyWith<$R, CardChecks, CardChecks>? get checks;
  ThreeDSecureUsageCopyWith<$R, ThreeDSecureUsage, ThreeDSecureUsage>?
      get threeDSecureUsage;
  $R call(
      {String? brand,
      String? country,
      int? expMonth,
      int? expYear,
      String? funding,
      String? number,
      String? object,
      String? last4,
      CardNetworks? networks,
      String? displayBrand,
      CardChecks? checks,
      String? regulatedStatus,
      dynamic wallet,
      ThreeDSecureUsage? threeDSecureUsage,
      String? fingerprint,
      dynamic generatedFrom});
  PaymentMethodCardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentMethodCardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentMethodCard, $Out>
    implements PaymentMethodCardCopyWith<$R, PaymentMethodCard, $Out> {
  _PaymentMethodCardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentMethodCard> $mapper =
      PaymentMethodCardMapper.ensureInitialized();
  @override
  CardNetworksCopyWith<$R, CardNetworks, CardNetworks>? get networks =>
      $value.networks?.copyWith.$chain((v) => call(networks: v));
  @override
  CardChecksCopyWith<$R, CardChecks, CardChecks>? get checks =>
      $value.checks?.copyWith.$chain((v) => call(checks: v));
  @override
  ThreeDSecureUsageCopyWith<$R, ThreeDSecureUsage, ThreeDSecureUsage>?
      get threeDSecureUsage => $value.threeDSecureUsage?.copyWith
          .$chain((v) => call(threeDSecureUsage: v));
  @override
  $R call(
          {Object? brand = $none,
          Object? country = $none,
          int? expMonth,
          int? expYear,
          Object? funding = $none,
          String? number,
          String? object,
          String? last4,
          Object? networks = $none,
          Object? displayBrand = $none,
          Object? checks = $none,
          Object? regulatedStatus = $none,
          Object? wallet = $none,
          Object? threeDSecureUsage = $none,
          Object? fingerprint = $none,
          Object? generatedFrom = $none}) =>
      $apply(FieldCopyWithData({
        if (brand != $none) #brand: brand,
        if (country != $none) #country: country,
        if (expMonth != null) #expMonth: expMonth,
        if (expYear != null) #expYear: expYear,
        if (funding != $none) #funding: funding,
        if (number != null) #number: number,
        if (object != null) #object: object,
        if (last4 != null) #last4: last4,
        if (networks != $none) #networks: networks,
        if (displayBrand != $none) #displayBrand: displayBrand,
        if (checks != $none) #checks: checks,
        if (regulatedStatus != $none) #regulatedStatus: regulatedStatus,
        if (wallet != $none) #wallet: wallet,
        if (threeDSecureUsage != $none) #threeDSecureUsage: threeDSecureUsage,
        if (fingerprint != $none) #fingerprint: fingerprint,
        if (generatedFrom != $none) #generatedFrom: generatedFrom
      }));
  @override
  PaymentMethodCard $make(CopyWithData data) => PaymentMethodCard(
      brand: data.get(#brand, or: $value.brand),
      country: data.get(#country, or: $value.country),
      expMonth: data.get(#expMonth, or: $value.expMonth),
      expYear: data.get(#expYear, or: $value.expYear),
      funding: data.get(#funding, or: $value.funding),
      number: data.get(#number, or: $value.number),
      object: data.get(#object, or: $value.object),
      last4: data.get(#last4, or: $value.last4),
      networks: data.get(#networks, or: $value.networks),
      displayBrand: data.get(#displayBrand, or: $value.displayBrand),
      checks: data.get(#checks, or: $value.checks),
      regulatedStatus: data.get(#regulatedStatus, or: $value.regulatedStatus),
      wallet: data.get(#wallet, or: $value.wallet),
      threeDSecureUsage:
          data.get(#threeDSecureUsage, or: $value.threeDSecureUsage),
      fingerprint: data.get(#fingerprint, or: $value.fingerprint),
      generatedFrom: data.get(#generatedFrom, or: $value.generatedFrom));

  @override
  PaymentMethodCardCopyWith<$R2, PaymentMethodCard, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaymentMethodCardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CardNetworksMapper extends ClassMapperBase<CardNetworks> {
  CardNetworksMapper._();

  static CardNetworksMapper? _instance;
  static CardNetworksMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CardNetworksMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CardNetworks';

  static List<String>? _$available(CardNetworks v) => v.available;
  static const Field<CardNetworks, List<String>> _f$available =
      Field('available', _$available, opt: true);
  static String? _$preferred(CardNetworks v) => v.preferred;
  static const Field<CardNetworks, String> _f$preferred =
      Field('preferred', _$preferred, opt: true);

  @override
  final MappableFields<CardNetworks> fields = const {
    #available: _f$available,
    #preferred: _f$preferred,
  };

  static CardNetworks _instantiate(DecodingData data) {
    return CardNetworks(
        available: data.dec(_f$available), preferred: data.dec(_f$preferred));
  }

  @override
  final Function instantiate = _instantiate;

  static CardNetworks fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CardNetworks>(map);
  }

  static CardNetworks fromJson(String json) {
    return ensureInitialized().decodeJson<CardNetworks>(json);
  }
}

mixin CardNetworksMappable {
  String toJson() {
    return CardNetworksMapper.ensureInitialized()
        .encodeJson<CardNetworks>(this as CardNetworks);
  }

  Map<String, dynamic> toMap() {
    return CardNetworksMapper.ensureInitialized()
        .encodeMap<CardNetworks>(this as CardNetworks);
  }

  CardNetworksCopyWith<CardNetworks, CardNetworks, CardNetworks> get copyWith =>
      _CardNetworksCopyWithImpl<CardNetworks, CardNetworks>(
          this as CardNetworks, $identity, $identity);
  @override
  String toString() {
    return CardNetworksMapper.ensureInitialized()
        .stringifyValue(this as CardNetworks);
  }

  @override
  bool operator ==(Object other) {
    return CardNetworksMapper.ensureInitialized()
        .equalsValue(this as CardNetworks, other);
  }

  @override
  int get hashCode {
    return CardNetworksMapper.ensureInitialized()
        .hashValue(this as CardNetworks);
  }
}

extension CardNetworksValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CardNetworks, $Out> {
  CardNetworksCopyWith<$R, CardNetworks, $Out> get $asCardNetworks =>
      $base.as((v, t, t2) => _CardNetworksCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CardNetworksCopyWith<$R, $In extends CardNetworks, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get available;
  $R call({List<String>? available, String? preferred});
  CardNetworksCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CardNetworksCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CardNetworks, $Out>
    implements CardNetworksCopyWith<$R, CardNetworks, $Out> {
  _CardNetworksCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CardNetworks> $mapper =
      CardNetworksMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get available =>
      $value.available != null
          ? ListCopyWith(
              $value.available!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(available: v))
          : null;
  @override
  $R call({Object? available = $none, Object? preferred = $none}) =>
      $apply(FieldCopyWithData({
        if (available != $none) #available: available,
        if (preferred != $none) #preferred: preferred
      }));
  @override
  CardNetworks $make(CopyWithData data) => CardNetworks(
      available: data.get(#available, or: $value.available),
      preferred: data.get(#preferred, or: $value.preferred));

  @override
  CardNetworksCopyWith<$R2, CardNetworks, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CardNetworksCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CardChecksMapper extends ClassMapperBase<CardChecks> {
  CardChecksMapper._();

  static CardChecksMapper? _instance;
  static CardChecksMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CardChecksMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CardChecks';

  static String? _$addressLine1Check(CardChecks v) => v.addressLine1Check;
  static const Field<CardChecks, String> _f$addressLine1Check = Field(
      'addressLine1Check', _$addressLine1Check,
      key: r'address_line1check', opt: true);
  static String? _$cvcCheck(CardChecks v) => v.cvcCheck;
  static const Field<CardChecks, String> _f$cvcCheck =
      Field('cvcCheck', _$cvcCheck, key: r'cvc_check', opt: true);
  static String? _$addressPostalCodeCheck(CardChecks v) =>
      v.addressPostalCodeCheck;
  static const Field<CardChecks, String> _f$addressPostalCodeCheck = Field(
      'addressPostalCodeCheck', _$addressPostalCodeCheck,
      key: r'address_postal_code_check', opt: true);

  @override
  final MappableFields<CardChecks> fields = const {
    #addressLine1Check: _f$addressLine1Check,
    #cvcCheck: _f$cvcCheck,
    #addressPostalCodeCheck: _f$addressPostalCodeCheck,
  };

  static CardChecks _instantiate(DecodingData data) {
    return CardChecks(
        addressLine1Check: data.dec(_f$addressLine1Check),
        cvcCheck: data.dec(_f$cvcCheck),
        addressPostalCodeCheck: data.dec(_f$addressPostalCodeCheck));
  }

  @override
  final Function instantiate = _instantiate;

  static CardChecks fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CardChecks>(map);
  }

  static CardChecks fromJson(String json) {
    return ensureInitialized().decodeJson<CardChecks>(json);
  }
}

mixin CardChecksMappable {
  String toJson() {
    return CardChecksMapper.ensureInitialized()
        .encodeJson<CardChecks>(this as CardChecks);
  }

  Map<String, dynamic> toMap() {
    return CardChecksMapper.ensureInitialized()
        .encodeMap<CardChecks>(this as CardChecks);
  }

  CardChecksCopyWith<CardChecks, CardChecks, CardChecks> get copyWith =>
      _CardChecksCopyWithImpl<CardChecks, CardChecks>(
          this as CardChecks, $identity, $identity);
  @override
  String toString() {
    return CardChecksMapper.ensureInitialized()
        .stringifyValue(this as CardChecks);
  }

  @override
  bool operator ==(Object other) {
    return CardChecksMapper.ensureInitialized()
        .equalsValue(this as CardChecks, other);
  }

  @override
  int get hashCode {
    return CardChecksMapper.ensureInitialized().hashValue(this as CardChecks);
  }
}

extension CardChecksValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CardChecks, $Out> {
  CardChecksCopyWith<$R, CardChecks, $Out> get $asCardChecks =>
      $base.as((v, t, t2) => _CardChecksCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CardChecksCopyWith<$R, $In extends CardChecks, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? addressLine1Check,
      String? cvcCheck,
      String? addressPostalCodeCheck});
  CardChecksCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CardChecksCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CardChecks, $Out>
    implements CardChecksCopyWith<$R, CardChecks, $Out> {
  _CardChecksCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CardChecks> $mapper =
      CardChecksMapper.ensureInitialized();
  @override
  $R call(
          {Object? addressLine1Check = $none,
          Object? cvcCheck = $none,
          Object? addressPostalCodeCheck = $none}) =>
      $apply(FieldCopyWithData({
        if (addressLine1Check != $none) #addressLine1Check: addressLine1Check,
        if (cvcCheck != $none) #cvcCheck: cvcCheck,
        if (addressPostalCodeCheck != $none)
          #addressPostalCodeCheck: addressPostalCodeCheck
      }));
  @override
  CardChecks $make(CopyWithData data) => CardChecks(
      addressLine1Check:
          data.get(#addressLine1Check, or: $value.addressLine1Check),
      cvcCheck: data.get(#cvcCheck, or: $value.cvcCheck),
      addressPostalCodeCheck:
          data.get(#addressPostalCodeCheck, or: $value.addressPostalCodeCheck));

  @override
  CardChecksCopyWith<$R2, CardChecks, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CardChecksCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ThreeDSecureUsageMapper extends ClassMapperBase<ThreeDSecureUsage> {
  ThreeDSecureUsageMapper._();

  static ThreeDSecureUsageMapper? _instance;
  static ThreeDSecureUsageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThreeDSecureUsageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ThreeDSecureUsage';

  static bool? _$supported(ThreeDSecureUsage v) => v.supported;
  static const Field<ThreeDSecureUsage, bool> _f$supported =
      Field('supported', _$supported, opt: true);

  @override
  final MappableFields<ThreeDSecureUsage> fields = const {
    #supported: _f$supported,
  };

  static ThreeDSecureUsage _instantiate(DecodingData data) {
    return ThreeDSecureUsage(supported: data.dec(_f$supported));
  }

  @override
  final Function instantiate = _instantiate;

  static ThreeDSecureUsage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThreeDSecureUsage>(map);
  }

  static ThreeDSecureUsage fromJson(String json) {
    return ensureInitialized().decodeJson<ThreeDSecureUsage>(json);
  }
}

mixin ThreeDSecureUsageMappable {
  String toJson() {
    return ThreeDSecureUsageMapper.ensureInitialized()
        .encodeJson<ThreeDSecureUsage>(this as ThreeDSecureUsage);
  }

  Map<String, dynamic> toMap() {
    return ThreeDSecureUsageMapper.ensureInitialized()
        .encodeMap<ThreeDSecureUsage>(this as ThreeDSecureUsage);
  }

  ThreeDSecureUsageCopyWith<ThreeDSecureUsage, ThreeDSecureUsage,
          ThreeDSecureUsage>
      get copyWith =>
          _ThreeDSecureUsageCopyWithImpl<ThreeDSecureUsage, ThreeDSecureUsage>(
              this as ThreeDSecureUsage, $identity, $identity);
  @override
  String toString() {
    return ThreeDSecureUsageMapper.ensureInitialized()
        .stringifyValue(this as ThreeDSecureUsage);
  }

  @override
  bool operator ==(Object other) {
    return ThreeDSecureUsageMapper.ensureInitialized()
        .equalsValue(this as ThreeDSecureUsage, other);
  }

  @override
  int get hashCode {
    return ThreeDSecureUsageMapper.ensureInitialized()
        .hashValue(this as ThreeDSecureUsage);
  }
}

extension ThreeDSecureUsageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThreeDSecureUsage, $Out> {
  ThreeDSecureUsageCopyWith<$R, ThreeDSecureUsage, $Out>
      get $asThreeDSecureUsage => $base
          .as((v, t, t2) => _ThreeDSecureUsageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ThreeDSecureUsageCopyWith<$R, $In extends ThreeDSecureUsage,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? supported});
  ThreeDSecureUsageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ThreeDSecureUsageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThreeDSecureUsage, $Out>
    implements ThreeDSecureUsageCopyWith<$R, ThreeDSecureUsage, $Out> {
  _ThreeDSecureUsageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThreeDSecureUsage> $mapper =
      ThreeDSecureUsageMapper.ensureInitialized();
  @override
  $R call({Object? supported = $none}) => $apply(
      FieldCopyWithData({if (supported != $none) #supported: supported}));
  @override
  ThreeDSecureUsage $make(CopyWithData data) =>
      ThreeDSecureUsage(supported: data.get(#supported, or: $value.supported));

  @override
  ThreeDSecureUsageCopyWith<$R2, ThreeDSecureUsage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ThreeDSecureUsageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PaymentMethodBillingDetailsMapper
    extends ClassMapperBase<PaymentMethodBillingDetails> {
  PaymentMethodBillingDetailsMapper._();

  static PaymentMethodBillingDetailsMapper? _instance;
  static PaymentMethodBillingDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PaymentMethodBillingDetailsMapper._());
      PaymentMethodAddressMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentMethodBillingDetails';

  static String _$name(PaymentMethodBillingDetails v) => v.name;
  static const Field<PaymentMethodBillingDetails, String> _f$name =
      Field('name', _$name);
  static PaymentMethodAddress? _$address(PaymentMethodBillingDetails v) =>
      v.address;
  static const Field<PaymentMethodBillingDetails, PaymentMethodAddress>
      _f$address = Field('address', _$address, opt: true);
  static String? _$email(PaymentMethodBillingDetails v) => v.email;
  static const Field<PaymentMethodBillingDetails, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$phone(PaymentMethodBillingDetails v) => v.phone;
  static const Field<PaymentMethodBillingDetails, String> _f$phone =
      Field('phone', _$phone, opt: true);

  @override
  final MappableFields<PaymentMethodBillingDetails> fields = const {
    #name: _f$name,
    #address: _f$address,
    #email: _f$email,
    #phone: _f$phone,
  };

  static PaymentMethodBillingDetails _instantiate(DecodingData data) {
    return PaymentMethodBillingDetails(
        name: data.dec(_f$name),
        address: data.dec(_f$address),
        email: data.dec(_f$email),
        phone: data.dec(_f$phone));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentMethodBillingDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentMethodBillingDetails>(map);
  }

  static PaymentMethodBillingDetails fromJson(String json) {
    return ensureInitialized().decodeJson<PaymentMethodBillingDetails>(json);
  }
}

mixin PaymentMethodBillingDetailsMappable {
  String toJson() {
    return PaymentMethodBillingDetailsMapper.ensureInitialized()
        .encodeJson<PaymentMethodBillingDetails>(
            this as PaymentMethodBillingDetails);
  }

  Map<String, dynamic> toMap() {
    return PaymentMethodBillingDetailsMapper.ensureInitialized()
        .encodeMap<PaymentMethodBillingDetails>(
            this as PaymentMethodBillingDetails);
  }

  PaymentMethodBillingDetailsCopyWith<PaymentMethodBillingDetails,
          PaymentMethodBillingDetails, PaymentMethodBillingDetails>
      get copyWith => _PaymentMethodBillingDetailsCopyWithImpl<
              PaymentMethodBillingDetails, PaymentMethodBillingDetails>(
          this as PaymentMethodBillingDetails, $identity, $identity);
  @override
  String toString() {
    return PaymentMethodBillingDetailsMapper.ensureInitialized()
        .stringifyValue(this as PaymentMethodBillingDetails);
  }

  @override
  bool operator ==(Object other) {
    return PaymentMethodBillingDetailsMapper.ensureInitialized()
        .equalsValue(this as PaymentMethodBillingDetails, other);
  }

  @override
  int get hashCode {
    return PaymentMethodBillingDetailsMapper.ensureInitialized()
        .hashValue(this as PaymentMethodBillingDetails);
  }
}

extension PaymentMethodBillingDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentMethodBillingDetails, $Out> {
  PaymentMethodBillingDetailsCopyWith<$R, PaymentMethodBillingDetails, $Out>
      get $asPaymentMethodBillingDetails => $base.as((v, t, t2) =>
          _PaymentMethodBillingDetailsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaymentMethodBillingDetailsCopyWith<
    $R,
    $In extends PaymentMethodBillingDetails,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  PaymentMethodAddressCopyWith<$R, PaymentMethodAddress, PaymentMethodAddress>?
      get address;
  $R call(
      {String? name,
      PaymentMethodAddress? address,
      String? email,
      String? phone});
  PaymentMethodBillingDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentMethodBillingDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentMethodBillingDetails, $Out>
    implements
        PaymentMethodBillingDetailsCopyWith<$R, PaymentMethodBillingDetails,
            $Out> {
  _PaymentMethodBillingDetailsCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentMethodBillingDetails> $mapper =
      PaymentMethodBillingDetailsMapper.ensureInitialized();
  @override
  PaymentMethodAddressCopyWith<$R, PaymentMethodAddress, PaymentMethodAddress>?
      get address => $value.address?.copyWith.$chain((v) => call(address: v));
  @override
  $R call(
          {String? name,
          Object? address = $none,
          Object? email = $none,
          Object? phone = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (address != $none) #address: address,
        if (email != $none) #email: email,
        if (phone != $none) #phone: phone
      }));
  @override
  PaymentMethodBillingDetails $make(CopyWithData data) =>
      PaymentMethodBillingDetails(
          name: data.get(#name, or: $value.name),
          address: data.get(#address, or: $value.address),
          email: data.get(#email, or: $value.email),
          phone: data.get(#phone, or: $value.phone));

  @override
  PaymentMethodBillingDetailsCopyWith<$R2, PaymentMethodBillingDetails, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PaymentMethodBillingDetailsCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class PaymentMethodAddressMapper extends ClassMapperBase<PaymentMethodAddress> {
  PaymentMethodAddressMapper._();

  static PaymentMethodAddressMapper? _instance;
  static PaymentMethodAddressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentMethodAddressMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentMethodAddress';

  static String? _$city(PaymentMethodAddress v) => v.city;
  static const Field<PaymentMethodAddress, String> _f$city =
      Field('city', _$city, opt: true);
  static String? _$country(PaymentMethodAddress v) => v.country;
  static const Field<PaymentMethodAddress, String> _f$country =
      Field('country', _$country, opt: true);
  static String? _$line1(PaymentMethodAddress v) => v.line1;
  static const Field<PaymentMethodAddress, String> _f$line1 =
      Field('line1', _$line1, opt: true);
  static String? _$line2(PaymentMethodAddress v) => v.line2;
  static const Field<PaymentMethodAddress, String> _f$line2 =
      Field('line2', _$line2, opt: true);
  static String? _$postalCode(PaymentMethodAddress v) => v.postalCode;
  static const Field<PaymentMethodAddress, String> _f$postalCode =
      Field('postalCode', _$postalCode, key: r'postal_code', opt: true);
  static String? _$state(PaymentMethodAddress v) => v.state;
  static const Field<PaymentMethodAddress, String> _f$state =
      Field('state', _$state, opt: true);

  @override
  final MappableFields<PaymentMethodAddress> fields = const {
    #city: _f$city,
    #country: _f$country,
    #line1: _f$line1,
    #line2: _f$line2,
    #postalCode: _f$postalCode,
    #state: _f$state,
  };

  static PaymentMethodAddress _instantiate(DecodingData data) {
    return PaymentMethodAddress(
        city: data.dec(_f$city),
        country: data.dec(_f$country),
        line1: data.dec(_f$line1),
        line2: data.dec(_f$line2),
        postalCode: data.dec(_f$postalCode),
        state: data.dec(_f$state));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentMethodAddress fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentMethodAddress>(map);
  }

  static PaymentMethodAddress fromJson(String json) {
    return ensureInitialized().decodeJson<PaymentMethodAddress>(json);
  }
}

mixin PaymentMethodAddressMappable {
  String toJson() {
    return PaymentMethodAddressMapper.ensureInitialized()
        .encodeJson<PaymentMethodAddress>(this as PaymentMethodAddress);
  }

  Map<String, dynamic> toMap() {
    return PaymentMethodAddressMapper.ensureInitialized()
        .encodeMap<PaymentMethodAddress>(this as PaymentMethodAddress);
  }

  PaymentMethodAddressCopyWith<PaymentMethodAddress, PaymentMethodAddress,
      PaymentMethodAddress> get copyWith => _PaymentMethodAddressCopyWithImpl<
          PaymentMethodAddress, PaymentMethodAddress>(
      this as PaymentMethodAddress, $identity, $identity);
  @override
  String toString() {
    return PaymentMethodAddressMapper.ensureInitialized()
        .stringifyValue(this as PaymentMethodAddress);
  }

  @override
  bool operator ==(Object other) {
    return PaymentMethodAddressMapper.ensureInitialized()
        .equalsValue(this as PaymentMethodAddress, other);
  }

  @override
  int get hashCode {
    return PaymentMethodAddressMapper.ensureInitialized()
        .hashValue(this as PaymentMethodAddress);
  }
}

extension PaymentMethodAddressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentMethodAddress, $Out> {
  PaymentMethodAddressCopyWith<$R, PaymentMethodAddress, $Out>
      get $asPaymentMethodAddress => $base.as(
          (v, t, t2) => _PaymentMethodAddressCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaymentMethodAddressCopyWith<
    $R,
    $In extends PaymentMethodAddress,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? city,
      String? country,
      String? line1,
      String? line2,
      String? postalCode,
      String? state});
  PaymentMethodAddressCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentMethodAddressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentMethodAddress, $Out>
    implements PaymentMethodAddressCopyWith<$R, PaymentMethodAddress, $Out> {
  _PaymentMethodAddressCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentMethodAddress> $mapper =
      PaymentMethodAddressMapper.ensureInitialized();
  @override
  $R call(
          {Object? city = $none,
          Object? country = $none,
          Object? line1 = $none,
          Object? line2 = $none,
          Object? postalCode = $none,
          Object? state = $none}) =>
      $apply(FieldCopyWithData({
        if (city != $none) #city: city,
        if (country != $none) #country: country,
        if (line1 != $none) #line1: line1,
        if (line2 != $none) #line2: line2,
        if (postalCode != $none) #postalCode: postalCode,
        if (state != $none) #state: state
      }));
  @override
  PaymentMethodAddress $make(CopyWithData data) => PaymentMethodAddress(
      city: data.get(#city, or: $value.city),
      country: data.get(#country, or: $value.country),
      line1: data.get(#line1, or: $value.line1),
      line2: data.get(#line2, or: $value.line2),
      postalCode: data.get(#postalCode, or: $value.postalCode),
      state: data.get(#state, or: $value.state));

  @override
  PaymentMethodAddressCopyWith<$R2, PaymentMethodAddress, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PaymentMethodAddressCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
