// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";

part "duration_model.mapper.dart";

@MappableClass()
class DurationModel with DurationModelMappable {
  final int? days_int;
  final int? hours_int;
  final int? minutes_int;
  final int? seconds_int;
  final int? milliseconds_int;
  final int? microseconds_int;

  const DurationModel({
    this.days_int,
    this.hours_int,
    this.minutes_int,
    this.seconds_int,
    this.milliseconds_int,
    this.microseconds_int,
  });

  static const fromMap = DurationModelMapper.fromMap;
  static const fromJson = DurationModelMapper.fromJson;

  Duration? asDuration({String? styleTypeName}) {
    return Duration(
      days: days_int ?? 0,
      hours: hours_int ?? 0,
      minutes: minutes_int ?? 0,
      seconds: seconds_int ?? 0,
      milliseconds: milliseconds_int ?? 0,
      microseconds: microseconds_int ?? 0,
    );
  }

  // static const empty = DurationModel(id: "");

  // static const durationOne = DurationModel(
  // id: "durationOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const durationTwo = DurationModel(
  // id: "durationTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const durationThree = DurationModel(
  // id: "durationThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<DurationModel> fakeData = [
  // durationOne,
  // durationTwo,
  // durationThree,
  // ];
}

// part "duration_model.freezed.dart";
// part "duration_model.g.dart";

// @freezed
// class DurationModel with _$DurationModel {
//   const factory DurationModel({
//     final int? days_int,
//     final int? hours_int,
//     final int? minutes_int,
//     final int? seconds_int,
//     final int? milliseconds_int,
//     final int? microseconds_int,
//   }) = _DurationModel;

//   const DurationModel._();

//   factory DurationModel.fromJson(Map<String, dynamic> json) =>
//       _$DurationModelFromJson(json);

//   Duration? asDuration({String? styleTypeName}) {
//     return Duration(
//       days: days_int ?? 0,
//       hours: hours_int ?? 0,
//       minutes: minutes_int ?? 0,
//       seconds: seconds_int ?? 0,
//       milliseconds: milliseconds_int ?? 0,
//       microseconds: microseconds_int ?? 0,
//     );
//   }
// }
