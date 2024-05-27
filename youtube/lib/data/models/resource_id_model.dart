import "package:dart_mappable/dart_mappable.dart";

part "resource_id_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class ResourceIdModel with ResourceIdModelMappable {
  final String kind;
  final String videoId;

  const ResourceIdModel({
    required this.kind,
    required this.videoId,
  });

  static const fromMap = ResourceIdModelMapper.fromMap;
  static const fromJson = ResourceIdModelMapper.fromJson;

  // static const empty = ResourceIdModel(id: "");

  // static const idOne = ResourceIdModel(
  // id: "idOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const idTwo = ResourceIdModel(
  // id: "idTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const idThree = ResourceIdModel(
  // id: "idThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<ResourceIdModel> fakeData = [
  // idOne,
  // idTwo,
  // idThree,
  // ];
}
