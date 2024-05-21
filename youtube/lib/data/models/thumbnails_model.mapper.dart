// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'thumbnails_model.dart';

class ThumbnailsModelMapper extends ClassMapperBase<ThumbnailsModel> {
  ThumbnailsModelMapper._();

  static ThumbnailsModelMapper? _instance;
  static ThumbnailsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThumbnailsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ThumbnailsModel';

  static String _$url(ThumbnailsModel v) => v.url;
  static const Field<ThumbnailsModel, String> _f$url = Field('url', _$url);
  static int _$width(ThumbnailsModel v) => v.width;
  static const Field<ThumbnailsModel, int> _f$width = Field('width', _$width);
  static int _$height(ThumbnailsModel v) => v.height;
  static const Field<ThumbnailsModel, int> _f$height =
      Field('height', _$height);

  @override
  final MappableFields<ThumbnailsModel> fields = const {
    #url: _f$url,
    #width: _f$width,
    #height: _f$height,
  };

  static ThumbnailsModel _instantiate(DecodingData data) {
    return ThumbnailsModel(
        url: data.dec(_f$url),
        width: data.dec(_f$width),
        height: data.dec(_f$height));
  }

  @override
  final Function instantiate = _instantiate;

  static ThumbnailsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThumbnailsModel>(map);
  }

  static ThumbnailsModel fromJson(String json) {
    return ensureInitialized().decodeJson<ThumbnailsModel>(json);
  }
}

mixin ThumbnailsModelMappable {
  String toJson() {
    return ThumbnailsModelMapper.ensureInitialized()
        .encodeJson<ThumbnailsModel>(this as ThumbnailsModel);
  }

  Map<String, dynamic> toMap() {
    return ThumbnailsModelMapper.ensureInitialized()
        .encodeMap<ThumbnailsModel>(this as ThumbnailsModel);
  }

  ThumbnailsModelCopyWith<ThumbnailsModel, ThumbnailsModel, ThumbnailsModel>
      get copyWith => _ThumbnailsModelCopyWithImpl(
          this as ThumbnailsModel, $identity, $identity);
  @override
  String toString() {
    return ThumbnailsModelMapper.ensureInitialized()
        .stringifyValue(this as ThumbnailsModel);
  }

  @override
  bool operator ==(Object other) {
    return ThumbnailsModelMapper.ensureInitialized()
        .equalsValue(this as ThumbnailsModel, other);
  }

  @override
  int get hashCode {
    return ThumbnailsModelMapper.ensureInitialized()
        .hashValue(this as ThumbnailsModel);
  }
}

extension ThumbnailsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThumbnailsModel, $Out> {
  ThumbnailsModelCopyWith<$R, ThumbnailsModel, $Out> get $asThumbnailsModel =>
      $base.as((v, t, t2) => _ThumbnailsModelCopyWithImpl(v, t, t2));
}

abstract class ThumbnailsModelCopyWith<$R, $In extends ThumbnailsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url, int? width, int? height});
  ThumbnailsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ThumbnailsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThumbnailsModel, $Out>
    implements ThumbnailsModelCopyWith<$R, ThumbnailsModel, $Out> {
  _ThumbnailsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThumbnailsModel> $mapper =
      ThumbnailsModelMapper.ensureInitialized();
  @override
  $R call({String? url, int? width, int? height}) => $apply(FieldCopyWithData({
        if (url != null) #url: url,
        if (width != null) #width: width,
        if (height != null) #height: height
      }));
  @override
  ThumbnailsModel $make(CopyWithData data) => ThumbnailsModel(
      url: data.get(#url, or: $value.url),
      width: data.get(#width, or: $value.width),
      height: data.get(#height, or: $value.height));

  @override
  ThumbnailsModelCopyWith<$R2, ThumbnailsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ThumbnailsModelCopyWithImpl($value, $cast, t);
}
