import "package:envied/envied.dart";

part "env.g.dart";

/// WebServices Constants
@Envied(path: "lib/constants/.env", name: "WebServices")
class WebServices {
  // @EnviedField(obfuscate: true)
  // static String proxyKey = _WebServices.proxyKey;

  // @EnviedField(obfuscate: true)
  // static String proxy = _WebServices.proxy;
}

/// Dates Constants
@Envied(path: "lib/constants/.env", name: "Dates")
class Dates {
  @EnviedField(obfuscate: true)
  static String january = _Dates.january;

  @EnviedField(obfuscate: true)
  static String february = _Dates.february;

  @EnviedField(obfuscate: true)
  static String march = _Dates.march;

  @EnviedField(obfuscate: true)
  static String april = _Dates.april;

  @EnviedField(obfuscate: true)
  static String may = _Dates.may;

  @EnviedField(obfuscate: true)
  static String june = _Dates.june;

  @EnviedField(obfuscate: true)
  static String july = _Dates.july;

  @EnviedField(obfuscate: true)
  static String august = _Dates.august;

  @EnviedField(obfuscate: true)
  static String september = _Dates.september;

  @EnviedField(obfuscate: true)
  static String october = _Dates.october;

  @EnviedField(obfuscate: true)
  static String november = _Dates.november;

  @EnviedField(obfuscate: true)
  static String december = _Dates.december;

  @EnviedField(obfuscate: true)
  static String monday = _Dates.monday;

  @EnviedField(obfuscate: true)
  static String tuesday = _Dates.tuesday;

  @EnviedField(obfuscate: true)
  static String wednesday = _Dates.wednesday;

  @EnviedField(obfuscate: true)
  static String thursday = _Dates.thursday;

  @EnviedField(obfuscate: true)
  static String friday = _Dates.friday;

  @EnviedField(obfuscate: true)
  static String saturday = _Dates.saturday;

  @EnviedField(obfuscate: true)
  static String sunday = _Dates.sunday;

  static List<String> get months => [
        january,
        february,
        march,
        april,
        may,
        june,
        july,
        august,
        september,
        october,
        november,
        december,
      ];

  static List<String> get days => [
        monday,
        tuesday,
        wednesday,
        thursday,
        friday,
        saturday,
        sunday,
      ];
}

class PublicHeaders {
  static final map = {
    "Access-Control-Allow-Origin": "*",
    // "x-cors-api-key": WebServices.proxyKey,
    "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS, HEAD",
    "Access-Control-Allow-Headers":
        "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    "Content-Type": "application/json",
    "Access-Control-Allow-Credentials": "true",
  };
}
