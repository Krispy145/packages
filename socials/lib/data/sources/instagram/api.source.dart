import "package:dio/dio.dart";
import "package:socials/data/constants/instagram.dart";
import "package:socials/data/models/instagram/access_token_model.dart";
import "package:socials/data/models/instagram/media_ids_response.dart";
import "package:socials/data/models/instagram/media_model.dart";
import "package:socials/data/models/instagram/user_model.dart";
import "package:socials/domain/repositories/instagram.repository.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

import "_source.dart";

/// [ApiInstagramDataSource] is a class that implements [InstagramDataSource] interface.
class ApiInstagramDataSource implements InstagramDataSource {
  final String appRedirectUrl;
  final String appId;
  final String appSecret;
  final BaseOptions? options;

  /// [ApiInstagramDataSource] constructor.
  ApiInstagramDataSource({
    required this.appRedirectUrl,
    required this.appId,
    required this.appSecret,
    this.options,
  }) {
    // Add interceptors to _dio
    _dio.options = options ?? BaseOptions();
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Log the request
          AppLogger.print(
            "REQUEST: Headers: ${options.headers} ${options.method} -> ${options.uri}",
            [SocialsLoggers.instagram],
          );
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // Log the response
          AppLogger.print(
            "RESPONSE: ${response.statusCode} -> ${response.statusMessage}",
            [SocialsLoggers.instagram],
          );
          return handler.next(response);
        },
        onError: (e, handler) {
          // Log errors
          AppLogger.print(
            "ERROR: ${e.response?.statusCode} -> ${e.response?.statusMessage}",
            [SocialsLoggers.instagram],
            type: LoggerType.error,
          );
          return handler.next(e);
        },
      ),
    );
  }
  final Dio _dio = Dio();
  final String _apiUrl = InstagramConstants.apiUrl;
  final String _graphUrl = InstagramConstants.graphUrl;

  @override
  Future<InstagramAccessTokenModel?> shortLivedToken({required CODE code}) async {
    return _handleError(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        _apiUrl + InstagramConstants.shortLivedTokenSuffix,
        data: FormData.fromMap(
          {
            "client_id": appId,
            "client_secret": appSecret,
            "grant_type": "authorization_code",
            "redirect_uri": InstagramConstants.appRedirectUrl(appRedirectUrl),
            "code": code,
          },
        ),
      );
      return InstagramAccessTokenModel.fromMap(response.data ?? {});
    });
  }

  @override
  Future<InstagramAccessTokenModel?> longLivedToken({required InstagramAccessTokenModel shortLivedAccessToken}) async {
    return _handleError(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        _graphUrl + InstagramConstants.longLivedTokenSuffix,
        queryParameters: {
          "grant_type": "ig_exchange_token",
          "client_secret": appSecret,
          "access_token": shortLivedAccessToken.accessToken,
        },
      );
      return InstagramAccessTokenModel.fromMap(response.data ?? {});
    });
  }

  @override
  Future<InstagramAccessTokenModel?> refreshToken({required InstagramAccessTokenModel currentLongLivedAccessToken}) async {
    return _handleError(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        _graphUrl + InstagramConstants.refreshTokenSuffix,
        queryParameters: {
          "grant_type": "ig_refresh_token",
          "access_token": currentLongLivedAccessToken.accessToken,
        },
      );
      return InstagramAccessTokenModel.fromMap(response.data ?? {});
    });
  }

  @override
  Future<InstagramMediaIdsResponse?> userMediaIds({String? userId, required String accessToken, InstagramMediaIdsResponse? lastMediaIdResponse}) {
    return _handleError(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        _graphUrl + InstagramConstants.userMediaSuffix(userId: userId),
        queryParameters: {
          "access_token": lastMediaIdResponse?.media?.paging.cursors.after ?? accessToken,
          "fields": "media",
        },
      );
      AppLogger.print(
        "API RESULT: userMediaIds: ${response.data}",
        [SocialsLoggers.instagram],
      );
      return InstagramMediaIdsResponse.fromMap(response.data ?? {});
    });
  }

  @override
  Future<InstagramMediaModel?> mediaDetails({required String mediaId, required String accessToken, List<InstagramMediaDetailsField>? fields}) {
    final _fields = fields?.map((e) => e.snakeCase()).join(",") ?? InstagramMediaDetailsField.values.map((e) => e.snakeCase()).join(",");
    return _handleError(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        _graphUrl + mediaId,
        queryParameters: {
          "access_token": accessToken,
          "fields": _fields,
        },
      );
      return InstagramMediaModel.fromMap(response.data ?? {});
    });
  }

  // @override
  // Future<Pair<InstagramMediaIdsResponse, List<InstagramMediaIdModel?>>> getPage({InstagramMediaIdsResponse? lastResponse, int? size}) {
  //   // TODO: implement getPage
  //   throw UnimplementedError();
  // }

  // @override
  // Future<Pair<InstagramMediaIdsResponse, List<InstagramMediaIdModel?>>> searchPage({InstagramMediaIdsResponse? lastResponse, int? size, required Map<String, String> query}) {
  //   // TODO: implement searchPage
  //   throw UnimplementedError();
  // }

  @override
  Future<List<InstagramMediaIdsResponse?>> mediaAlbum({required String mediaId, required String accessToken, List<InstagramMediaDetailsField>? fields}) async {
    final _fields = fields?.map((e) => e.snakeCase()).join(",") ?? InstagramMediaDetailsField.values.map((e) => e.snakeCase()).join(",");
    try {
      final response = await _dio.get<List<Map<String, dynamic>>>(
        _graphUrl + InstagramConstants.mediaAlbumSuffix(mediaId),
        queryParameters: {
          "access_token": accessToken,
          "fields": _fields,
        },
      );
      return response.data?.map((e) => InstagramMediaIdsResponse.fromMap(e)).toList() ?? [];
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [SocialsLoggers.instagram],
        type: LoggerType.error,
      );
      return [];
    }
  }

  @override
  Future<InstagramUserModel?> me({required String accessToken, List<InstagramUserDetailsField>? fields}) {
    final _fields = fields?.map((e) => e.snakeCase()).join(",") ?? InstagramUserDetailsField.values.map((e) => e.snakeCase()).join(",");
    return _handleError(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        _graphUrl + InstagramConstants.meSuffix,
        queryParameters: {
          "access_token": accessToken,
          "fields": _fields,
        },
      );
      return InstagramUserModel.fromMap(response.data ?? {});
    });
  }

  @override
  Future<InstagramUserModel?> user({required String userId, required String accessToken, List<InstagramUserDetailsField>? fields}) {
    final _fields = fields?.map((e) => e.snakeCase()).join(",") ?? InstagramUserDetailsField.values.map((e) => e.snakeCase()).join(",");
    return _handleError(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        _graphUrl + userId,
        queryParameters: {
          "access_token": accessToken,
          "fields": _fields,
        },
      );
      return InstagramUserModel.fromMap(response.data ?? {});
    });
  }

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [SocialsLoggers.instagram],
        type: LoggerType.error,
      );
      return null;
    }
  }
}
