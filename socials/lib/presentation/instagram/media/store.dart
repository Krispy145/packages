// ignore_for_file: unused_element

import "package:flutter/foundation.dart";
import "package:mobx/mobx.dart";
import "package:socials/data/constants/instagram.dart";
import "package:socials/data/models/instagram/media_ids_response.dart";
import "package:socials/data/models/instagram/media_model.dart";
import "package:socials/data/models/instagram/user_model.dart";
import "package:socials/domain/repositories/instagram.repository.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/paginated_list/store.dart";
import "package:utilities/logger/logger.dart";

part "store.g.dart";

/// [InstagramMediaStore] is a class that uses [_InstagramMediaStore] to manage state of the Instagram feature.
class InstagramMediaStore = _InstagramMediaStore with _$InstagramMediaStore;

/// [_InstagramMediaStore] is a class that manages the state of the Instagram feature.
abstract class _InstagramMediaStore extends PaginatedListStore<InstagramMediaModel, String> with Store {
  final String? appId;
  final String? appSecret;
  final String appRedirectUrl;
  final InstagramUserModel user;

  /// [_InstagramMediaStore] constructor.
  _InstagramMediaStore({
    this.appId,
    this.appSecret,
    required this.appRedirectUrl,
    required this.user,
  });

  @observable
  List<InstagramMediaIdModel?> mediaIds = [];

  // @observable
  // ObservableList<InstagramMediaModel> media = ObservableList.of([]);

  late final InstagramRepository repository = InstagramRepository(
    appId: appId,
    appSecret: appSecret,
    appRedirectUrl: appRedirectUrl,
  );

  @override
  late final loadMoreFromRepository = getUserMedia;

  @action
  Future<Pair<RequestResponse, List<InstagramMediaModel?>>> getUserMedia({int? limit, bool refresh = false}) async {
    try {
      if (refresh) {
        mediaIds.clear();
        results.clear();
      }
      await getUserMediaIds(user: user, refresh: refresh);
      if (mediaIds.isNotEmpty) {
        for (final mediaId in mediaIds) {
          await getMediaDetails(mediaId!.id);
        }
        setLoaded();
        AppLogger.print("Current State 1: $currentState - results length: ${results.length}", [SocialsLoggers.instagram]);
        return Pair(RequestResponse.success, results);
      } else {
        setEmpty("No media found");
        AppLogger.print("Current State 2: $currentState", [SocialsLoggers.instagram]);
        return const Pair(RequestResponse.success, []);
      }
    } catch (e) {
      AppLogger.print("getUserMedia: $e", [SocialsLoggers.instagram]);
      setError("Error loading media");
      AppLogger.print("Current State 3: $currentState", [SocialsLoggers.instagram]);
      return const Pair(RequestResponse.failure, []);
    }
  }

  @action
  Future<void> getUserMediaIds({InstagramUserModel? user, bool refresh = false}) async {
    try {
      final _response = await repository.getUserMediaIds(userId: user?.id, accessTokenModel: user!.longLivedToken ?? user.shortLivedToken!, refresh: refresh);
      AppLogger.print("mediaIds: $_response", [SocialsLoggers.instagram]);
      if (_response != null) {
        final _merged = <InstagramMediaIdModel?>{...mediaIds, ..._response}.toList();
        mediaIds = _merged;
      }
    } catch (e) {
      AppLogger.print("getUserMediaIds: $e", [SocialsLoggers.instagram]);
      setError(kDebugMode ? "Error loading media ids" : "There was a problem loading media");
    }
  }

  @action
  Future<void> getMediaDetails(String mediaId) async {
    try {
      final _detail = await repository.getMediaDetails(mediaId, accessTokenModel: user.longLivedToken ?? user.shortLivedToken!);
      AppLogger.print("mediaDetail: $_detail", [SocialsLoggers.instagram]);
      if (_detail != null) {
        results.add(_detail);
      }
    } catch (e) {
      AppLogger.print("getMediaDetails: $e", [SocialsLoggers.instagram]);
      setError("Error loading media details");
    }
  }

  @computed
  Uri get initialUri => Uri.parse(
        InstagramConstants.authorizeSuffix(
          appId: repository.appId!,
          redirectUrl: repository.appRedirectUrl,
        ),
      );
}
