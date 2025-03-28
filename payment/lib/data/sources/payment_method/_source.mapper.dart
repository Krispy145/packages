// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '_source.dart';

class PaymentMethodSearchQueryModelMapper
    extends ClassMapperBase<PaymentMethodSearchQueryModel> {
  PaymentMethodSearchQueryModelMapper._();

  static PaymentMethodSearchQueryModelMapper? _instance;
  static PaymentMethodSearchQueryModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PaymentMethodSearchQueryModelMapper._());
      BasicSearchQueryModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentMethodSearchQueryModel';

  static String _$searchTerm(PaymentMethodSearchQueryModel v) => v.searchTerm;
  static const Field<PaymentMethodSearchQueryModel, String> _f$searchTerm =
      Field('searchTerm', _$searchTerm,
          key: r'search_term', opt: true, def: "");
  static String _$cardHolderName(PaymentMethodSearchQueryModel v) =>
      v.cardHolderName;
  static const Field<PaymentMethodSearchQueryModel, String> _f$cardHolderName =
      Field('cardHolderName', _$cardHolderName, key: r'card_holder_name');
  static String _$last4(PaymentMethodSearchQueryModel v) => v.last4;
  static const Field<PaymentMethodSearchQueryModel, String> _f$last4 =
      Field('last4', _$last4);
  static String _$expiryDate(PaymentMethodSearchQueryModel v) => v.expiryDate;
  static const Field<PaymentMethodSearchQueryModel, String> _f$expiryDate =
      Field('expiryDate', _$expiryDate, key: r'expiry_date');

  @override
  final MappableFields<PaymentMethodSearchQueryModel> fields = const {
    #searchTerm: _f$searchTerm,
    #cardHolderName: _f$cardHolderName,
    #last4: _f$last4,
    #expiryDate: _f$expiryDate,
  };

  static PaymentMethodSearchQueryModel _instantiate(DecodingData data) {
    return PaymentMethodSearchQueryModel(
        searchTerm: data.dec(_f$searchTerm),
        cardHolderName: data.dec(_f$cardHolderName),
        last4: data.dec(_f$last4),
        expiryDate: data.dec(_f$expiryDate));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentMethodSearchQueryModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentMethodSearchQueryModel>(map);
  }

  static PaymentMethodSearchQueryModel fromJson(String json) {
    return ensureInitialized().decodeJson<PaymentMethodSearchQueryModel>(json);
  }
}

mixin PaymentMethodSearchQueryModelMappable {
  String toJson() {
    return PaymentMethodSearchQueryModelMapper.ensureInitialized()
        .encodeJson<PaymentMethodSearchQueryModel>(
            this as PaymentMethodSearchQueryModel);
  }

  Map<String, dynamic> toMap() {
    return PaymentMethodSearchQueryModelMapper.ensureInitialized()
        .encodeMap<PaymentMethodSearchQueryModel>(
            this as PaymentMethodSearchQueryModel);
  }

  PaymentMethodSearchQueryModelCopyWith<PaymentMethodSearchQueryModel,
          PaymentMethodSearchQueryModel, PaymentMethodSearchQueryModel>
      get copyWith => _PaymentMethodSearchQueryModelCopyWithImpl<
              PaymentMethodSearchQueryModel, PaymentMethodSearchQueryModel>(
          this as PaymentMethodSearchQueryModel, $identity, $identity);
  @override
  String toString() {
    return PaymentMethodSearchQueryModelMapper.ensureInitialized()
        .stringifyValue(this as PaymentMethodSearchQueryModel);
  }

  @override
  bool operator ==(Object other) {
    return PaymentMethodSearchQueryModelMapper.ensureInitialized()
        .equalsValue(this as PaymentMethodSearchQueryModel, other);
  }

  @override
  int get hashCode {
    return PaymentMethodSearchQueryModelMapper.ensureInitialized()
        .hashValue(this as PaymentMethodSearchQueryModel);
  }
}

extension PaymentMethodSearchQueryModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentMethodSearchQueryModel, $Out> {
  PaymentMethodSearchQueryModelCopyWith<$R, PaymentMethodSearchQueryModel, $Out>
      get $asPaymentMethodSearchQueryModel => $base.as((v, t, t2) =>
          _PaymentMethodSearchQueryModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaymentMethodSearchQueryModelCopyWith<
    $R,
    $In extends PaymentMethodSearchQueryModel,
    $Out> implements BasicSearchQueryModelCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? searchTerm,
      String? cardHolderName,
      String? last4,
      String? expiryDate});
  PaymentMethodSearchQueryModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentMethodSearchQueryModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentMethodSearchQueryModel, $Out>
    implements
        PaymentMethodSearchQueryModelCopyWith<$R, PaymentMethodSearchQueryModel,
            $Out> {
  _PaymentMethodSearchQueryModelCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentMethodSearchQueryModel> $mapper =
      PaymentMethodSearchQueryModelMapper.ensureInitialized();
  @override
  $R call(
          {String? searchTerm,
          String? cardHolderName,
          String? last4,
          String? expiryDate}) =>
      $apply(FieldCopyWithData({
        if (searchTerm != null) #searchTerm: searchTerm,
        if (cardHolderName != null) #cardHolderName: cardHolderName,
        if (last4 != null) #last4: last4,
        if (expiryDate != null) #expiryDate: expiryDate
      }));
  @override
  PaymentMethodSearchQueryModel $make(CopyWithData data) =>
      PaymentMethodSearchQueryModel(
          searchTerm: data.get(#searchTerm, or: $value.searchTerm),
          cardHolderName: data.get(#cardHolderName, or: $value.cardHolderName),
          last4: data.get(#last4, or: $value.last4),
          expiryDate: data.get(#expiryDate, or: $value.expiryDate));

  @override
  PaymentMethodSearchQueryModelCopyWith<$R2, PaymentMethodSearchQueryModel,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaymentMethodSearchQueryModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
