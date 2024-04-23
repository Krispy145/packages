import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_properties_model.freezed.dart';
part 'link_properties_model.g.dart';

@unfreezed
class LinkPropertiesModel with _$LinkPropertiesModel {
  factory LinkPropertiesModel({
    @Default([]) List<String> tags,
    String? feature,
    String? alias,
    String? stage,
    Duration? matchDuration,
    String? channel,
    String? campaign,
  }) = _LinkProperties;
  const LinkPropertiesModel._();

  factory LinkPropertiesModel.empty() => LinkPropertiesModel(
        feature: '',
        alias: '',
        stage: '',
        matchDuration: Duration.zero,
        channel: '',
        campaign: '',
      );

  BranchLinkProperties get branchLinkProperties => BranchLinkProperties(
        tags: tags,
        feature: feature ?? '',
        alias: alias ?? '',
        stage: stage ?? '',
        matchDuration: matchDuration?.inMilliseconds ?? 0,
        channel: channel ?? '',
        campaign: campaign ?? '',
      );

  factory LinkPropertiesModel.fromJson(Map<String, dynamic> json) => _$LinkPropertiesModelFromJson(json);
}
