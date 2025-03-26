// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'stripe_customers_model.dart';

class StripeCustomersModelMapper extends ClassMapperBase<StripeCustomersModel> {
  StripeCustomersModelMapper._();

  static StripeCustomersModelMapper? _instance;
  static StripeCustomersModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StripeCustomersModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'StripeCustomersModel';

  static String _$customerId(StripeCustomersModel v) => v.customerId;
  static const Field<StripeCustomersModel, String> _f$customerId =
      Field('customerId', _$customerId, key: r'customer_id');
  static String _$setupSecret(StripeCustomersModel v) => v.setupSecret;
  static const Field<StripeCustomersModel, String> _f$setupSecret =
      Field('setupSecret', _$setupSecret, key: r'setup_secret');

  @override
  final MappableFields<StripeCustomersModel> fields = const {
    #customerId: _f$customerId,
    #setupSecret: _f$setupSecret,
  };

  static StripeCustomersModel _instantiate(DecodingData data) {
    return StripeCustomersModel(
        customerId: data.dec(_f$customerId),
        setupSecret: data.dec(_f$setupSecret));
  }

  @override
  final Function instantiate = _instantiate;

  static StripeCustomersModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StripeCustomersModel>(map);
  }

  static StripeCustomersModel fromJson(String json) {
    return ensureInitialized().decodeJson<StripeCustomersModel>(json);
  }
}

mixin StripeCustomersModelMappable {
  String toJson() {
    return StripeCustomersModelMapper.ensureInitialized()
        .encodeJson<StripeCustomersModel>(this as StripeCustomersModel);
  }

  Map<String, dynamic> toMap() {
    return StripeCustomersModelMapper.ensureInitialized()
        .encodeMap<StripeCustomersModel>(this as StripeCustomersModel);
  }

  StripeCustomersModelCopyWith<StripeCustomersModel, StripeCustomersModel,
          StripeCustomersModel>
      get copyWith => _StripeCustomersModelCopyWithImpl(
          this as StripeCustomersModel, $identity, $identity);
  @override
  String toString() {
    return StripeCustomersModelMapper.ensureInitialized()
        .stringifyValue(this as StripeCustomersModel);
  }

  @override
  bool operator ==(Object other) {
    return StripeCustomersModelMapper.ensureInitialized()
        .equalsValue(this as StripeCustomersModel, other);
  }

  @override
  int get hashCode {
    return StripeCustomersModelMapper.ensureInitialized()
        .hashValue(this as StripeCustomersModel);
  }
}

extension StripeCustomersModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StripeCustomersModel, $Out> {
  StripeCustomersModelCopyWith<$R, StripeCustomersModel, $Out>
      get $asStripeCustomersModel =>
          $base.as((v, t, t2) => _StripeCustomersModelCopyWithImpl(v, t, t2));
}

abstract class StripeCustomersModelCopyWith<
    $R,
    $In extends StripeCustomersModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? customerId, String? setupSecret});
  StripeCustomersModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _StripeCustomersModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StripeCustomersModel, $Out>
    implements StripeCustomersModelCopyWith<$R, StripeCustomersModel, $Out> {
  _StripeCustomersModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StripeCustomersModel> $mapper =
      StripeCustomersModelMapper.ensureInitialized();
  @override
  $R call({String? customerId, String? setupSecret}) =>
      $apply(FieldCopyWithData({
        if (customerId != null) #customerId: customerId,
        if (setupSecret != null) #setupSecret: setupSecret
      }));
  @override
  StripeCustomersModel $make(CopyWithData data) => StripeCustomersModel(
      customerId: data.get(#customerId, or: $value.customerId),
      setupSecret: data.get(#setupSecret, or: $value.setupSecret));

  @override
  StripeCustomersModelCopyWith<$R2, StripeCustomersModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _StripeCustomersModelCopyWithImpl($value, $cast, t);
}
