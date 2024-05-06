// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'media_ids_response.dart';

class InstagramMediaIdsResponseMapper
    extends ClassMapperBase<InstagramMediaIdsResponse> {
  InstagramMediaIdsResponseMapper._();

  static InstagramMediaIdsResponseMapper? _instance;
  static InstagramMediaIdsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = InstagramMediaIdsResponseMapper._());
      InstagramMediaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InstagramMediaIdsResponse';

  static String _$id(InstagramMediaIdsResponse v) => v.id;
  static const Field<InstagramMediaIdsResponse, String> _f$id =
      Field('id', _$id);
  static InstagramMedia? _$media(InstagramMediaIdsResponse v) => v.media;
  static const Field<InstagramMediaIdsResponse, InstagramMedia> _f$media =
      Field('media', _$media, opt: true);

  @override
  final MappableFields<InstagramMediaIdsResponse> fields = const {
    #id: _f$id,
    #media: _f$media,
  };

  static InstagramMediaIdsResponse _instantiate(DecodingData data) {
    return InstagramMediaIdsResponse(
        id: data.dec(_f$id), media: data.dec(_f$media));
  }

  @override
  final Function instantiate = _instantiate;

  static InstagramMediaIdsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InstagramMediaIdsResponse>(map);
  }

  static InstagramMediaIdsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<InstagramMediaIdsResponse>(json);
  }
}

mixin InstagramMediaIdsResponseMappable {
  String toJson() {
    return InstagramMediaIdsResponseMapper.ensureInitialized()
        .encodeJson<InstagramMediaIdsResponse>(
            this as InstagramMediaIdsResponse);
  }

  Map<String, dynamic> toMap() {
    return InstagramMediaIdsResponseMapper.ensureInitialized()
        .encodeMap<InstagramMediaIdsResponse>(
            this as InstagramMediaIdsResponse);
  }

  InstagramMediaIdsResponseCopyWith<InstagramMediaIdsResponse,
          InstagramMediaIdsResponse, InstagramMediaIdsResponse>
      get copyWith => _InstagramMediaIdsResponseCopyWithImpl(
          this as InstagramMediaIdsResponse, $identity, $identity);
  @override
  String toString() {
    return InstagramMediaIdsResponseMapper.ensureInitialized()
        .stringifyValue(this as InstagramMediaIdsResponse);
  }

  @override
  bool operator ==(Object other) {
    return InstagramMediaIdsResponseMapper.ensureInitialized()
        .equalsValue(this as InstagramMediaIdsResponse, other);
  }

  @override
  int get hashCode {
    return InstagramMediaIdsResponseMapper.ensureInitialized()
        .hashValue(this as InstagramMediaIdsResponse);
  }
}

extension InstagramMediaIdsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InstagramMediaIdsResponse, $Out> {
  InstagramMediaIdsResponseCopyWith<$R, InstagramMediaIdsResponse, $Out>
      get $asInstagramMediaIdsResponse => $base
          .as((v, t, t2) => _InstagramMediaIdsResponseCopyWithImpl(v, t, t2));
}

