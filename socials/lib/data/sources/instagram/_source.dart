import "package:socials/data/models/instagram/access_token_model.dart";
import "package:socials/data/models/instagram/media_ids_response.dart";
import "package:socials/data/models/instagram/media_model.dart";
import "package:socials/domain/repositories/instagram.repository.dart";

import "../../models/instagram/user_model.dart";

/// [InstagramDataSource] is an abstract class that defines the basic CRUD operations for the [InstagramUserModel] entity.
mixin InstagramDataSource {
  Future<InstagramAccessTokenModel?> shortLivedToken({required CODE code});
  Future<InstagramAccessTokenModel?> longLivedToken({required InstagramAccessTokenModel shortLivedAccessToken});
  Future<InstagramAccessTokenModel?> refreshToken({required InstagramAccessTokenModel currentLongLivedAccessToken});
  Future<InstagramMediaIdsResponse?> userMediaIds({String? userId, required String accessToken});
  Future<InstagramMediaModel?> mediaDetails({required String mediaId, required String accessToken, List<InstagramMediaDetailsField>? fields});
  Future<List<InstagramMediaIdsResponse?>> mediaAlbum({required String mediaId, required String accessToken, List<InstagramMediaDetailsField>? fields});
  Future<InstagramUserModel?> me({required String accessToken, List<InstagramUserDetailsField>? fields});
  Future<InstagramUserModel?> user({required String userId, required String accessToken, List<InstagramUserDetailsField>? fields});
}
