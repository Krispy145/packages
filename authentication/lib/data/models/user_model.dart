import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_params.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// [UserModel] is a class that represents the Auth model.
@freezed
class UserModel with _$UserModel {
  /// [UserModel] constructor.
  const factory UserModel({
    required String id,
    String? accessToken,
    String? idToken,
    String? email,
    String? displayName,
    String? photoUrl,
    String? phoneNumber,
    String? refreshToken,
    required AuthType authType,
    required AuthStatus status,
    required DateTime createdAt,
    DateTime? lastLoginAt,
    DateTime? lastLogoutAt,
    required DateTime updatedAt,
  }) = _UserModel;
  const UserModel._();

  AuthParams toAuthParams() => AuthParams.fromUserModel(
        id: id,
        email: email,
        displayName: displayName,
        photoUrl: photoUrl,
        phoneNumber: phoneNumber,
        accessToken: accessToken,
        idToken: idToken,
        refreshToken: refreshToken,
        authType: authType,
        authStatus: status,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  /// [UserModel] factory constructor.
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
