// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'card_model.dart';

class CardModelMapper extends ClassMapperBase<CardModel> {
  CardModelMapper._();

  static CardModelMapper? _instance;
  static CardModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CardModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CardModel';

  static String _$brand(CardModel v) => v.brand;
  static const Field<CardModel, String> _f$brand = Field('brand', _$brand);
  static Map<String, String>? _$checks(CardModel v) => v.checks;
  static const Field<CardModel, Map<String, String>> _f$checks =
      Field('checks', _$checks, opt: true);
  static String _$country(CardModel v) => v.country;
  static const Field<CardModel, String> _f$country =
      Field('country', _$country);
  static String _$displayBrand(CardModel v) => v.displayBrand;
  static const Field<CardModel, String> _f$displayBrand =
      Field('displayBrand', _$displayBrand, key: r'display_brand');
  static int _$expMonth(CardModel v) => v.expMonth;
  static const Field<CardModel, int> _f$expMonth =
      Field('expMonth', _$expMonth, key: r'exp_month');
  static int _$expYear(CardModel v) => v.expYear;
  static const Field<CardModel, int> _f$expYear =
      Field('expYear', _$expYear, key: r'exp_year');
  static String _$fingerPrint(CardModel v) => v.fingerPrint;
  static const Field<CardModel, String> _f$fingerPrint =
      Field('fingerPrint', _$fingerPrint, key: r'finger_print');
  static String _$funding(CardModel v) => v.funding;
  static const Field<CardModel, String> _f$funding =
      Field('funding', _$funding);
  static String? _$generatedFrom(CardModel v) => v.generatedFrom;
  static const Field<CardModel, String> _f$generatedFrom = Field(
      'generatedFrom', _$generatedFrom,
      key: r'generated_from', opt: true, def: '');
  static String _$last4(CardModel v) => v.last4;
  static const Field<CardModel, String> _f$last4 = Field('last4', _$last4);
  static Map<String, String>? _$networks(CardModel v) => v.networks;
  static const Field<CardModel, Map<String, String>> _f$networks =
      Field('networks', _$networks, opt: true);
  static String _$regulatedStatus(CardModel v) => v.regulatedStatus;
  static const Field<CardModel, String> _f$regulatedStatus =
      Field('regulatedStatus', _$regulatedStatus, key: r'regulated_status');
  static Map<String, String>? _$threeDSecureUsage(CardModel v) =>
      v.threeDSecureUsage;
  static const Field<CardModel, Map<String, String>> _f$threeDSecureUsage =
      Field('threeDSecureUsage', _$threeDSecureUsage,
          key: r'three_dsecure_usage', opt: true);
  static String? _$wallet(CardModel v) => v.wallet;
  static const Field<CardModel, String> _f$wallet =
      Field('wallet', _$wallet, opt: true, def: '');

  @override
  final MappableFields<CardModel> fields = const {
    #brand: _f$brand,
    #checks: _f$checks,
    #country: _f$country,
    #displayBrand: _f$displayBrand,
    #expMonth: _f$expMonth,
    #expYear: _f$expYear,
    #fingerPrint: _f$fingerPrint,
    #funding: _f$funding,
    #generatedFrom: _f$generatedFrom,
    #last4: _f$last4,
    #networks: _f$networks,
    #regulatedStatus: _f$regulatedStatus,
    #threeDSecureUsage: _f$threeDSecureUsage,
    #wallet: _f$wallet,
  };

  static CardModel _instantiate(DecodingData data) {
    return CardModel(
        brand: data.dec(_f$brand),
        checks: data.dec(_f$checks),
        country: data.dec(_f$country),
        displayBrand: data.dec(_f$displayBrand),
        expMonth: data.dec(_f$expMonth),
        expYear: data.dec(_f$expYear),
        fingerPrint: data.dec(_f$fingerPrint),
        funding: data.dec(_f$funding),
        generatedFrom: data.dec(_f$generatedFrom),
        last4: data.dec(_f$last4),
        networks: data.dec(_f$networks),
        regulatedStatus: data.dec(_f$regulatedStatus),
        threeDSecureUsage: data.dec(_f$threeDSecureUsage),
        wallet: data.dec(_f$wallet));
  }

  @override
  final Function instantiate = _instantiate;

  static CardModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CardModel>(map);
  }

  static CardModel fromJson(String json) {
    return ensureInitialized().decodeJson<CardModel>(json);
  }
}

