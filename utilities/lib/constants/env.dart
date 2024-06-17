import "package:envied/envied.dart";

part "env.g.dart";

/// Map Constants
@Envied(path: "lib/constants/.env", name: "DigitalOasis")
class DigitalOasis {
  /// website
  @EnviedField(obfuscate: true)
  static String website = _DigitalOasis.website;

  @EnviedField(obfuscate: true)
  static String proxyAPIKey = _DigitalOasis.proxyAPIKey;
}

class PublicHeaders {
  static final map = {
    "Access-Control-Allow-Origin": "*",
    "x-cors-api-key": DigitalOasis.proxyAPIKey,
    "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS, HEAD",
    "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    "Content-Type": "application/json",
    "Access-Control-Allow-Credentials": "true",
  };
}
