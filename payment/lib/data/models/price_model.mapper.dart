// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'price_model.dart';

class PriceModelMapper extends ClassMapperBase<PriceModel> {
  PriceModelMapper._();

  static PriceModelMapper? _instance;
  static PriceModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PriceModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PriceModel';

  static String _$id(PriceModel v) => v.id;
  static const Field<PriceModel, String> _f$id = Field('id', _$id);
  static String _$product(PriceModel v) => v.product;
  static const Field<PriceModel, String> _f$product =
      Field('product', _$product);
  static int _$unitAmount(PriceModel v) => v.unitAmount;
  static const Field<PriceModel, int> _f$unitAmount =
      Field('unitAmount', _$unitAmount);
  static String _$currency(PriceModel v) => v.currency;
  static const Field<PriceModel, String> _f$currency =
      Field('currency', _$currency);
  static bool _$active(PriceModel v) => v.active;
  static const Field<PriceModel, bool> _f$active =
      Field('active', _$active, opt: true, def: false);
  static String? _$description(PriceModel v) => v.description;
  static const Field<PriceModel, String> _f$description =
      Field('description', _$description, opt: true);
  static Map<String, String>? _$metadata(PriceModel v) => v.metadata;
  static const Field<PriceModel, Map<String, String>> _f$metadata =
      Field('metadata', _$metadata, opt: true);
  static bool _$recurring(PriceModel v) => v.recurring;
  static const Field<PriceModel, bool> _f$recurring =
      Field('recurring', _$recurring, opt: true, def: false);
  static String? _$interval(PriceModel v) => v.interval;
  static const Field<PriceModel, String> _f$interval =
      Field('interval', _$interval, opt: true);
  static int? _$intervalCount(PriceModel v) => v.intervalCount;
  static const Field<PriceModel, int> _f$intervalCount =
      Field('intervalCount', _$intervalCount, opt: true);
  static DateTime? _$created(PriceModel v) => v.created;
  static const Field<PriceModel, DateTime> _f$created =
      Field('created', _$created, opt: true);
  static DateTime? _$updated(PriceModel v) => v.updated;
  static const Field<PriceModel, DateTime> _f$updated =
      Field('updated', _$updated, opt: true);

  @override
  final MappableFields<PriceModel> fields = const {
    #id: _f$id,
    #product: _f$product,
    #unitAmount: _f$unitAmount,
    #currency: _f$currency,
    #active: _f$active,
    #description: _f$description,
    #metadata: _f$metadata,
    #recurring: _f$recurring,
    #interval: _f$interval,
    #intervalCount: _f$intervalCount,
    #created: _f$created,
    #updated: _f$updated,
  };

  static PriceModel _instantiate(DecodingData data) {
    return PriceModel(
        id: data.dec(_f$id),
        product: data.dec(_f$product),
        unitAmount: data.dec(_f$unitAmount),
        currency: data.dec(_f$currency),
        active: data.dec(_f$active),
        description: data.dec(_f$description),
        metadata: data.dec(_f$metadata),
        recurring: data.dec(_f$recurring),
        interval: data.dec(_f$interval),
        intervalCount: data.dec(_f$intervalCount),
        created: data.dec(_f$created),
        updated: data.dec(_f$updated));
  }

  @override
  final Function instantiate = _instantiate;

  static PriceModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PriceModel>(map);
  }

  static PriceModel fromJson(String json) {
    return ensureInitialized().decodeJson<PriceModel>(json);
  }
}

mixin PriceModelMappable {
  String toJson() {
    return PriceModelMapper.ensureInitialized()
        .encodeJson<PriceModel>(this as PriceModel);
  }

  Map<String, dynamic> toMap() {
    return PriceModelMapper.ensureInitialized()
        .encodeMap<PriceModel>(this as PriceModel);
  }

  PriceModelCopyWith<PriceModel, PriceModel, PriceModel> get copyWith =>
      _PriceModelCopyWithImpl<PriceModel, PriceModel>(
          this as PriceModel, $identity, $identity);
  @override
  String toString() {
    return PriceModelMapper.ensureInitialized()
        .stringifyValue(this as PriceModel);
  }

  @override
  bool operator ==(Object other) {
    return PriceModelMapper.ensureInitialized()
        .equalsValue(this as PriceModel, other);
  }

  @override
  int get hashCode {
    return PriceModelMapper.ensureInitialized().hashValue(this as PriceModel);
  }
}

extension PriceModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PriceModel, $Out> {
  PriceModelCopyWith<$R, PriceModel, $Out> get $asPriceModel =>
      $base.as((v, t, t2) => _PriceModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PriceModelCopyWith<$R, $In extends PriceModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get metadata;
  $R call(
      {String? id,
      String? product,
      int? unitAmount,
      String? currency,
      bool? active,
      String? description,
      Map<String, String>? metadata,
      bool? recurring,
      String? interval,
      int? intervalCount,
      DateTime? created,
      DateTime? updated});
  PriceModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PriceModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PriceModel, $Out>
    implements PriceModelCopyWith<$R, PriceModel, $Out> {
  _PriceModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PriceModel> $mapper =
      PriceModelMapper.ensureInitialized();
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
          String? product,
          int? unitAmount,
          String? currency,
          bool? active,
          Object? description = $none,
          Object? metadata = $none,
          bool? recurring,
          Object? interval = $none,
          Object? intervalCount = $none,
          Object? created = $none,
          Object? updated = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (product != null) #product: product,
        if (unitAmount != null) #unitAmount: unitAmount,
        if (currency != null) #currency: currency,
        if (active != null) #active: active,
        if (description != $none) #description: description,
        if (metadata != $none) #metadata: metadata,
        if (recurring != null) #recurring: recurring,
        if (interval != $none) #interval: interval,
        if (intervalCount != $none) #intervalCount: intervalCount,
        if (created != $none) #created: created,
        if (updated != $none) #updated: updated
      }));
  @override
  PriceModel $make(CopyWithData data) => PriceModel(
      id: data.get(#id, or: $value.id),
      product: data.get(#product, or: $value.product),
      unitAmount: data.get(#unitAmount, or: $value.unitAmount),
      currency: data.get(#currency, or: $value.currency),
      active: data.get(#active, or: $value.active),
      description: data.get(#description, or: $value.description),
      metadata: data.get(#metadata, or: $value.metadata),
      recurring: data.get(#recurring, or: $value.recurring),
      interval: data.get(#interval, or: $value.interval),
      intervalCount: data.get(#intervalCount, or: $value.intervalCount),
      created: data.get(#created, or: $value.created),
      updated: data.get(#updated, or: $value.updated));

  @override
  PriceModelCopyWith<$R2, PriceModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PriceModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
