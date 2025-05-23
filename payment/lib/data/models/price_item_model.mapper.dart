// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'price_item_model.dart';

class PriceItemModelMapper extends ClassMapperBase<PriceItemModel> {
  PriceItemModelMapper._();

  static PriceItemModelMapper? _instance;
  static PriceItemModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PriceItemModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PriceItemModel';

  static String _$price(PriceItemModel v) => v.price;
  static const Field<PriceItemModel, String> _f$price = Field('price', _$price);
  static int _$quantity(PriceItemModel v) => v.quantity;
  static const Field<PriceItemModel, int> _f$quantity =
      Field('quantity', _$quantity);
  static String _$productType(PriceItemModel v) => v.productType;
  static const Field<PriceItemModel, String> _f$productType =
      Field('productType', _$productType);
  static bool _$isSubscription(PriceItemModel v) => v.isSubscription;
  static const Field<PriceItemModel, bool> _f$isSubscription =
      Field('isSubscription', _$isSubscription);

  @override
  final MappableFields<PriceItemModel> fields = const {
    #price: _f$price,
    #quantity: _f$quantity,
    #productType: _f$productType,
    #isSubscription: _f$isSubscription,
  };

  static PriceItemModel _instantiate(DecodingData data) {
    return PriceItemModel(
        price: data.dec(_f$price),
        quantity: data.dec(_f$quantity),
        productType: data.dec(_f$productType),
        isSubscription: data.dec(_f$isSubscription));
  }

  @override
  final Function instantiate = _instantiate;

  static PriceItemModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PriceItemModel>(map);
  }

  static PriceItemModel fromJson(String json) {
    return ensureInitialized().decodeJson<PriceItemModel>(json);
  }
}

mixin PriceItemModelMappable {
  String toJson() {
    return PriceItemModelMapper.ensureInitialized()
        .encodeJson<PriceItemModel>(this as PriceItemModel);
  }

  Map<String, dynamic> toMap() {
    return PriceItemModelMapper.ensureInitialized()
        .encodeMap<PriceItemModel>(this as PriceItemModel);
  }

  PriceItemModelCopyWith<PriceItemModel, PriceItemModel, PriceItemModel>
      get copyWith =>
          _PriceItemModelCopyWithImpl<PriceItemModel, PriceItemModel>(
              this as PriceItemModel, $identity, $identity);
  @override
  String toString() {
    return PriceItemModelMapper.ensureInitialized()
        .stringifyValue(this as PriceItemModel);
  }

  @override
  bool operator ==(Object other) {
    return PriceItemModelMapper.ensureInitialized()
        .equalsValue(this as PriceItemModel, other);
  }

  @override
  int get hashCode {
    return PriceItemModelMapper.ensureInitialized()
        .hashValue(this as PriceItemModel);
  }
}

extension PriceItemModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PriceItemModel, $Out> {
  PriceItemModelCopyWith<$R, PriceItemModel, $Out> get $asPriceItemModel =>
      $base.as((v, t, t2) => _PriceItemModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PriceItemModelCopyWith<$R, $In extends PriceItemModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? price,
      int? quantity,
      String? productType,
      bool? isSubscription});
  PriceItemModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PriceItemModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PriceItemModel, $Out>
    implements PriceItemModelCopyWith<$R, PriceItemModel, $Out> {
  _PriceItemModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PriceItemModel> $mapper =
      PriceItemModelMapper.ensureInitialized();
  @override
  $R call(
          {String? price,
          int? quantity,
          String? productType,
          bool? isSubscription}) =>
      $apply(FieldCopyWithData({
        if (price != null) #price: price,
        if (quantity != null) #quantity: quantity,
        if (productType != null) #productType: productType,
        if (isSubscription != null) #isSubscription: isSubscription
      }));
  @override
  PriceItemModel $make(CopyWithData data) => PriceItemModel(
      price: data.get(#price, or: $value.price),
      quantity: data.get(#quantity, or: $value.quantity),
      productType: data.get(#productType, or: $value.productType),
      isSubscription: data.get(#isSubscription, or: $value.isSubscription));

  @override
  PriceItemModelCopyWith<$R2, PriceItemModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PriceItemModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
