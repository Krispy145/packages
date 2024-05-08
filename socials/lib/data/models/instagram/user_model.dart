import "package:dart_mappable/dart_mappable.dart";
import "package:socials/data/models/instagram/access_token_model.dart";

part "user_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase, ignoreNull: true)
class InstagramUserModel with InstagramUserModelMappable {
  final String? id;
  final String? username;
  final String? accountType;
  final int? mediaCount;
  final InstagramAccessTokenModel? shortLivedToken;
  final InstagramAccessTokenModel? longLivedToken;

  InstagramUserModel({
    this.id,
    this.username,
    this.accountType,
    this.mediaCount,
    this.shortLivedToken,
    this.longLivedToken,
  });

  static const fromMap = InstagramUserModelMapper.fromMap;
  static const fromJson = InstagramUserModelMapper.fromJson;

  static final instagramUserOne = InstagramUserModel(
    id: "instagramUserOneId",
    username: "InstagramUserModel One",
  );

  static final instagramUserTwo = InstagramUserModel(
    id: "instagramUserTwoId",
    username: "InstagramUserModel Two",
  );

  static final instagramUserThree = InstagramUserModel(
    id: "instagramUserThreeId",
    username: "InstagramUserModel Three",
  );

  static final List<InstagramUserModel> fakeData = [
    instagramUserOne,
    instagramUserTwo,
    instagramUserThree,
  ];
}
