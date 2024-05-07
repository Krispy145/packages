import "package:dart_mappable/dart_mappable.dart";

part "socials_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase, ignoreNull: true)
class SocialsModel with SocialsModelMappable {
  final String? instagramHandle;
  final String? facebookHandle;
  final String? twitterHandle;
  final String? tiktokHandle;
  final String? pinterestHandle;
  final String? youtubeHandle;
  final String? snapchatHandle;
  final String? linkedinHandle;
  final String? spotifyHandle;

  SocialsModel({
    this.instagramHandle,
    this.facebookHandle,
    this.twitterHandle,
    this.tiktokHandle,
    this.pinterestHandle,
    this.youtubeHandle,
    this.snapchatHandle,
    this.linkedinHandle,
    this.spotifyHandle,
  });

  static const fromMap = SocialsModelMapper.fromMap;
  static const fromJson = SocialsModelMapper.fromJson;
}
