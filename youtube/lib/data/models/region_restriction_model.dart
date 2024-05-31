// part 'region_restriction_model.freezed.dart';
// part 'region_restriction_model.g.dart';

// @freezed
// class RegionRestrictionModel with _$RegionRestrictionModel {
//   factory RegionRestrictionModel({
//     List<String>? allowed,
//     List<String>? blocked,
//   }) = _RegionRestrictionModel;

//   factory RegionRestrictionModel.fromJson(Map<String, dynamic> json) => _$RegionRestrictionModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "region_restriction_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class RegionRestrictionModel with RegionRestrictionModelMappable {
  final List<String>? allowed;
  final List<String>? blocked;

  const RegionRestrictionModel({this.allowed, this.blocked});

  static const fromMap = RegionRestrictionModelMapper.fromMap;
  static const fromJson = RegionRestrictionModelMapper.fromJson;

  // static const empty = RegionRestrictionModel(id: "");

  // static const regionRestrictionOne = RegionRestrictionModel(
  //   id: "regionRestrictionOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const regionRestrictionTwo = RegionRestrictionModel(
  //   id: "regionRestrictionTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const regionRestrictionThree = RegionRestrictionModel(
  //   id: "regionRestrictionThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<RegionRestrictionModel> fakeData = [
  //   regionRestrictionOne,
  //   regionRestrictionTwo,
  //   regionRestrictionThree,
  // ];
}
