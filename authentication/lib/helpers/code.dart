import "dart:convert";

import "package:crypto/crypto.dart";

String generateHashCode(String code, String salt) {
  final key = utf8.encode(code);
  final saltBytes = utf8.encode(salt);
  final hmacSha256 = Hmac(sha256, saltBytes); // HMAC-SHA256
  final digest = hmacSha256.convert(key);
  return digest.toString();
}
