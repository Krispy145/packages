// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'player_model.dart';

class PlayerModelMapper extends ClassMapperBase<PlayerModel> {
  PlayerModelMapper._();

  static PlayerModelMapper? _instance;
  static PlayerModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerModel';

  static String _$embedHtml(PlayerModel v) => v.embedHtml;
  static const Field<PlayerModel, String> _f$embedHtml =
      Field('embedHtml', _$embedHtml, key: 'embed_html');
  static int? _$embedHeight(PlayerModel v) => v.embedHeight;
  static const Field<PlayerModel, int> _f$embedHeight =
      Field('embedHeight', _$embedHeight, key: 'embed_height', opt: true);
  static int? _$embedWidth(PlayerModel v) => v.embedWidth;
  static const Field<PlayerModel, int> _f$embedWidth =
      Field('embedWidth', _$embedWidth, key: 'embed_width', opt: true);

  @override
  final MappableFields<PlayerModel> fields = const {
    #embedHtml: _f$embedHtml,
    #embedHeight: _f$embedHeight,
    #embedWidth: _f$embedWidth,
  };

  static PlayerModel _instantiate(DecodingData data) {
    return PlayerModel(
        embedHtml: data.dec(_f$embedHtml),
        embedHeight: data.dec(_f$embedHeight),
        embedWidth: data.dec(_f$embedWidth));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerModel>(map);
  }

  static PlayerModel fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerModel>(json);
  }
}

mixin PlayerModelMappable {
  String toJson() {
    return PlayerModelMapper.ensureInitialized()
        .encodeJson<PlayerModel>(this as PlayerModel);
  }

  Map<String, dynamic> toMap() {
    return PlayerModelMapper.ensureInitialized()
        .encodeMap<PlayerModel>(this as PlayerModel);
  }

  PlayerModelCopyWith<PlayerModel, PlayerModel, PlayerModel> get copyWith =>
      _PlayerModelCopyWithImpl(this as PlayerModel, $identity, $identity);
  @override
  String toString() {
    return PlayerModelMapper.ensureInitialized()
        .stringifyValue(this as PlayerModel);
  }

  @override
  bool operator ==(Object other) {
    return PlayerModelMapper.ensureInitialized()
        .equalsValue(this as PlayerModel, other);
  }

  @override
  int get hashCode {
    return PlayerModelMapper.ensureInitialized().hashValue(this as PlayerModel);
  }
}

extension PlayerModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayerModel, $Out> {
  PlayerModelCopyWith<$R, PlayerModel, $Out> get $asPlayerModel =>
      $base.as((v, t, t2) => _PlayerModelCopyWithImpl(v, t, t2));
}

abstract class PlayerModelCopyWith<$R, $In extends PlayerModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? embedHtml, int? embedHeight, int? embedWidth});
  PlayerModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayerModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerModel, $Out>
    implements PlayerModelCopyWith<$R, PlayerModel, $Out> {
  _PlayerModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerModel> $mapper =
      PlayerModelMapper.ensureInitialized();
  @override
  $R call(
          {String? embedHtml,
          Object? embedHeight = $none,
          Object? embedWidth = $none}) =>
      $apply(FieldCopyWithData({
        if (embedHtml != null) #embedHtml: embedHtml,
        if (embedHeight != $none) #embedHeight: embedHeight,
        if (embedWidth != $none) #embedWidth: embedWidth
      }));
  @override
  PlayerModel $make(CopyWithData data) => PlayerModel(
      embedHtml: data.get(#embedHtml, or: $value.embedHtml),
      embedHeight: data.get(#embedHeight, or: $value.embedHeight),
      embedWidth: data.get(#embedWidth, or: $value.embedWidth));

  @override
  PlayerModelCopyWith<$R2, PlayerModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerModelCopyWithImpl($value, $cast, t);
}
