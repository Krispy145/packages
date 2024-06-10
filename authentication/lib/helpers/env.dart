import "package:envied/envied.dart";

part "env.g.dart";

/// Auth Environment
@Envied(path: "lib/helpers/.env", name: "AuthEnv")
class AuthEnv {
  @EnviedField(obfuscate: true, varName: "email")
  static String email = _AuthEnv.email;

  @EnviedField(obfuscate: true, varName: "password")
  static String password = _AuthEnv.password;
}
