// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'billing_details_model.dart';

class BillingDetailsModelMapper extends ClassMapperBase<BillingDetailsModel> {
  BillingDetailsModelMapper._();

  static BillingDetailsModelMapper? _instance;
  static BillingDetailsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BillingDetailsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BillingDetailsModel';

  static String _$name(BillingDetailsModel v) => v.name;
  static const Field<BillingDetailsModel, String> _f$name =
      Field('name', _$name);
  static String _$email(BillingDetailsModel v) => v.email;
  static const Field<BillingDetailsModel, String> _f$email =
      Field('email', _$email, opt: true, def: '');
  static String _$phone(BillingDetailsModel v) => v.phone;
  static const Field<BillingDetailsModel, String> _f$phone =
      Field('phone', _$phone, opt: true, def: '');
  static Map<String, String>? _$address(BillingDetailsModel v) => v.address;
  static const Field<BillingDetailsModel, Map<String, String>> _f$address =
      Field('address', _$address, opt: true);

  @override
  final MappableFields<BillingDetailsModel> fields = const {
    #name: _f$name,
    #email: _f$email,
    #phone: _f$phone,
    #address: _f$address,
  };

  static BillingDetailsModel _instantiate(DecodingData data) {
    return BillingDetailsModel(
        name: data.dec(_f$name),
        email: data.dec(_f$email),
        phone: data.dec(_f$phone),
        address: data.dec(_f$address));
  }

  @override
  final Function instantiate = _instantiate;

  static BillingDetailsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BillingDetailsModel>(map);
  }

  static BillingDetailsModel fromJson(String json) {
    return ensureInitialized().decodeJson<BillingDetailsModel>(json);
  }
}

mixin BillingDetailsModelMappable {
  String toJson() {
    return BillingDetailsModelMapper.ensureInitialized()
        .encodeJson<BillingDetailsModel>(this as BillingDetailsModel);
  }

  Map<String, dynamic> toMap() {
    return BillingDetailsModelMapper.ensureInitialized()
        .encodeMap<BillingDetailsModel>(this as BillingDetailsModel);
  }

  BillingDetailsModelCopyWith<BillingDetailsModel, BillingDetailsModel,
          BillingDetailsModel>
      get copyWith => _BillingDetailsModelCopyWithImpl(
          this as BillingDetailsModel, $identity, $identity);
  @override
  String toString() {
    return BillingDetailsModelMapper.ensureInitialized()
        .stringifyValue(this as BillingDetailsModel);
  }

  @override
  bool operator ==(Object other) {
    return BillingDetailsModelMapper.ensureInitialized()
        .equalsValue(this as BillingDetailsModel, other);
  }

  @override
  int get hashCode {
    return BillingDetailsModelMapper.ensureInitialized()
        .hashValue(this as BillingDetailsModel);
  }
}

extension BillingDetailsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BillingDetailsModel, $Out> {
  BillingDetailsModelCopyWith<$R, BillingDetailsModel, $Out>
      get $asBillingDetailsModel =>
          $base.as((v, t, t2) => _BillingDetailsModelCopyWithImpl(v, t, t2));
}

abstract class BillingDetailsModelCopyWith<$R, $In extends BillingDetailsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get address;
  $R call(
      {String? name,
      String? email,
      String? phone,
      Map<String, String>? address});
  BillingDetailsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BillingDetailsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BillingDetailsModel, $Out>
    implements BillingDetailsModelCopyWith<$R, BillingDetailsModel, $Out> {
  _BillingDetailsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BillingDetailsModel> $mapper =
      BillingDetailsModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get address => $value.address != null
          ? MapCopyWith(
              $value.address!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(address: v))
          : null;
  @override
  $R call(
          {String? name,
          String? email,
          String? phone,
          Object? address = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (email != null) #email: email,
        if (phone != null) #phone: phone,
        if (address != $none) #address: address
      }));
  @override
  BillingDetailsModel $make(CopyWithData data) => BillingDetailsModel(
      name: data.get(#name, or: $value.name),
      email: data.get(#email, or: $value.email),
      phone: data.get(#phone, or: $value.phone),
      address: data.get(#address, or: $value.address));

  @override
  BillingDetailsModelCopyWith<$R2, BillingDetailsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _BillingDetailsModelCopyWithImpl($value, $cast, t);
}
