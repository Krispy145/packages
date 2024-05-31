//

// part 'localized_model.freezed.dart';
// part 'localized_model.g.dart';

// /// [LocalizedModel] is a class that represents the localized model.
// @freezed
// class LocalizedModel with _$LocalizedModel {
//   /// [LocalizedModel] constructor.
//   factory LocalizedModel({
//     required String title,
//     required String description,
//   }) = _LocalizedModel;

//   /// [LocalizedModel.fromJson] factory constructor.
//   factory LocalizedModel.fromJson(Map<String, dynamic> json) =>
//       _$LocalizedModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "localized_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class LocalizedModel with LocalizedModelMappable {
  final String title;
  final String description;

  LocalizedModel({required this.title, required this.description});

  static const fromMap = LocalizedModelMapper.fromMap;
  static const fromJson = LocalizedModelMapper.fromJson;

  // static const empty = LocalizedModel(id: "");

  // static const localizedOne = LocalizedModel(
  //   id: "localizedOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const localizedTwo = LocalizedModel(
  //   id: "localizedTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const localizedThree = LocalizedModel(
  //   id: "localizedThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<LocalizedModel> fakeData = [
  //   localizedOne,
  //   localizedTwo,
  //   localizedThree,
  // ];
}
