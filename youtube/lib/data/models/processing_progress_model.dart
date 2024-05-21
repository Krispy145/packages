// part 'processing_progress_model.freezed.dart';
// part 'processing_progress_model.g.dart';

// @freezed
// class ProcessingProgressModel with _$ProcessingProgressModel {
//   factory ProcessingProgressModel({
//     int? partsTotal,
//     int? partsProcessed,
//     int? timeLeftMs,
//   }) = _ProcessingProgressModel;

//   factory ProcessingProgressModel.fromJson(Map<String, dynamic> json) => _$ProcessingProgressModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "processing_progress_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProcessingProgressModel with ProcessingProgressModelMappable {
  final int? partsTotal;
  final int? partsProcessed;
  final int? timeLeftMs;

  const ProcessingProgressModel({
    this.partsTotal,
    this.partsProcessed,
    this.timeLeftMs,
  });

  static const fromMap = ProcessingProgressModelMapper.fromMap;
  static const fromJson = ProcessingProgressModelMapper.fromJson;

  // static const empty = ProcessingProgressModel(id: "");

  // static const processingProgressOne = ProcessingProgressModel(
  //   id: "processingProgressOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const processingProgressTwo = ProcessingProgressModel(
  //   id: "processingProgressTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const processingProgressThree = ProcessingProgressModel(
  //   id: "processingProgressThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<ProcessingProgressModel> fakeData = [
  //   processingProgressOne,
  //   processingProgressTwo,
  //   processingProgressThree,
  // ];
}
