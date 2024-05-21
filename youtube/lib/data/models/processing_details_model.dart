import "package:dart_mappable/dart_mappable.dart";
import "package:youtube/data/models/processing_progress_model.dart";

part "processing_details_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProcessingDetailsModel with ProcessingDetailsModelMappable {
  final String? processingStatus;
  final ProcessingProgressModel? processingProgress;
  final String? processingFailureReason;
  final String? fileDetailsAvailability;
  final String? processingIssuesAvailability;
  final String? tagSuggestionsAvailability;
  final String? editorSuggestionsAvailability;
  final String? thumbnailsAvailability;
  const ProcessingDetailsModel({
    this.processingStatus,
    this.processingProgress,
    this.processingFailureReason,
    this.fileDetailsAvailability,
    this.processingIssuesAvailability,
    this.tagSuggestionsAvailability,
    this.editorSuggestionsAvailability,
    this.thumbnailsAvailability,
  });

  static const fromMap = ProcessingDetailsModelMapper.fromMap;
  static const fromJson = ProcessingDetailsModelMapper.fromJson;

  // static const empty = ProcessingDetailsModel(id: "");

  // static const processingDetailsOne = ProcessingDetailsModel(
  //   id: "processingDetailsOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const processingDetailsTwo = ProcessingDetailsModel(
  //   id: "processingDetailsTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const processingDetailsThree = ProcessingDetailsModel(
  //   id: "processingDetailsThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<ProcessingDetailsModel> fakeData = [
  //   processingDetailsOne,
  //   processingDetailsTwo,
  //   processingDetailsThree,
  // ];
}
