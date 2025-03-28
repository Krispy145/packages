// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'stripe_customer_model.dart';

class StripeCustomerModelMapper extends ClassMapperBase<StripeCustomerModel> {
  StripeCustomerModelMapper._();

  static StripeCustomerModelMapper? _instance;
  static StripeCustomerModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StripeCustomerModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'StripeCustomerModel';

  static String _$id(StripeCustomerModel v) => v.id;
  static const Field<StripeCustomerModel, String> _f$id = Field('id', _$id);
  static String _$customerId(StripeCustomerModel v) => v.customerId;
  static const Field<StripeCustomerModel, String> _f$customerId =
      Field('customerId', _$customerId, key: r'customer_id');
  static String _$setupSecret(StripeCustomerModel v) => v.setupSecret;
  static const Field<StripeCustomerModel, String> _f$setupSecret =
      Field('setupSecret', _$setupSecret, key: r'setup_secret');

  @override
  final MappableFields<StripeCustomerModel> fields = const {
    #id: _f$id,
    #customerId: _f$customerId,
    #setupSecret: _f$setupSecret,
  };

  static StripeCustomerModel _instantiate(DecodingData data) {
    return StripeCustomerModel(
        id: data.dec(_f$id),
        customerId: data.dec(_f$customerId),
        setupSecret: data.dec(_f$setupSecret));
  }

  @override
  final Function instantiate = _instantiate;

  static StripeCustomerModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StripeCustomerModel>(map);
  }

  static StripeCustomerModel fromJson(String json) {
    return ensureInitialized().decodeJson<StripeCustomerModel>(json);
  }
}

mixin StripeCustomerModelMappable {
  String toJson() {
    return StripeCustomerModelMapper.ensureInitialized()
        .encodeJson<StripeCustomerModel>(this as StripeCustomerModel);
  }

  Map<String, dynamic> toMap() {
    return StripeCustomerModelMapper.ensureInitialized()
        .encodeMap<StripeCustomerModel>(this as StripeCustomerModel);
  }

  StripeCustomerModelCopyWith<StripeCustomerModel, StripeCustomerModel,
      StripeCustomerModel> get copyWith => _StripeCustomerModelCopyWithImpl<
          StripeCustomerModel, StripeCustomerModel>(
      this as StripeCustomerModel, $identity, $identity);
  @override
  String toString() {
    return StripeCustomerModelMapper.ensureInitialized()
        .stringifyValue(this as StripeCustomerModel);
  }

  @override
  bool operator ==(Object other) {
    return StripeCustomerModelMapper.ensureInitialized()
        .equalsValue(this as StripeCustomerModel, other);
  }

  @override
  int get hashCode {
    return StripeCustomerModelMapper.ensureInitialized()
        .hashValue(this as StripeCustomerModel);
  }
}

extension StripeCustomerModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StripeCustomerModel, $Out> {
  StripeCustomerModelCopyWith<$R, StripeCustomerModel, $Out>
      get $asStripeCustomerModel => $base.as(
          (v, t, t2) => _StripeCustomerModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class StripeCustomerModelCopyWith<$R, $In extends StripeCustomerModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? customerId, String? setupSecret});
  StripeCustomerModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _StripeCustomerModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StripeCustomerModel, $Out>
    implements StripeCustomerModelCopyWith<$R, StripeCustomerModel, $Out> {
  _StripeCustomerModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StripeCustomerModel> $mapper =
      StripeCustomerModelMapper.ensureInitialized();
  @override
  $R call({String? id, String? customerId, String? setupSecret}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (customerId != null) #customerId: customerId,
        if (setupSecret != null) #setupSecret: setupSecret
      }));
  @override
  StripeCustomerModel $make(CopyWithData data) => StripeCustomerModel(
      id: data.get(#id, or: $value.id),
      customerId: data.get(#customerId, or: $value.customerId),
      setupSecret: data.get(#setupSecret, or: $value.setupSecret));

  @override
  StripeCustomerModelCopyWith<$R2, StripeCustomerModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _StripeCustomerModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