mixin CardModelMappable {
  String toJson() {
    return CardModelMapper.ensureInitialized()
        .encodeJson<CardModel>(this as CardModel);
  }

  Map<String, dynamic> toMap() {
    return CardModelMapper.ensureInitialized()
        .encodeMap<CardModel>(this as CardModel);
  }

  CardModelCopyWith<CardModel, CardModel, CardModel> get copyWith =>
      _CardModelCopyWithImpl(this as CardModel, $identity, $identity);
  @override
  String toString() {
    return CardModelMapper.ensureInitialized()
        .stringifyValue(this as CardModel);
  }

  @override
  bool operator ==(Object other) {
    return CardModelMapper.ensureInitialized()
        .equalsValue(this as CardModel, other);
  }

  @override
  int get hashCode {
    return CardModelMapper.ensureInitialized().hashValue(this as CardModel);
  }
}

extension CardModelValueCopy<$R, $Out> on ObjectCopyWith<$R, CardModel, $Out> {
  CardModelCopyWith<$R, CardModel, $Out> get $asCardModel =>
      $base.as((v, t, t2) => _CardModelCopyWithImpl(v, t, t2));
}

abstract class CardModelCopyWith<$R, $In extends CardModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get checks;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get networks;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get threeDSecureUsage;
  $R call(
      {String? brand,
      Map<String, String>? checks,
      String? country,
      String? displayBrand,
      int? expMonth,
      int? expYear,
      String? fingerPrint,
      String? funding,
      String? generatedFrom,
      String? last4,
      Map<String, String>? networks,
      String? regulatedStatus,
      Map<String, String>? threeDSecureUsage,
      String? wallet});
  CardModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CardModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CardModel, $Out>
    implements CardModelCopyWith<$R, CardModel, $Out> {
  _CardModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CardModel> $mapper =
      CardModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get checks => $value.checks != null
          ? MapCopyWith($value.checks!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(checks: v))
          : null;
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get networks => $value.networks != null
          ? MapCopyWith(
              $value.networks!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(networks: v))
          : null;
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get threeDSecureUsage => $value.threeDSecureUsage != null
          ? MapCopyWith(
              $value.threeDSecureUsage!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(threeDSecureUsage: v))
          : null;
  @override
  $R call(
          {String? brand,
          Object? checks = $none,
          String? country,
          String? displayBrand,
          int? expMonth,
          int? expYear,
          String? fingerPrint,
          String? funding,
          Object? generatedFrom = $none,
          String? last4,
          Object? networks = $none,
          String? regulatedStatus,
          Object? threeDSecureUsage = $none,
          Object? wallet = $none}) =>
      $apply(FieldCopyWithData({
        if (brand != null) #brand: brand,
        if (checks != $none) #checks: checks,
        if (country != null) #country: country,
        if (displayBrand != null) #displayBrand: displayBrand,
        if (expMonth != null) #expMonth: expMonth,
        if (expYear != null) #expYear: expYear,
        if (fingerPrint != null) #fingerPrint: fingerPrint,
        if (funding != null) #funding: funding,
        if (generatedFrom != $none) #generatedFrom: generatedFrom,
        if (last4 != null) #last4: last4,
        if (networks != $none) #networks: networks,
        if (regulatedStatus != null) #regulatedStatus: regulatedStatus,
        if (threeDSecureUsage != $none) #threeDSecureUsage: threeDSecureUsage,
        if (wallet != $none) #wallet: wallet
      }));
  @override
  CardModel $make(CopyWithData data) => CardModel(
      brand: data.get(#brand, or: $value.brand),
      checks: data.get(#checks, or: $value.checks),
      country: data.get(#country, or: $value.country),
      displayBrand: data.get(#displayBrand, or: $value.displayBrand),
      expMonth: data.get(#expMonth, or: $value.expMonth),
      expYear: data.get(#expYear, or: $value.expYear),
      fingerPrint: data.get(#fingerPrint, or: $value.fingerPrint),
      funding: data.get(#funding, or: $value.funding),
      generatedFrom: data.get(#generatedFrom, or: $value.generatedFrom),
      last4: data.get(#last4, or: $value.last4),
      networks: data.get(#networks, or: $value.networks),
      regulatedStatus: data.get(#regulatedStatus, or: $value.regulatedStatus),
      threeDSecureUsage:
          data.get(#threeDSecureUsage, or: $value.threeDSecureUsage),
      wallet: data.get(#wallet, or: $value.wallet));

  @override
  CardModelCopyWith<$R2, CardModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CardModelCopyWithImpl($value, $cast, t);
}
