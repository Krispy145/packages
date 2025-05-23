import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/typedefs.dart";

part "session_setup_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class SessionSetupModel with SessionSetupModelMappable {
  final UUID sessionId;
  final String url;

  const SessionSetupModel({
    required this.sessionId,
    required this.url,
  });

  static const fromMap = SessionSetupModelMapper.fromMap;
  static const fromJson = SessionSetupModelMapper.fromJson;
}