abstract class InstagramMediaIdsResponseCopyWith<
    $R,
    $In extends InstagramMediaIdsResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  InstagramMediaCopyWith<$R, InstagramMedia, InstagramMedia>? get media;
  $R call({String? id, InstagramMedia? media});
  InstagramMediaIdsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InstagramMediaIdsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InstagramMediaIdsResponse, $Out>
    implements
        InstagramMediaIdsResponseCopyWith<$R, InstagramMediaIdsResponse, $Out> {
  _InstagramMediaIdsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InstagramMediaIdsResponse> $mapper =
      InstagramMediaIdsResponseMapper.ensureInitialized();
  @override
  InstagramMediaCopyWith<$R, InstagramMedia, InstagramMedia>? get media =>
      $value.media?.copyWith.$chain((v) => call(media: v));
  @override
  $R call({String? id, Object? media = $none}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (media != $none) #media: media}));
  @override
  InstagramMediaIdsResponse $make(CopyWithData data) =>
      InstagramMediaIdsResponse(
          id: data.get(#id, or: $value.id),
          media: data.get(#media, or: $value.media));

  @override
  InstagramMediaIdsResponseCopyWith<$R2, InstagramMediaIdsResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _InstagramMediaIdsResponseCopyWithImpl($value, $cast, t);
}

class InstagramMediaMapper extends ClassMapperBase<InstagramMedia> {
  InstagramMediaMapper._();

  static InstagramMediaMapper? _instance;
  static InstagramMediaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InstagramMediaMapper._());
      InstagramMediaIdModelMapper.ensureInitialized();
      InstagramPagingModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InstagramMedia';

  static List<InstagramMediaIdModel> _$data(InstagramMedia v) => v.data;
  static const Field<InstagramMedia, List<InstagramMediaIdModel>> _f$data =
      Field('data', _$data);
  static InstagramPagingModel _$paging(InstagramMedia v) => v.paging;
  static const Field<InstagramMedia, InstagramPagingModel> _f$paging =
      Field('paging', _$paging);

  @override
  final MappableFields<InstagramMedia> fields = const {
    #data: _f$data,
    #paging: _f$paging,
  };

  static InstagramMedia _instantiate(DecodingData data) {
    return InstagramMedia(data: data.dec(_f$data), paging: data.dec(_f$paging));
  }

  @override
  final Function instantiate = _instantiate;

  static InstagramMedia fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InstagramMedia>(map);
  }

  static InstagramMedia fromJson(String json) {
    return ensureInitialized().decodeJson<InstagramMedia>(json);
  }
}

mixin InstagramMediaMappable {
  String toJson() {
    return InstagramMediaMapper.ensureInitialized()
        .encodeJson<InstagramMedia>(this as InstagramMedia);
  }

  Map<String, dynamic> toMap() {
    return InstagramMediaMapper.ensureInitialized()
        .encodeMap<InstagramMedia>(this as InstagramMedia);
  }

  InstagramMediaCopyWith<InstagramMedia, InstagramMedia, InstagramMedia>
      get copyWith => _InstagramMediaCopyWithImpl(
          this as InstagramMedia, $identity, $identity);
  @override
  String toString() {
    return InstagramMediaMapper.ensureInitialized()
        .stringifyValue(this as InstagramMedia);
  }

  @override
  bool operator ==(Object other) {
    return InstagramMediaMapper.ensureInitialized()
        .equalsValue(this as InstagramMedia, other);
  }

  @override
  int get hashCode {
    return InstagramMediaMapper.ensureInitialized()
        .hashValue(this as InstagramMedia);
  }
}

extension InstagramMediaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InstagramMedia, $Out> {
  InstagramMediaCopyWith<$R, InstagramMedia, $Out> get $asInstagramMedia =>
      $base.as((v, t, t2) => _InstagramMediaCopyWithImpl(v, t, t2));
}

abstract class InstagramMediaCopyWith<$R, $In extends InstagramMedia, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      InstagramMediaIdModel,
      InstagramMediaIdModelCopyWith<$R, InstagramMediaIdModel,
          InstagramMediaIdModel>> get data;
  InstagramPagingModelCopyWith<$R, InstagramPagingModel, InstagramPagingModel>
      get paging;
  $R call({List<InstagramMediaIdModel>? data, InstagramPagingModel? paging});
  InstagramMediaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InstagramMediaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InstagramMedia, $Out>
    implements InstagramMediaCopyWith<$R, InstagramMedia, $Out> {
  _InstagramMediaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InstagramMedia> $mapper =
      InstagramMediaMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      InstagramMediaIdModel,
      InstagramMediaIdModelCopyWith<$R, InstagramMediaIdModel,
          InstagramMediaIdModel>> get data => ListCopyWith(
      $value.data, (v, t) => v.copyWith.$chain(t), (v) => call(data: v));
  @override
  InstagramPagingModelCopyWith<$R, InstagramPagingModel, InstagramPagingModel>
      get paging => $value.paging.copyWith.$chain((v) => call(paging: v));
  @override
  $R call({List<InstagramMediaIdModel>? data, InstagramPagingModel? paging}) =>
      $apply(FieldCopyWithData({
        if (data != null) #data: data,
        if (paging != null) #paging: paging
      }));
  @override
  InstagramMedia $make(CopyWithData data) => InstagramMedia(
      data: data.get(#data, or: $value.data),
      paging: data.get(#paging, or: $value.paging));

  @override
  InstagramMediaCopyWith<$R2, InstagramMedia, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InstagramMediaCopyWithImpl($value, $cast, t);
}

class InstagramMediaIdModelMapper
    extends ClassMapperBase<InstagramMediaIdModel> {
  InstagramMediaIdModelMapper._();

  static InstagramMediaIdModelMapper? _instance;
  static InstagramMediaIdModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InstagramMediaIdModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'InstagramMediaIdModel';

  static String _$id(InstagramMediaIdModel v) => v.id;
  static const Field<InstagramMediaIdModel, String> _f$id = Field('id', _$id);

  @override
  final MappableFields<InstagramMediaIdModel> fields = const {
    #id: _f$id,
  };

  static InstagramMediaIdModel _instantiate(DecodingData data) {
    return InstagramMediaIdModel(id: data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static InstagramMediaIdModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InstagramMediaIdModel>(map);
  }

  static InstagramMediaIdModel fromJson(String json) {
    return ensureInitialized().decodeJson<InstagramMediaIdModel>(json);
  }
}

mixin InstagramMediaIdModelMappable {
  String toJson() {
    return InstagramMediaIdModelMapper.ensureInitialized()
        .encodeJson<InstagramMediaIdModel>(this as InstagramMediaIdModel);
  }

  Map<String, dynamic> toMap() {
    return InstagramMediaIdModelMapper.ensureInitialized()
        .encodeMap<InstagramMediaIdModel>(this as InstagramMediaIdModel);
  }

  InstagramMediaIdModelCopyWith<InstagramMediaIdModel, InstagramMediaIdModel,
          InstagramMediaIdModel>
      get copyWith => _InstagramMediaIdModelCopyWithImpl(
          this as InstagramMediaIdModel, $identity, $identity);
  @override
  String toString() {
    return InstagramMediaIdModelMapper.ensureInitialized()
        .stringifyValue(this as InstagramMediaIdModel);
  }

  @override
  bool operator ==(Object other) {
    return InstagramMediaIdModelMapper.ensureInitialized()
        .equalsValue(this as InstagramMediaIdModel, other);
  }

  @override
  int get hashCode {
    return InstagramMediaIdModelMapper.ensureInitialized()
        .hashValue(this as InstagramMediaIdModel);
  }
}

extension InstagramMediaIdModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InstagramMediaIdModel, $Out> {
  InstagramMediaIdModelCopyWith<$R, InstagramMediaIdModel, $Out>
      get $asInstagramMediaIdModel =>
          $base.as((v, t, t2) => _InstagramMediaIdModelCopyWithImpl(v, t, t2));
}

abstract class InstagramMediaIdModelCopyWith<
    $R,
    $In extends InstagramMediaIdModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id});
  InstagramMediaIdModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InstagramMediaIdModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InstagramMediaIdModel, $Out>
    implements InstagramMediaIdModelCopyWith<$R, InstagramMediaIdModel, $Out> {
  _InstagramMediaIdModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InstagramMediaIdModel> $mapper =
      InstagramMediaIdModelMapper.ensureInitialized();
  @override
  $R call({String? id}) => $apply(FieldCopyWithData({if (id != null) #id: id}));
  @override
  InstagramMediaIdModel $make(CopyWithData data) =>
      InstagramMediaIdModel(id: data.get(#id, or: $value.id));

  @override
  InstagramMediaIdModelCopyWith<$R2, InstagramMediaIdModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _InstagramMediaIdModelCopyWithImpl($value, $cast, t);
}

class InstagramPagingModelMapper extends ClassMapperBase<InstagramPagingModel> {
  InstagramPagingModelMapper._();

  static InstagramPagingModelMapper? _instance;
  static InstagramPagingModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InstagramPagingModelMapper._());
      InstagramCursorsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InstagramPagingModel';

  static InstagramCursorsModel _$cursors(InstagramPagingModel v) => v.cursors;
  static const Field<InstagramPagingModel, InstagramCursorsModel> _f$cursors =
      Field('cursors', _$cursors);
  static String _$next(InstagramPagingModel v) => v.next;
  static const Field<InstagramPagingModel, String> _f$next =
      Field('next', _$next);

  @override
  final MappableFields<InstagramPagingModel> fields = const {
    #cursors: _f$cursors,
    #next: _f$next,
  };

  static InstagramPagingModel _instantiate(DecodingData data) {
    return InstagramPagingModel(
        cursors: data.dec(_f$cursors), next: data.dec(_f$next));
  }

  @override
  final Function instantiate = _instantiate;

  static InstagramPagingModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InstagramPagingModel>(map);
  }

  static InstagramPagingModel fromJson(String json) {
    return ensureInitialized().decodeJson<InstagramPagingModel>(json);
  }
}

mixin InstagramPagingModelMappable {
  String toJson() {
    return InstagramPagingModelMapper.ensureInitialized()
        .encodeJson<InstagramPagingModel>(this as InstagramPagingModel);
  }

  Map<String, dynamic> toMap() {
    return InstagramPagingModelMapper.ensureInitialized()
        .encodeMap<InstagramPagingModel>(this as InstagramPagingModel);
  }

  InstagramPagingModelCopyWith<InstagramPagingModel, InstagramPagingModel,
          InstagramPagingModel>
      get copyWith => _InstagramPagingModelCopyWithImpl(
          this as InstagramPagingModel, $identity, $identity);
  @override
  String toString() {
    return InstagramPagingModelMapper.ensureInitialized()
        .stringifyValue(this as InstagramPagingModel);
  }

  @override
  bool operator ==(Object other) {
    return InstagramPagingModelMapper.ensureInitialized()
        .equalsValue(this as InstagramPagingModel, other);
  }

  @override
  int get hashCode {
    return InstagramPagingModelMapper.ensureInitialized()
        .hashValue(this as InstagramPagingModel);
  }
}

extension InstagramPagingModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InstagramPagingModel, $Out> {
  InstagramPagingModelCopyWith<$R, InstagramPagingModel, $Out>
      get $asInstagramPagingModel =>
          $base.as((v, t, t2) => _InstagramPagingModelCopyWithImpl(v, t, t2));
}

abstract class InstagramPagingModelCopyWith<
    $R,
    $In extends InstagramPagingModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  InstagramCursorsModelCopyWith<$R, InstagramCursorsModel,
      InstagramCursorsModel> get cursors;
  $R call({InstagramCursorsModel? cursors, String? next});
  InstagramPagingModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InstagramPagingModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InstagramPagingModel, $Out>
    implements InstagramPagingModelCopyWith<$R, InstagramPagingModel, $Out> {
  _InstagramPagingModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InstagramPagingModel> $mapper =
      InstagramPagingModelMapper.ensureInitialized();
  @override
  InstagramCursorsModelCopyWith<$R, InstagramCursorsModel,
          InstagramCursorsModel>
      get cursors => $value.cursors.copyWith.$chain((v) => call(cursors: v));
  @override
  $R call({InstagramCursorsModel? cursors, String? next}) =>
      $apply(FieldCopyWithData({
        if (cursors != null) #cursors: cursors,
        if (next != null) #next: next
      }));
  @override
  InstagramPagingModel $make(CopyWithData data) => InstagramPagingModel(
      cursors: data.get(#cursors, or: $value.cursors),
      next: data.get(#next, or: $value.next));

  @override
  InstagramPagingModelCopyWith<$R2, InstagramPagingModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _InstagramPagingModelCopyWithImpl($value, $cast, t);
}

class InstagramCursorsModelMapper
    extends ClassMapperBase<InstagramCursorsModel> {
  InstagramCursorsModelMapper._();

  static InstagramCursorsModelMapper? _instance;
  static InstagramCursorsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InstagramCursorsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'InstagramCursorsModel';

  static String _$before(InstagramCursorsModel v) => v.before;
  static const Field<InstagramCursorsModel, String> _f$before =
      Field('before', _$before);
  static String _$after(InstagramCursorsModel v) => v.after;
  static const Field<InstagramCursorsModel, String> _f$after =
      Field('after', _$after);

  @override
  final MappableFields<InstagramCursorsModel> fields = const {
    #before: _f$before,
    #after: _f$after,
  };

  static InstagramCursorsModel _instantiate(DecodingData data) {
    return InstagramCursorsModel(
        before: data.dec(_f$before), after: data.dec(_f$after));
  }

  @override
  final Function instantiate = _instantiate;

  static InstagramCursorsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InstagramCursorsModel>(map);
  }

  static InstagramCursorsModel fromJson(String json) {
    return ensureInitialized().decodeJson<InstagramCursorsModel>(json);
  }
}

mixin InstagramCursorsModelMappable {
  String toJson() {
    return InstagramCursorsModelMapper.ensureInitialized()
        .encodeJson<InstagramCursorsModel>(this as InstagramCursorsModel);
  }

  Map<String, dynamic> toMap() {
    return InstagramCursorsModelMapper.ensureInitialized()
        .encodeMap<InstagramCursorsModel>(this as InstagramCursorsModel);
  }

  InstagramCursorsModelCopyWith<InstagramCursorsModel, InstagramCursorsModel,
          InstagramCursorsModel>
      get copyWith => _InstagramCursorsModelCopyWithImpl(
          this as InstagramCursorsModel, $identity, $identity);
  @override
  String toString() {
    return InstagramCursorsModelMapper.ensureInitialized()
        .stringifyValue(this as InstagramCursorsModel);
  }

  @override
  bool operator ==(Object other) {
    return InstagramCursorsModelMapper.ensureInitialized()
        .equalsValue(this as InstagramCursorsModel, other);
  }

  @override
  int get hashCode {
    return InstagramCursorsModelMapper.ensureInitialized()
        .hashValue(this as InstagramCursorsModel);
  }
}

extension InstagramCursorsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InstagramCursorsModel, $Out> {
  InstagramCursorsModelCopyWith<$R, InstagramCursorsModel, $Out>
      get $asInstagramCursorsModel =>
          $base.as((v, t, t2) => _InstagramCursorsModelCopyWithImpl(v, t, t2));
}

abstract class InstagramCursorsModelCopyWith<
    $R,
    $In extends InstagramCursorsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? before, String? after});
  InstagramCursorsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InstagramCursorsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InstagramCursorsModel, $Out>
    implements InstagramCursorsModelCopyWith<$R, InstagramCursorsModel, $Out> {
  _InstagramCursorsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InstagramCursorsModel> $mapper =
      InstagramCursorsModelMapper.ensureInitialized();
  @override
  $R call({String? before, String? after}) => $apply(FieldCopyWithData(
      {if (before != null) #before: before, if (after != null) #after: after}));
  @override
  InstagramCursorsModel $make(CopyWithData data) => InstagramCursorsModel(
      before: data.get(#before, or: $value.before),
      after: data.get(#after, or: $value.after));

  @override
  InstagramCursorsModelCopyWith<$R2, InstagramCursorsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _InstagramCursorsModelCopyWithImpl($value, $cast, t);
}
