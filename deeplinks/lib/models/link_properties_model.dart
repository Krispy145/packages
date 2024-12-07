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

  factory LinkPropertiesModel.empty() => const LinkPropertiesModel(
        feature: "",
        alias: "",
        stage: "",
        matchDuration: Duration.zero,
        channel: "",
        campaign: "",
      );

  static BranchLinkProperties defaultShareProperties = const LinkPropertiesModel(
    feature: "share",
    alias: "",
    stage: "",
    matchDuration: Duration.zero,
    channel: "share",
    campaign: "share",
  ).branchLinkProperties;

  BranchLinkProperties get branchLinkProperties => BranchLinkProperties(
        tags: tags,
        feature: feature ?? "share",
        alias: alias ?? "",
        stage: stage ?? "",
        matchDuration: matchDuration?.inMilliseconds ?? 0,
        channel: channel ?? "share",
        campaign: campaign ?? "share",
      );
}
