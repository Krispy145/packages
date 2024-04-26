import "package:flutter/foundation.dart";

@immutable
class AuthenticationException implements Exception {
  final String message;

  const AuthenticationException(this.message);

  @override
  String toString() => message;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthenticationException && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
