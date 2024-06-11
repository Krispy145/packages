import "package:envied/envied.dart";

part "env.g.dart";

/// Map Constants
@Envied(path: "lib/constants/.env", name: "DigitalOasis")
class DigitalOasis {
  /// website
  @EnviedField(obfuscate: true)
  static String website = _DigitalOasis.website;
}
