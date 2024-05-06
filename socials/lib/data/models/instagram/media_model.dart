import "package:dart_mappable/dart_mappable.dart";

part "media_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InstagramMediaModel with InstagramMediaModelMappable {
  final String id;
  final String? username;
  final String? caption;
  final String? mediaType;
  final String? mediaUrl;
  final String? thumbnailUrl;
  final String? permalink;
  final String? timestamp;

  InstagramMediaModel({
    required this.id,
    this.username,
    this.caption,
    this.mediaType,
    this.mediaUrl,
    this.thumbnailUrl,
    this.permalink,
    this.timestamp,
  });

  static const fromMap = InstagramMediaModelMapper.fromMap;
  static const fromJson = InstagramMediaModelMapper.fromJson;

  static final mediaIdOne = InstagramMediaModel(
    id: "18083819998033743",
    username: "usernameOne",
    caption: "captionOne",
    mediaType: "image",
    mediaUrl:
        "https://imgs.search.brave.com/J6YI49-zkarfT7YdKJZ3nMK1KO5w7TAX4G7pZQt28G0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly85NGJm/MjIzOS5hZXJvY2Ru/LmNvbS9pbWFnZS1m/YWN0b3J5L2Q1ZGY5/MTM0MTM5ZTc2NTU5/ZDExNTU0ODAzZDZj/ZTVlM2FkZmM4NWN-/NDM2eDQzNi9pbWFn/ZXMvcHJvZHVjdHMv/YWZ5UlFiOERucFBa/Y2VLZGNSc3hka1pm/TEh0VEx0T2xnY0lh/SHVrcy5qcGc",
    thumbnailUrl: "thumbnailUrlOne",
    permalink: "permalinkOne",
    timestamp: "timestampOne",
  );

  static final mediaIdTwo = InstagramMediaModel(
    id: "18008847520044663",
    username: "usernameTwo",
    caption: "captionTwo",
    mediaType: "video",
    mediaUrl: "https://imgs.search.brave.com/-8FnEq0MJNNgmBKR671uUk2SDMIKJDerXGIgamvNEJo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/OTFPQ2ZkUGtDMEwu/anBn",
    thumbnailUrl: "thumbnailUrlTwo",
    permalink: "permalinkTwo",
    timestamp: "timestampTwo",
  );

  static final mediaIdThree = InstagramMediaModel(
    id: "17869877356248310",
    username: "usernameThree",
    caption: "captionThree",
    mediaType: "carousel",
    mediaUrl: "https://imgs.search.brave.com/IlB_nvUOjJsG9locmqVI7oP_NFFDLFZApOWMTqtpSpY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/OTFkZXhWRUJMY0wu/anBn",
    thumbnailUrl: "thumbnailUrlThree",
    permalink: "permalinkThree",
    timestamp: "timestampThree",
  );
}
