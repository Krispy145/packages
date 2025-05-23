// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'session_setup_model.dart';

class SessionSetupModelMapper extends ClassMapperBase<SessionSetupModel> {
  SessionSetupModelMapper._();

  static SessionSetupModelMapper? _instance;
  static SessionSetupModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SessionSetupModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SessionSetupModel';

  static String _$sessionId(SessionSetupModel v) => v.sessionId;
  static const Field<SessionSetupModel, String> _f$sessionId =
      Field('sessionId', _$sessionId);
  static String _$url(SessionSetupModel v) => v.url;
  static const Field<SessionSetupModel, String> _f$url = Field('url', _$url);

  @override
  final MappableFields<SessionSetupModel> fields = const {
    #sessionId: _f$sessionId,
    #url: _f$url,
  };

  static SessionSetupModel _instantiate(DecodingData data) {
    return SessionSetupModel(
        sessionId: data.dec(_f$sessionId), url: data.dec(_f$url));
  }

  @override
  final Function instantiate = _instantiate;

  static SessionSetupModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SessionSetupModel>(map);
  }

  static SessionSetupModel fromJson(String json) {
    return ensureInitialized().decodeJson<SessionSetupModel>(json);
  }
}

mixin SessionSetupModelMappable {
  String toJson() {
    return SessionSetupModelMapper.ensureInitialized()
        .encodeJson<SessionSetupModel>(this as SessionSetupModel);
  }

  Map<String, dynamic> toMap() {
    return SessionSetupModelMapper.ensureInitialized()
        .encodeMap<SessionSetupModel>(this as SessionSetupModel);
  }

  SessionSetupModelCopyWith<SessionSetupModel, SessionSetupModel,
          SessionSetupModel>
      get copyWith =>
          _SessionSetupModelCopyWithImpl<SessionSetupModel, SessionSetupModel>(
              this as SessionSetupModel, $identity, $identity);
  @override
  String toString() {
    return SessionSetupModelMapper.ensureInitialized()
        .stringifyValue(this as SessionSetupModel);
  }

  @override
  bool operator ==(Object other) {
    return SessionSetupModelMapper.ensureInitialized()
        .equalsValue(this as SessionSetupModel, other);
  }

  @override
  int get hashCode {
    return SessionSetupModelMapper.ensureInitialized()
        .hashValue(this as SessionSetupModel);
  }
}

extension SessionSetupModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SessionSetupModel, $Out> {
  SessionSetupModelCopyWith<$R, SessionSetupModel, $Out>
      get $asSessionSetupModel => $base
          .as((v, t, t2) => _SessionSetupModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SessionSetupModelCopyWith<$R, $In extends SessionSetupModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? sessionId, String? url});
  SessionSetupModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SessionSetupModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SessionSetupModel, $Out>
    implements SessionSetupModelCopyWith<$R, SessionSetupModel, $Out> {
  _SessionSetupModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SessionSetupModel> $mapper =
      SessionSetupModelMapper.ensureInitialized();
  @override
  $R call({String? sessionId, String? url}) => $apply(FieldCopyWithData({
        if (sessionId != null) #sessionId: sessionId,
        if (url != null) #url: url
      }));
  @override
  SessionSetupModel $make(CopyWithData data) => SessionSetupModel(
      sessionId: data.get(#sessionId, or: $value.sessionId),
      url: data.get(#url, or: $value.url));

  @override
  SessionSetupModelCopyWith<$R2, SessionSetupModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SessionSetupModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
