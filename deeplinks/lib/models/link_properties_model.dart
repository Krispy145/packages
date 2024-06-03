import "package:dart_mappable/dart_mappable.dart";
import "package:flutter_branch_sdk/flutter_branch_sdk.dart";

part "link_properties_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class LinkPropertiesModel with LinkPropertiesModelMappable {
  @MappableValue(<String>[])
  final List<String> tags;
  final String? feature;
  final String? alias;
  final String? stage;
  final Duration? matchDuration;
  final String? channel;
  final String? campaign;

  const LinkPropertiesModel({
    this.tags = const [],
    this.feature,
    this.alias,
    this.stage,
    this.matchDuration,
    this.channel,
    this.campaign,
  });

  static const fromMap = LinkPropertiesModelMapper.fromMap;
  static const fromJson = LinkPropertiesModelMapper.fromJson;

  // static const empty = LinkPropertiesModel(id: "");

  // static const linkPropertiesOne = LinkPropertiesModel(
  //   id: "linkPropertiesOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const linkPropertiesTwo = LinkPropertiesModel(
  //   id: "linkPropertiesTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const linkPropertiesThree = LinkPropertiesModel(
  //   id: "linkPropertiesThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<LinkPropertiesModel> fakeData = [
  //   linkPropertiesOne,
  //   linkPropertiesTwo,
  //   linkPropertiesThree,
  // ];

  factory LinkPropertiesModel.empty() => const LinkPropertiesModel(
        feature: "",
        alias: "",
        stage: "",
        matchDuration: Duration.zero,
        channel: "",
        campaign: "",
      );

  BranchLinkProperties get branchLinkProperties => BranchLinkProperties(
        tags: tags,
        feature: feature ?? "",
        alias: alias ?? "",
        stage: stage ?? "",
        matchDuration: matchDuration?.inMilliseconds ?? 0,
        channel: channel ?? "",
        campaign: campaign ?? "",
      );
}


// import "package:flutter_branch_sdk/flutter_branch_sdk.dart";
// import "package:freezed_annotation/freezed_annotation.dart";

// part "link_properties_model.freezed.dart";
// part "link_properties_model.g.dart";

// @unfreezed
// class LinkPropertiesModel with _$LinkPropertiesModel {
//   factory LinkPropertiesModel({
//     @Default([]) List<String> tags,
//     String? feature,
//     String? alias,
//     String? stage,
//     Duration? matchDuration,
//     String? channel,
//     String? campaign,
//   }) = _LinkProperties;
//   const LinkPropertiesModel._();

//   factory LinkPropertiesModel.empty() => LinkPropertiesModel(
//         feature: "",
//         alias: "",
//         stage: "",
//         matchDuration: Duration.zero,
//         channel: "",
//         campaign: "",
//       );

//   BranchLinkProperties get branchLinkProperties => BranchLinkProperties(
//         tags: tags,
//         feature: feature ?? "",
//         alias: alias ?? "",
//         stage: stage ?? "",
//         matchDuration: matchDuration?.inMilliseconds ?? 0,
//         channel: channel ?? "",
//         campaign: campaign ?? "",
//       );

//   factory LinkPropertiesModel.fromJson(Map<String, dynamic> json) =>
//       _$LinkPropertiesModelFromJson(json);
// }
