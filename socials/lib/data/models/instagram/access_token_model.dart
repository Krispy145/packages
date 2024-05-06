import "package:dart_mappable/dart_mappable.dart";

part "access_token_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InstagramAccessTokenModel with InstagramAccessTokenModelMappable {
  final String accessToken;
  final String? tokenType;
  final int? expiresIn;
  final int? userId;

  InstagramAccessTokenModel({
    required this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.userId,
  });

  InstagramAccessTokenModel.short({
    required this.accessToken,
    required this.userId,
  })  : tokenType = null,
        expiresIn = null;

  InstagramAccessTokenModel.long({
    required this.accessToken,
    this.tokenType,
    this.expiresIn,
  }) : userId = null;

  static const fromMap = InstagramAccessTokenModelMapper.fromMap;
  static const fromJson = InstagramAccessTokenModelMapper.fromJson;

  static final accessTokenOne = InstagramAccessTokenModel.short(
    accessToken: "accessTokenOne",
    userId: 1,
  );

  static final accessTokenTwo = InstagramAccessTokenModel.long(
    accessToken: "accessTokenTwo",
    tokenType: "bearer",
    expiresIn: 3600,
  );

  static final accessTokenThree = InstagramAccessTokenModel.long(
    accessToken: "accessTokenThree",
    tokenType: "bearer",
    expiresIn: 3600,
  );

  static final List<InstagramAccessTokenModel> fakeData = [
    accessTokenOne,
    accessTokenTwo,
    accessTokenThree,
  ];
}
