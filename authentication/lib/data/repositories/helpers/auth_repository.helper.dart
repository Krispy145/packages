import "package:authentication/data/models/auth_params.dart";
import "package:cryptography/cryptography.dart";
import "package:flutter/foundation.dart";
import "package:flutter_facebook_auth/flutter_facebook_auth.dart";
import "package:google_sign_in/google_sign_in.dart";
import "package:sign_in_with_apple/sign_in_with_apple.dart";

class AuthRepositoryHelper {
  static Future<AuthParams> signInWithFacebook(AuthParams params) async {
    // Trigger the sign-in flow
    final loginResult = await FacebookAuth.instance.login();
    return params.copyWith(accessToken: loginResult.accessToken?.token);
  }

  static Future<AuthParams> signInWithGoogle(AuthParams params) async {
    // Trigger the authentication flow
    final googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final googleAuth = await googleUser?.authentication;
    return params.copyWith(
      idToken: googleAuth?.idToken,
      accessToken: googleAuth?.accessToken,
    );
  }

  static Future<AuthParams> signInWithApple(AuthParams params) async {
    final nonce = _generateNonce();
    final credentials = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce.toString(),
    );
    return params.copyWith(
      idToken: credentials.identityToken,
      accessToken: credentials.authorizationCode,
      nonce: nonce.toString(),
      email: credentials.email,
      displayName:
          credentials.givenName != null && credentials.familyName != null
              ? "${credentials.givenName} ${credentials.familyName}"
              : null,
    );
  }

  @protected
  static List<int> _generateNonce() {
    final algorithm = AesGcm.with256bits();
    return algorithm.newNonce();
  }
}
