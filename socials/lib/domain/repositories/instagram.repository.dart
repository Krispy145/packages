import "package:socials/data/constants/env.dart";
import "package:socials/data/models/instagram/access_token_model.dart";
import "package:socials/data/models/instagram/media_ids_response.dart";
import "package:socials/data/models/instagram/media_model.dart";
import "package:socials/data/models/instagram/user_model.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/logger/logger.dart";

import "/data/repositories/_repositories.dart";
import "/data/repositories/instagram.repository.dart";

typedef CODE = String;

enum InstagramMediaDetailsField {
  id,
  mediaUrl,
  mediaType,
  username,
  caption,
  permalink,
  isSharedToFeed,
  timestamp,
  thumbnailUrl;

  String snakeCase() {
    return name.camelCaseToSnakeCase();
  }
}

enum InstagramUserDetailsField {
  accountType,
  id,
  mediaCount,
  username;

  String snakeCase() {
    return name.camelCaseToSnakeCase();
  }
}

enum InstagramScope {
  userProfile,
  userMedia;

  String snakeCase() {
    return name.camelCaseToSnakeCase();
  }
}

/// [InstagramRepository] is an abstract class that defines the basic CRUD operations for the [InstagramUserModel] entity.
/// Requires the [appRedirectUrl] to be provided.
/// Takes in the [appId] and [appSecret] as optional parameters.
/// If not provided, it defaults to the values in the [InstagramEnviedConstants].
/// It handles the authorization and access token generation.
/// fetching of media ids and media details.
/// fetching of user details.
class InstagramRepository {
  final String appRedirectUrl;
  String? appId;
  String? appSecret;
  late final InstagramDataRepository _instagramDataRepository;

  /// [InstagramRepository] constructor.
  InstagramRepository({
    required this.appRedirectUrl,
    this.appId,
    this.appSecret,
  }) {
    appId ??= InstagramEnviedConstants.appId;
    appSecret ??= InstagramEnviedConstants.appSecret;
    assert(
      appId != null && appSecret != null && appRedirectUrl.isNotEmpty,
      "InstagramRepository: appId, appSecret, and appRedirectUrl cannot be null or empty",
    );
    _instagramDataRepository = DataRepositories.instance.instagram(
      appId: appId!,
      appSecret: appSecret!,
      appRedirectUrl: appRedirectUrl,
    );
  }

  //* InstagramModel Data Source Type
  final _source = DataSourceTypes.api;

  InstagramMediaIdsResponse? _currentMediaIdsResponse;

  /// [postShortLivedAccessToken] returns a list of [InstagramUserModel]s.
  Future<InstagramAccessTokenModel?> postShortLivedAccessToken({required String authCode}) async {
    try {
      return _handleNotApiSource(() => _instagramDataRepository.postShortLivedAccessToken(authCode));
    } catch (e) {
      AppLogger.print("InstagramRepository: postShortLivedAccessToken: $e", [SocialsLoggers.instagram], type: LoggerType.error);
      return null;
    }
  }

  /// [getLongLivedAccessToken] returns a list of [InstagramUserModel]s.
  Future<InstagramAccessTokenModel?> getLongLivedAccessToken({required InstagramAccessTokenModel shortLivedAccessToken}) async {
    try {
      return _handleNotApiSource(() => _instagramDataRepository.getLongLivedAccessToken(shortLivedAccessToken));
    } catch (e) {
      AppLogger.print("InstagramRepository: getLongLivedAccessToken: $e", [SocialsLoggers.instagram], type: LoggerType.error);
      return null;
    }
  }

  /// [refreshLongLivedAccessToken] returns a list of [InstagramUserModel]s.
  Future<InstagramAccessTokenModel?> refreshLongLivedAccessToken({
    required InstagramAccessTokenModel currentLongLivedAccessToken,
  }) async {
    try {
      return _handleNotApiSource(
        () => _instagramDataRepository.refreshLongLivedAccessToken(currentLongLivedAccessToken),
      );
    } catch (e) {
      AppLogger.print(
        "InstagramRepository: refreshLongLivedAccessToken: $e",
        [SocialsLoggers.instagram],
        type: LoggerType.error,
      );
      return null;
    }
  }

  /// [getUserMediaIds] returns a list of [InstagramUserModel]s.
  /// [userId] is the user id. defaults to in constants as `me`.
  Future<List<InstagramMediaIdModel>?> getUserMediaIds({
    String? userId,
    required InstagramAccessTokenModel accessTokenModel,
    required bool refresh,
  }) async {
    if (refresh) {
      _currentMediaIdsResponse = null;
    }
    _currentMediaIdsResponse = await _handleNotApiSource(
      () => _instagramDataRepository.getUserMediaIds(
        userId: userId,
        accessTokenModel: accessTokenModel,
        lastMediaIdResponse: _currentMediaIdsResponse,
      ),
    );
    return _currentMediaIdsResponse?.media?.data;
  }

  /// [getMediaDetails] returns a list of [InstagramUserModel]s.
  /// [mediaId] is the media id.
  /// [fields] is a list of [InstagramMediaDetailsField]s.
  /// Defaults to all fields if not provided.
  Future<InstagramMediaModel?> getMediaDetails(
    String mediaId, {
    List<InstagramMediaDetailsField>? fields,
    required InstagramAccessTokenModel accessTokenModel,
  }) async {
    return _handleNotApiSource(
      () => _instagramDataRepository.getMediaDetails(
        mediaId,
        fields: fields,
        accessTokenModel: accessTokenModel,
      ),
    );
  }

  /// [getMediaAlbum] returns a list of [InstagramUserModel]s.
  /// [mediaId] is the media id.
  /// [fields] is a list of [InstagramMediaDetailsField]s.
  /// Defaults to all fields if not provided.
  Future<List<InstagramMediaIdsResponse?>> getMediaAlbum(
    String mediaId, {
    List<InstagramMediaDetailsField>? fields,
    required InstagramAccessTokenModel accessTokenModel,
  }) async {
    return _handleNotApiSource(
      () => _instagramDataRepository.getMediaAlbum(
        mediaId,
        fields: fields,
        accessTokenModel: accessTokenModel,
      ),
    );
  }

  /// [getMe] returns a list of [InstagramUserModel]s.
  /// [fields] is a list of [InstagramUserDetailsField]s.
  Future<InstagramUserModel?> getMe({
    List<InstagramUserDetailsField>? fields,
    required InstagramAccessTokenModel accessTokenModel,
  }) async {
    return _handleNotApiSource(() => _instagramDataRepository.getMe(fields: fields, accessTokenModel: accessTokenModel));
  }

  /// [getUser] returns a list of [InstagramUserModel]s.
  /// [userId] is the user id.
  /// [fields] is a list of [InstagramUserDetailsField]s.
  /// Defaults to all fields if not provided.
  Future<InstagramUserModel?> getUser(
    String userId, {
    List<InstagramUserDetailsField>? fields,
    required InstagramAccessTokenModel accessTokenModel,
  }) async {
    return _handleNotApiSource(
      () => _instagramDataRepository.getUser(
        userId,
        fields: fields,
        accessTokenModel: accessTokenModel,
      ),
    );
  }

  Future<T> _handleNotApiSource<T>(Future<T> Function() callback) {
    if (_source != DataSourceTypes.api) {
      AppLogger.print(
        "InstagramRepository: _handleNotApiSource: $_source is not implemented. Defaulting to API",
        [SocialsLoggers.instagram],
        type: LoggerType.warning,
      );
    }
    return callback();
  }
}
