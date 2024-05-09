// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_query_model.dart';

class SearchQueryModelMapper extends ClassMapperBase<SearchQueryModel> {
  SearchQueryModelMapper._();

  static SearchQueryModelMapper? _instance;
  static SearchQueryModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchQueryModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SearchQueryModel';

  static String? _$searchTerm(SearchQueryModel v) => v.searchTerm;
  static const Field<SearchQueryModel, String> _f$searchTerm =
      Field('searchTerm', _$searchTerm, key: 'search_term', opt: true);

  @override
  final MappableFields<SearchQueryModel> fields = const {
    #searchTerm: _f$searchTerm,
  };

  static SearchQueryModel _instantiate(DecodingData data) {
    return SearchQueryModel(searchTerm: data.dec(_f$searchTerm));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchQueryModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchQueryModel>(map);
  }

  static SearchQueryModel fromJson(String json) {
    return ensureInitialized().decodeJson<SearchQueryModel>(json);
  }
}

mixin SearchQueryModelMappable {
  String toJson() {
    return SearchQueryModelMapper.ensureInitialized()
        .encodeJson<SearchQueryModel>(this as SearchQueryModel);
  }

  Map<String, dynamic> toMap() {
    return SearchQueryModelMapper.ensureInitialized()
        .encodeMap<SearchQueryModel>(this as SearchQueryModel);
  }

  SearchQueryModelCopyWith<SearchQueryModel, SearchQueryModel, SearchQueryModel>
      get copyWith => _SearchQueryModelCopyWithImpl(
          this as SearchQueryModel, $identity, $identity);
  @override
  String toString() {
    return SearchQueryModelMapper.ensureInitialized()
        .stringifyValue(this as SearchQueryModel);
  }

  @override
  bool operator ==(Object other) {
    return SearchQueryModelMapper.ensureInitialized()
        .equalsValue(this as SearchQueryModel, other);
  }

  @override
  int get hashCode {
    return SearchQueryModelMapper.ensureInitialized()
        .hashValue(this as SearchQueryModel);
  }
}

extension SearchQueryModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchQueryModel, $Out> {
  SearchQueryModelCopyWith<$R, SearchQueryModel, $Out>
      get $asSearchQueryModel =>
          $base.as((v, t, t2) => _SearchQueryModelCopyWithImpl(v, t, t2));
}

abstract class SearchQueryModelCopyWith<$R, $In extends SearchQueryModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? searchTerm});
  SearchQueryModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchQueryModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchQueryModel, $Out>
    implements SearchQueryModelCopyWith<$R, SearchQueryModel, $Out> {
  _SearchQueryModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchQueryModel> $mapper =
      SearchQueryModelMapper.ensureInitialized();
  @override
  $R call({Object? searchTerm = $none}) => $apply(
      FieldCopyWithData({if (searchTerm != $none) #searchTerm: searchTerm}));
  @override
  SearchQueryModel $make(CopyWithData data) => SearchQueryModel(
      searchTerm: data.get(#searchTerm, or: $value.searchTerm));

  @override
  SearchQueryModelCopyWith<$R2, SearchQueryModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchQueryModelCopyWithImpl($value, $cast, t);
}
