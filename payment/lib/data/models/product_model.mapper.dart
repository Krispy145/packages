// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_model.dart';

class ProductModelMapper extends ClassMapperBase<ProductModel> {
  ProductModelMapper._();

  static ProductModelMapper? _instance;
  static ProductModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProductModel';

  static String _$id(ProductModel v) => v.id;
  static const Field<ProductModel, String> _f$id = Field('id', _$id);
  static String _$name(ProductModel v) => v.name;
  static const Field<ProductModel, String> _f$name = Field('name', _$name);
  static String? _$description(ProductModel v) => v.description;
  static const Field<ProductModel, String> _f$description =
      Field('description', _$description, opt: true);
  static bool _$active(ProductModel v) => v.active;
  static const Field<ProductModel, bool> _f$active =
      Field('active', _$active, opt: true, def: false);
  static Map<String, String>? _$metadata(ProductModel v) => v.metadata;
  static const Field<ProductModel, Map<String, String>> _f$metadata =
      Field('metadata', _$metadata, opt: true);
  static String? _$type(ProductModel v) => v.type;
  static const Field<ProductModel, String> _f$type =
      Field('type', _$type, opt: true);
  static DateTime? _$created(ProductModel v) => v.created;
  static const Field<ProductModel, DateTime> _f$created =
      Field('created', _$created, opt: true);
  static DateTime? _$updated(ProductModel v) => v.updated;
  static const Field<ProductModel, DateTime> _f$updated =
      Field('updated', _$updated, opt: true);

  @override
  final MappableFields<ProductModel> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #active: _f$active,
    #metadata: _f$metadata,
    #type: _f$type,
    #created: _f$created,
    #updated: _f$updated,
  };

  static ProductModel _instantiate(DecodingData data) {
    return ProductModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        active: data.dec(_f$active),
        metadata: data.dec(_f$metadata),
        type: data.dec(_f$type),
        created: data.dec(_f$created),
        updated: data.dec(_f$updated));
  }

  @override
  final Function instantiate = _instantiate;

  static ProductModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductModel>(map);
  }

  static ProductModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProductModel>(json);
  }
}

mixin ProductModelMappable {
  String toJson() {
    return ProductModelMapper.ensureInitialized()
        .encodeJson<ProductModel>(this as ProductModel);
  }

  Map<String, dynamic> toMap() {
    return ProductModelMapper.ensureInitialized()
        .encodeMap<ProductModel>(this as ProductModel);
  }

  ProductModelCopyWith<ProductModel, ProductModel, ProductModel> get copyWith =>
      _ProductModelCopyWithImpl<ProductModel, ProductModel>(
          this as ProductModel, $identity, $identity);
  @override
  String toString() {
    return ProductModelMapper.ensureInitialized()
        .stringifyValue(this as ProductModel);
  }

  @override
  bool operator ==(Object other) {
    return ProductModelMapper.ensureInitialized()
        .equalsValue(this as ProductModel, other);
  }

  @override
  int get hashCode {
    return ProductModelMapper.ensureInitialized()
        .hashValue(this as ProductModel);
  }
}

extension ProductModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductModel, $Out> {
  ProductModelCopyWith<$R, ProductModel, $Out> get $asProductModel =>
      $base.as((v, t, t2) => _ProductModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProductModelCopyWith<$R, $In extends ProductModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get metadata;
  $R call(
      {String? id,
      String? name,
      String? description,
      bool? active,
      Map<String, String>? metadata,
      String? type,
      DateTime? created,
      DateTime? updated});
  ProductModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductModel, $Out>
    implements ProductModelCopyWith<$R, ProductModel, $Out> {
  _ProductModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductModel> $mapper =
      ProductModelMapper.ensureInitialized();
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
          String? name,
          Object? description = $none,
          bool? active,
          Object? metadata = $none,
          Object? type = $none,
          Object? created = $none,
          Object? updated = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (active != null) #active: active,
        if (metadata != $none) #metadata: metadata,
        if (type != $none) #type: type,
        if (created != $none) #created: created,
        if (updated != $none) #updated: updated
      }));
  @override
  ProductModel $make(CopyWithData data) => ProductModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      active: data.get(#active, or: $value.active),
      metadata: data.get(#metadata, or: $value.metadata),
      type: data.get(#type, or: $value.type),
      created: data.get(#created, or: $value.created),
      updated: data.get(#updated, or: $value.updated));

  @override
  ProductModelCopyWith<$R2, ProductModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProductModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
