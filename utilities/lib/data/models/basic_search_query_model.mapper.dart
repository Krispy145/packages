// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'basic_search_query_model.dart';

class BasicSearchQueryModelMapper
    extends ClassMapperBase<BasicSearchQueryModel> {
  BasicSearchQueryModelMapper._();

  static BasicSearchQueryModelMapper? _instance;
  static BasicSearchQueryModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BasicSearchQueryModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BasicSearchQueryModel';

  static String _$searchTerm(BasicSearchQueryModel v) => v.searchTerm;
  static const Field<BasicSearchQueryModel, String> _f$searchTerm =
      Field('searchTerm', _$searchTerm, key: 'search_term');

  @override
  final MappableFields<BasicSearchQueryModel> fields = const {
    #searchTerm: _f$searchTerm,
  };

  static BasicSearchQueryModel _instantiate(DecodingData data) {
    return BasicSearchQueryModel(searchTerm: data.dec(_f$searchTerm));
  }

  @override
  final Function instantiate = _instantiate;

  static BasicSearchQueryModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BasicSearchQueryModel>(map);
  }

  static BasicSearchQueryModel fromJson(String json) {
    return ensureInitialized().decodeJson<BasicSearchQueryModel>(json);
  }
}

mixin BasicSearchQueryModelMappable {
  String toJson() {
    return BasicSearchQueryModelMapper.ensureInitialized()
        .encodeJson<BasicSearchQueryModel>(this as BasicSearchQueryModel);
  }

  Map<String, dynamic> toMap() {
    return BasicSearchQueryModelMapper.ensureInitialized()
        .encodeMap<BasicSearchQueryModel>(this as BasicSearchQueryModel);
  }

  BasicSearchQueryModelCopyWith<BasicSearchQueryModel, BasicSearchQueryModel,
          BasicSearchQueryModel>
      get copyWith => _BasicSearchQueryModelCopyWithImpl(
          this as BasicSearchQueryModel, $identity, $identity);
  @override
  String toString() {
    return BasicSearchQueryModelMapper.ensureInitialized()
        .stringifyValue(this as BasicSearchQueryModel);
  }

  @override
  bool operator ==(Object other) {
    return BasicSearchQueryModelMapper.ensureInitialized()
        .equalsValue(this as BasicSearchQueryModel, other);
  }

  @override
  int get hashCode {
    return BasicSearchQueryModelMapper.ensureInitialized()
        .hashValue(this as BasicSearchQueryModel);
  }
}

extension BasicSearchQueryModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BasicSearchQueryModel, $Out> {
  BasicSearchQueryModelCopyWith<$R, BasicSearchQueryModel, $Out>
      get $asBasicSearchQueryModel =>
          $base.as((v, t, t2) => _BasicSearchQueryModelCopyWithImpl(v, t, t2));
}

abstract class BasicSearchQueryModelCopyWith<
    $R,
    $In extends BasicSearchQueryModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? searchTerm});
  BasicSearchQueryModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BasicSearchQueryModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BasicSearchQueryModel, $Out>
    implements BasicSearchQueryModelCopyWith<$R, BasicSearchQueryModel, $Out> {
  _BasicSearchQueryModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BasicSearchQueryModel> $mapper =
      BasicSearchQueryModelMapper.ensureInitialized();
  @override
  $R call({String? searchTerm}) => $apply(
      FieldCopyWithData({if (searchTerm != null) #searchTerm: searchTerm}));
  @override
  BasicSearchQueryModel $make(CopyWithData data) => BasicSearchQueryModel(
      searchTerm: data.get(#searchTerm, or: $value.searchTerm));

  @override
  BasicSearchQueryModelCopyWith<$R2, BasicSearchQueryModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _BasicSearchQueryModelCopyWithImpl($value, $cast, t);
}
