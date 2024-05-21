// part 'thumbnails_model.freezed.dart';
// part 'thumbnails_model.g.dart';

// /// [ThumbnailsModel] is a class that represents the thumbnails model.
// @freezed
// class ThumbnailsModel with _$ThumbnailsModel {
//   /// [ThumbnailsModel] constructor.
//   factory ThumbnailsModel({
//     required String url,
//     required int width,
//     required int height,
//   }) = _ThumbnailsModel;

//   /// [ThumbnailsModel.fromJson] factory constructor.
//   factory ThumbnailsModel.fromJson(Map<String, dynamic> json) => _$ThumbnailsModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "thumbnails_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ThumbnailsModel with ThumbnailsModelMappable {
  final String url;
  final int width;
  final int height;

  const ThumbnailsModel({
    required this.url,
    required this.width,
    required this.height,
  });

  static const fromMap = ThumbnailsModelMapper.fromMap;
  static const fromJson = ThumbnailsModelMapper.fromJson;

  // static const empty = ThumbnailsModel(id: "");

  // static const thumbnailsOne = ThumbnailsModel(
  //   id: "thumbnailsOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const thumbnailsTwo = ThumbnailsModel(
  //   id: "thumbnailsTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const thumbnailsThree = ThumbnailsModel(
  //   id: "thumbnailsThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<ThumbnailsModel> fakeData = [
  //   thumbnailsOne,
  //   thumbnailsTwo,
  //   thumbnailsThree,
  // ];
}
