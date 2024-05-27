import "package:dart_mappable/dart_mappable.dart";

part "localizations_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class LocalizationsModel with LocalizationsModelMappable {
  final String? title;
  final String? description;

  const LocalizationsModel({this.title, this.description});

  static const fromMap = LocalizationsModelMapper.fromMap;
  static const fromJson = LocalizationsModelMapper.fromJson;

  // static const empty = LocalizationsModel(id: "");

  // static const localizationsOne = LocalizationsModel(
  //   id: "localizationsOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const localizationsTwo = LocalizationsModel(
  //   id: "localizationsTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const localizationsThree = LocalizationsModel(
  //   id: "localizationsThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<LocalizationsModel> fakeData = [
  //   localizationsOne,
  //   localizationsTwo,
  //   localizationsThree,
  // ];
}
