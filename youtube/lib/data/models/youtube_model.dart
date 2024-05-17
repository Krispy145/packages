import "package:dart_mappable/dart_mappable.dart";

part "youtube_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class YoutubeModel with YoutubeModelMappable {
  final String id;
  final String? name;

  const YoutubeModel({
    required this.id,
    this.name,
  });

  static const fromMap = YoutubeModelMapper.fromMap;
  static const fromJson = YoutubeModelMapper.fromJson;

  static const empty = YoutubeModel(id: "");

  static const youtubeOne = YoutubeModel(
    id: "youtubeOneId",
    name: "Youtube One",
  );

  static const youtubeTwo = YoutubeModel(
    id: "youtubeTwoId",
    name: "Youtube Two",
  );

  static const youtubeThree = YoutubeModel(
    id: "youtubeThreeId",
    name: "Youtube Three",
  );

  static final List<YoutubeModel> fakeData = [
    youtubeOne,
    youtubeTwo,
    youtubeThree,
  ];
}
