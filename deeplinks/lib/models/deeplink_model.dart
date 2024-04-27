import "package:flutter_branch_sdk/flutter_branch_sdk.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:navigation/models/destination.dart";

part "deeplink_model.freezed.dart";
part "deeplink_model.g.dart";

/// A model for the deep link.
@unfreezed
class DeepLinkModel with _$DeepLinkModel {
  /// factory DeepLinkModel
  factory DeepLinkModel({
    required String canonicalIdentifier,
    required String title,
    String? contentDescription,
    String? imageUrl,
    String? canonicalUrl,
    AppDestination? destination,
    Map<String, dynamic>? metadata,
    @Default([]) List<String> keywords,
    @Default(true) bool publicIndex,
    @Default(true) bool localIndex,
    DateTime? expirationDate,
  }) = _DeepLink;
  const DeepLinkModel._();

  /// Create a deep link from a BranchUniversalObject.
  factory DeepLinkModel.fromJson(Map<String, dynamic> json) =>
      _$DeepLinkModelFromJson(json);

  /// BranchUniversalObject from the deep link model.
  BranchUniversalObject get branchUniversalObject => BranchUniversalObject(
        canonicalIdentifier: canonicalIdentifier,
        canonicalUrl: canonicalUrl ?? "",
        title: title,
        contentDescription: contentDescription ?? "",
        imageUrl: imageUrl ?? "",
        contentMetadata: _mapToBranchContentMetaData(metadata),
        keywords: keywords,
        publiclyIndex: publicIndex,
        locallyIndex: localIndex,
        expirationDateInMilliSec: expirationDate?.millisecondsSinceEpoch ?? 0,
      );

  /// A model for the deep link, extracted from the BranchUniversalObject.
  DeepLinkModel fromBranchUniversalObject(
      BranchUniversalObject branchUniversalObject,) {
    return DeepLinkModel(
      canonicalIdentifier: branchUniversalObject.canonicalIdentifier,
      title: branchUniversalObject.title,
      contentDescription: branchUniversalObject.contentDescription,
      imageUrl: branchUniversalObject.imageUrl,
      canonicalUrl: branchUniversalObject.canonicalUrl,
      metadata: _removeDestinationFromBranchContentMetaData(
              branchUniversalObject.contentMetadata,)
          ?.toMap(),
      destination: _extractDestinationFromBranchContentMetaData(
          branchUniversalObject.contentMetadata,),
      keywords: branchUniversalObject.keywords,
      publicIndex: branchUniversalObject.publiclyIndex,
      localIndex: branchUniversalObject.locallyIndex,
      expirationDate: branchUniversalObject.expirationDateInMilliSec != 0
          ? DateTime.fromMillisecondsSinceEpoch(
              branchUniversalObject.expirationDateInMilliSec,)
          : null,
    );
  }

  AppDestination? _extractDestinationFromBranchContentMetaData(
      BranchContentMetaData? contentMetadata,) {
    final destination =
        branchUniversalObject.contentMetadata?.toMap()["destination"] != null
            ? AppDestination.fromJson(branchUniversalObject.contentMetadata
                ?.toMap()["destination"] as Map<String, dynamic>,)
            : null;
    return destination;
  }

  BranchContentMetaData? _removeDestinationFromBranchContentMetaData(
      BranchContentMetaData? contentMetadata,) {
    if (contentMetadata == null) return null;
    final metadata = contentMetadata.toMap()..remove("destination");
    final newContentMetadata = BranchContentMetaData();
    metadata.forEach(newContentMetadata.addCustomMetadata);
    return newContentMetadata;
  }

  BranchContentMetaData? _mapToBranchContentMetaData(
      Map<String, dynamic>? metadata,) {
    if (metadata == null) return null;
    final contentMetadata = BranchContentMetaData();
    metadata.forEach(contentMetadata.addCustomMetadata);
    if (destination != null) {
      contentMetadata.addCustomMetadata("destination", destination!.toJson());
    }
    return contentMetadata;
  }
}
