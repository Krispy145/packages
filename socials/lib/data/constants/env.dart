import "package:envied/envied.dart";

part "env.g.dart";

/// Dev Environment
@Envied(path: "lib/data/constants/.env", name: "InstagramConstants")
class InstagramEnviedConstants {
  /// appId
  @EnviedField(obfuscate: true)
  static String appId = _InstagramConstants.appId;

  /// appSecret
  @EnviedField(obfuscate: true)
  static String appSecret = _InstagramConstants.appSecret;
}
