import "package:dart_mappable/dart_mappable.dart";

part "place_photo_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlacePhoto with PlacePhotoMappable {
  final double width;
  final double height;
  final List<String> htmlAttributions;
  final String photoReference;

  const PlacePhoto({
    required this.width,
    required this.height,
    required this.htmlAttributions,
    required this.photoReference,
  });

  static const fromMap = PlacePhotoMapper.fromMap;
  static const fromJson = PlacePhotoMapper.fromJson;
}
