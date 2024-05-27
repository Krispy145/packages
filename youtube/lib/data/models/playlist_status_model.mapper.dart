// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'playlist_status_model.dart';

class PlaylistStatusModelMapper extends ClassMapperBase<PlaylistStatusModel> {
  PlaylistStatusModelMapper._();

  static PlaylistStatusModelMapper? _instance;
  static PlaylistStatusModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaylistStatusModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlaylistStatusModel';

  static String? _$privacyStatus(PlaylistStatusModel v) => v.privacyStatus;
  static const Field<PlaylistStatusModel, String> _f$privacyStatus =
      Field('privacyStatus', _$privacyStatus, opt: true);

  @override
  final MappableFields<PlaylistStatusModel> fields = const {
    #privacyStatus: _f$privacyStatus,
  };

  static PlaylistStatusModel _instantiate(DecodingData data) {
    return PlaylistStatusModel(privacyStatus: data.dec(_f$privacyStatus));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaylistStatusModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaylistStatusModel>(map);
  }

  static PlaylistStatusModel fromJson(String json) {
    return ensureInitialized().decodeJson<PlaylistStatusModel>(json);
  }
}

mixin PlaylistStatusModelMappable {
  String toJson() {
    return PlaylistStatusModelMapper.ensureInitialized()
        .encodeJson<PlaylistStatusModel>(this as PlaylistStatusModel);
  }

  Map<String, dynamic> toMap() {
    return PlaylistStatusModelMapper.ensureInitialized()
        .encodeMap<PlaylistStatusModel>(this as PlaylistStatusModel);
  }

  PlaylistStatusModelCopyWith<PlaylistStatusModel, PlaylistStatusModel,
          PlaylistStatusModel>
      get copyWith => _PlaylistStatusModelCopyWithImpl(
          this as PlaylistStatusModel, $identity, $identity);
  @override
  String toString() {
    return PlaylistStatusModelMapper.ensureInitialized()
        .stringifyValue(this as PlaylistStatusModel);
  }

  @override
  bool operator ==(Object other) {
    return PlaylistStatusModelMapper.ensureInitialized()
        .equalsValue(this as PlaylistStatusModel, other);
  }

  @override
  int get hashCode {
    return PlaylistStatusModelMapper.ensureInitialized()
        .hashValue(this as PlaylistStatusModel);
  }
}

extension PlaylistStatusModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaylistStatusModel, $Out> {
  PlaylistStatusModelCopyWith<$R, PlaylistStatusModel, $Out>
      get $asPlaylistStatusModel =>
          $base.as((v, t, t2) => _PlaylistStatusModelCopyWithImpl(v, t, t2));
}

abstract class PlaylistStatusModelCopyWith<$R, $In extends PlaylistStatusModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? privacyStatus});
  PlaylistStatusModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaylistStatusModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaylistStatusModel, $Out>
    implements PlaylistStatusModelCopyWith<$R, PlaylistStatusModel, $Out> {
  _PlaylistStatusModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaylistStatusModel> $mapper =
      PlaylistStatusModelMapper.ensureInitialized();
  @override
  $R call({Object? privacyStatus = $none}) => $apply(FieldCopyWithData(
      {if (privacyStatus != $none) #privacyStatus: privacyStatus}));
  @override
  PlaylistStatusModel $make(CopyWithData data) => PlaylistStatusModel(
      privacyStatus: data.get(#privacyStatus, or: $value.privacyStatus));

  @override
  PlaylistStatusModelCopyWith<$R2, PlaylistStatusModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlaylistStatusModelCopyWithImpl($value, $cast, t);
}
