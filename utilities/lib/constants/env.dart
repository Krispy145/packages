import "package:envied/envied.dart";

part "env.g.dart";

/// Map Constants
@Envied(path: "lib/constants/.env", name: "DigitalOasis")
class DigitalOasis {
  /// website
  @EnviedField(obfuscate: true)
  static String website = _DigitalOasis.website;

  @EnviedField(obfuscate: true)
  static String proxyKey = _DigitalOasis.proxyKey;

  @EnviedField(obfuscate: true)
  static String proxy = _DigitalOasis.proxy;
  // "https://cors-anywhere.herokuapp.com/"; // "https://thingproxy.freeboard.io/fetch/"; // replacement for "https://corsproxy.io/?"
}

class PublicHeaders {
  static final map = {
    "Access-Control-Allow-Origin": "*",
    "x-cors-api-key": DigitalOasis.proxyKey,
    "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS, HEAD",
    "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    "Content-Type": "application/json",
    "Access-Control-Allow-Credentials": "true",
  };
}
