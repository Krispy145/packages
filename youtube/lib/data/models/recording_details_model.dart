// part 'recording_details_model.freezed.dart';
// part 'recording_details_model.g.dart';

// @freezed
// class RecordingDetailsModel with _$RecordingDetailsModel {
//   factory RecordingDetailsModel({
//     DateTime? recordingDate,
//   }) = _RecordingDetailsModel;

//   factory RecordingDetailsModel.fromJson(Map<String, dynamic> json) => _$RecordingDetailsModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "recording_details_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class RecordingDetailsModel with RecordingDetailsModelMappable {
  final DateTime? recordingDate;

  const RecordingDetailsModel({
    this.recordingDate,
  });

  static const fromMap = RecordingDetailsModelMapper.fromMap;
  static const fromJson = RecordingDetailsModelMapper.fromJson;

  // static const empty = RecordingDetailsModel(id: "");

  // static const recordingDetailsOne = RecordingDetailsModel(
  //   id: "recordingDetailsOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const recordingDetailsTwo = RecordingDetailsModel(
  //   id: "recordingDetailsTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const recordingDetailsThree = RecordingDetailsModel(
  //   id: "recordingDetailsThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<RecordingDetailsModel> fakeData = [
  //   recordingDetailsOne,
  //   recordingDetailsTwo,
  //   recordingDetailsThree,
  // ];
}
