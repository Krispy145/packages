import "package:flutter_inappwebview/flutter_inappwebview.dart";
import "package:mobx/mobx.dart";
import "package:socials/data/constants/instagram.dart";
import "package:socials/data/models/instagram/media_ids_response.dart";
import "package:socials/data/models/instagram/media_model.dart";
import "package:socials/data/models/instagram/user_model.dart";
import "package:socials/data/sources/instagram/secure.source.dart";
import "package:socials/domain/repositories/instagram.repository.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/widgets/auth_state/store.dart";

part "store.g.dart";

/// [InstagramUserStore] is a class that uses [_InstagramUserStore] to manage state of the Instagram feature.
class InstagramUserStore = _InstagramUserStore with _$InstagramUserStore;

/// [_InstagramUserStore] is a class that manages the state of the Instagram feature.
abstract class _InstagramUserStore with AuthStateStore, Store {
  final String? appId;
  final String? appSecret;
  final String appRedirectUrl;
  final bool saveAuthenticatedUserLocally;
  final void Function(InstagramUserModel user)? onAuthenticated;

  /// [_InstagramUserStore] constructor.
  _InstagramUserStore({
    this.appId,
    this.appSecret,
    required this.appRedirectUrl,
    this.onAuthenticated,
    this.saveAuthenticatedUserLocally = true,
  }) {
    tryAuthenticate();
  }

  final SecureInstagramDataSource _secureDataSource =
      SecureInstagramDataSource();

  @observable
  InstagramUserModel? user;

  @observable
  InstagramMediaIdsResponse? mediaIds;

  @observable
  ObservableList<InstagramMediaModel> media = ObservableList.of([]);

  late final InstagramRepository repository = InstagramRepository(
    appId: appId,
    appSecret: appSecret,
    appRedirectUrl: appRedirectUrl,
  );

  @action
  Future<void> setLocalUser(InstagramUserModel user) async {
    await _secureDataSource.update("user", user);
    onAuthenticated?.call(user);
  }

  @action
  Future<void> tryAuthenticate() async {
    if (user == null) await getLocalUser();
    if (saveAuthenticatedUserLocally && user != null) await setLocalUser(user!);
    if (user != null) {
      setAuthenticated();
    } else {
      setUnauthenticated();
    }
  }

  @action
  Future<void> refreshAuth() async {
    await _secureDataSource.deleteAll();
    setUnauthenticated();
  }

  @action
  Future<void> getLocalUser() async {
    final _user = await _secureDataSource.get("user");
    user = _user.second;
    setAuthenticated();
  }

  @action
  Future<void> clearLocalUser() async {
    await _secureDataSource.delete("user");
  }

  @computed
  Uri get initialUri => Uri.parse(
        InstagramConstants.authorizeSuffix(
          appId: repository.appId!,
          redirectUrl: repository.appRedirectUrl,
        ),
      );

  @action
  Future<void> getAccessTokenFromCode(WebUri? uri) async {
    setUnauthenticated();
    var localUser = InstagramUserModel();
    try {
      if (uri != null && uri.toString().contains(appRedirectUrl)) {
        AppLogger.print(
          "queryParams: ${uri.queryParameters}",
          [SocialsLoggers.instagram],
        );
        if (uri.queryParameters.containsKey("code")) {
          final code = uri.queryParameters["code"]!;
          AppLogger.print("code: $code", [SocialsLoggers.instagram]);
          final _shortLivedToken =
              await repository.postShortLivedAccessToken(authCode: code);
          if (_shortLivedToken != null) {
            AppLogger.print(
              "shortLivedToken: $_shortLivedToken",
              [SocialsLoggers.instagram],
            );
            localUser = localUser.copyWith(shortLivedToken: _shortLivedToken);
            final _longLivedToken = await repository.getLongLivedAccessToken(
              shortLivedAccessToken: _shortLivedToken,
            );
            if (_longLivedToken != null) {
              AppLogger.print(
                "longLivedToken: $_longLivedToken",
                [SocialsLoggers.instagram],
              );
              localUser = localUser.copyWith(longLivedToken: _longLivedToken);
              final _user =
                  await repository.getMe(accessTokenModel: _longLivedToken);
              if (_user != null) {
                localUser = localUser.copyWith(
                  id: _user.id,
                  username: _user.username,
                  accountType: _user.accountType,
                  mediaCount: _user.mediaCount,
                );
              }
              user = localUser;
              await tryAuthenticate();
            }
          }
        }
      }
    } catch (e) {
      AppLogger.print("getAccessTokenFromCode: $e", [SocialsLoggers.instagram]);
      setUnauthenticated();
    }
  }
}
