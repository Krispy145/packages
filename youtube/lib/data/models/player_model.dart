// part 'player_model.freezed.dart';
// part 'player_model.g.dart';

// /// [PlayerModel] is a class that represents the player model.

// @freezed
// class PlayerModel with _$PlayerModel {
//   factory PlayerModel({
//     required String embedHtml,
//     int? embedHeight,
//     int? embedWidth,
//   }) = _PlayerModel;

//   factory PlayerModel.fromJson(Map<String, dynamic> json) => _$PlayerModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "player_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class PlayerModel with PlayerModelMappable {
  final String embedHtml;
  final int? embedHeight;
  final int? embedWidth;

  const PlayerModel({
    required this.embedHtml,
    this.embedHeight,
    this.embedWidth,
  });

  static const fromMap = PlayerModelMapper.fromMap;
  static const fromJson = PlayerModelMapper.fromJson;

  // static const empty = PlayerModel(id: "");

  // static const playerOne = PlayerModel(
  //   id: "playerOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const playerTwo = PlayerModel(
  //   id: "playerTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const playerThree = PlayerModel(
  //   id: "playerThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<PlayerModel> fakeData = [
  //   playerOne,
  //   playerTwo,
  //   playerThree,
  // ];
}
