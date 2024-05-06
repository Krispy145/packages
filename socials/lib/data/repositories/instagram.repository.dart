import "package:socials/data/models/instagram/access_token_model.dart";
import "package:socials/data/models/instagram/media_ids_response.dart";
import "package:socials/data/models/instagram/media_model.dart";
import "package:socials/domain/repositories/instagram.repository.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

import "../models/instagram/user_model.dart";
import "/data/sources/instagram/api.source.dart";

/// [InstagramDataRepository] is a class that defines the basic CRUD operations for the [InstagramUserModel] entity.
class InstagramDataRepository {
  final String appRedirectUrl;
  final String appId;
  final String appSecret;

  /// [InstagramDataRepository] constructor.
  InstagramDataRepository({
    required this.appRedirectUrl,
    required this.appId,
    required this.appSecret,
  });

  /// [postShortLivedAccessToken] returns a list of [InstagramUserModel]s.
  Future<InstagramAccessTokenModel?> postShortLivedAccessToken(CODE code) async {
    final _response = await ApiInstagramDataSource(
      appRedirectUrl: appRedirectUrl,
      appId: appId,
      appSecret: appSecret,
    ).shortLivedToken(code: code);
    return _response;
  }

  /// [getLongLivedAccessToken] returns a list of [InstagramUserModel]s.
  Future<InstagramAccessTokenModel?> getLongLivedAccessToken(InstagramAccessTokenModel shortLivedAccessToken) async {
    final _response = await ApiInstagramDataSource(
      appRedirectUrl: appRedirectUrl,
      appId: appId,
      appSecret: appSecret,
    ).longLivedToken(shortLivedAccessToken: shortLivedAccessToken);
    return _response;
  }

  /// [refreshLongLivedAccessToken] returns a list of [InstagramUserModel]s.
  Future<InstagramAccessTokenModel?> refreshLongLivedAccessToken(InstagramAccessTokenModel currentLongLivedAccessToken) async {
    final _response = await ApiInstagramDataSource(
      appRedirectUrl: appRedirectUrl,
      appId: appId,
      appSecret: appSecret,
    ).refreshToken(currentLongLivedAccessToken: currentLongLivedAccessToken);
    return _response;
  }

  /// [getUserMediaIds] returns a list of [InstagramUserModel]s.
  /// [userId] is the user id. defaults to in constants as `me`.
  Future<InstagramMediaIdsResponse?> getUserMediaIds({
    String? userId,
    required InstagramAccessTokenModel accessTokenModel,
    InstagramMediaIdsResponse? lastMediaIdResponse,
  }) async {
    try {
      return ApiInstagramDataSource(
        appRedirectUrl: appRedirectUrl,
        appId: appId,
        appSecret: appSecret,
      ).userMediaIds(userId: userId, accessToken: accessTokenModel.accessToken, lastMediaIdResponse: lastMediaIdResponse);
    } catch (e) {
      AppLogger.print("InstagramDataRepository: getUserMediaIds: $e", [SocialsLoggers.instagram], type: LoggerType.error);
    }
    return null;
  }

  /// [getMediaDetails] returns a list of [InstagramUserModel]s.
  /// [mediaId] is the media id.
  Future<InstagramMediaModel?> getMediaDetails(
    String mediaId, {
    List<InstagramMediaDetailsField>? fields,
    required InstagramAccessTokenModel accessTokenModel,
  }) async {
    try {
      return ApiInstagramDataSource(
        appRedirectUrl: appRedirectUrl,
        appId: appId,
        appSecret: appSecret,
      ).mediaDetails(mediaId: mediaId, accessToken: accessTokenModel.accessToken, fields: fields);
    } catch (e) {
      AppLogger.print("InstagramDataRepository: getMediaDetails: $e", [SocialsLoggers.instagram], type: LoggerType.error);
    }
    return null;
  }

  /// [getMediaAlbum] returns a list of [InstagramUserModel]s.
  /// [mediaId] is the media id.
  Future<List<InstagramMediaIdsResponse?>> getMediaAlbum(
    String mediaId, {
    List<InstagramMediaDetailsField>? fields,
    required InstagramAccessTokenModel accessTokenModel,
  }) async {
    try {
      return ApiInstagramDataSource(
        appRedirectUrl: appRedirectUrl,
        appId: appId,
        appSecret: appSecret,
      ).mediaAlbum(mediaId: mediaId, accessToken: accessTokenModel.accessToken, fields: fields);
    } catch (e) {
      AppLogger.print("InstagramDataRepository: getMediaAlbum: $e", [SocialsLoggers.instagram], type: LoggerType.error);
    }
    return [];
  }

  /// [getMe] returns a list of [InstagramUserModel]s.
  Future<InstagramUserModel?> getMe({
    List<InstagramUserDetailsField>? fields,
    required InstagramAccessTokenModel accessTokenModel,
  }) async {
    try {
      return ApiInstagramDataSource(
        appRedirectUrl: appRedirectUrl,
        appId: appId,
        appSecret: appSecret,
      ).me(accessToken: accessTokenModel.accessToken, fields: fields);
    } catch (e) {
      AppLogger.print("InstagramDataRepository: getMe: $e", [SocialsLoggers.instagram], type: LoggerType.error);
    }
    return null;
  }

  /// [getUser] returns a list of [InstagramUserModel]s.
  /// [userId] is the user id.
  Future<InstagramUserModel?> getUser(
    String userId, {
    List<InstagramUserDetailsField>? fields,
    required InstagramAccessTokenModel accessTokenModel,
  }) async {
    try {
      return ApiInstagramDataSource(
        appRedirectUrl: appRedirectUrl,
        appId: appId,
        appSecret: appSecret,
      ).user(userId: userId, accessToken: accessTokenModel.accessToken, fields: fields);
    } catch (e) {
      AppLogger.print("InstagramDataRepository: getUser: $e", [SocialsLoggers.instagram], type: LoggerType.error);
    }
    return null;
  }
}
