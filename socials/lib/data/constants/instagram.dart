class InstagramConstants {
  /// [apiUrl] is the base url for the Instagram API. `https://api.instagram.com/`
  static const apiUrl = "https://api.instagram.com/";

  /// [graphUrl] is the base url for the Instagram Graph API. `https://graph.instagram.com/`
  static const graphUrl = "https://graph.instagram.com/";

  static String appRedirectUrl(String redirectUrl) => "https://$redirectUrl";

  /// [authorizeSuffix] is the suffix for the authorize endpoint. `/oauth/authorize`
  static String authorizeSuffix({
    required String appId,
    required String redirectUrl,
  }) =>
      "${InstagramConstants.apiUrl}oauth/authorize?client_id=$appId&redirect_uri=${appRedirectUrl(redirectUrl)}&scope=user_profile,user_media&response_type=code";

  /// [shortLivedTokenSuffix] is the suffix for the access token endpoint. `/oauth/access_token`
  static const shortLivedTokenSuffix = "oauth/access_token";

  /// [longLivedTokenSuffix] is the suffix for the access token endpoint. `/access_token`
  static const longLivedTokenSuffix = "access_token";

  /// [refreshTokenSuffix] is the suffix for the access token endpoint. `/refresh_access_token`
  static const refreshTokenSuffix = "refresh_access_token";

  /// [meSuffix] is the suffix for the me endpoint. `/me`
  static const meSuffix = "me";

  /// [userMediaSuffix] is the suffix for the user endpoint. `/{user-id}`
  /// [userId] is the user id. defaults to in constants as `me`.
  static String userMediaSuffix({String? userId}) => userId ?? meSuffix;

  /// [mediaAlbumSuffix] is the suffix for the media album endpoint. `/{media-id}/children`
  static String mediaAlbumSuffix(String mediaId) => "$mediaId/children";
}
