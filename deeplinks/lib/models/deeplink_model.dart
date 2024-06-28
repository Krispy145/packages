import "package:dart_mappable/dart_mappable.dart";
import "package:flutter_branch_sdk/flutter_branch_sdk.dart";
import "package:navigation/models/app_destination_model.dart";
import "package:utilities/data/typedefs.dart";

part "deeplink_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class DeepLinkModel with DeepLinkModelMappable {
  final String canonicalIdentifier;
  final String title;
  final String? contentDescription;
  final URL? imageUrl;
  final URL? canonicalUrl;
  final URL? fallbackUrl;
  final AppDestinationModel? destination;
  final Map<String, dynamic>? metadata;
  @MappableValue(<String>[])
  final List<String> keywords;
  @MappableValue(true)
  final bool publicIndex;
  @MappableValue(true)
  final bool localIndex;
  final DateTime? expirationDate;

  const DeepLinkModel({
    required this.canonicalIdentifier,
    required this.title,
    this.contentDescription,
    this.imageUrl,
    this.canonicalUrl,
    this.fallbackUrl,
    this.destination,
    this.metadata,
    this.keywords = const [],
    this.publicIndex = true,
    this.localIndex = true,
    this.expirationDate,
  });

  static const fromMap = DeepLinkModelMapper.fromMap;
  static const fromJson = DeepLinkModelMapper.fromJson;

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
    BranchUniversalObject branchUniversalObject,
  ) {
    return DeepLinkModel(
      canonicalIdentifier: branchUniversalObject.canonicalIdentifier,
      title: branchUniversalObject.title,
      contentDescription: branchUniversalObject.contentDescription,
      imageUrl: branchUniversalObject.imageUrl,
      canonicalUrl: branchUniversalObject.canonicalUrl,
      metadata: _removeDestinationFromBranchContentMetaData(
        branchUniversalObject.contentMetadata,
      )?.toMap(),
      destination: _extractDestinationFromBranchContentMetaData(
        branchUniversalObject.contentMetadata,
      ),
      keywords: branchUniversalObject.keywords,
      publicIndex: branchUniversalObject.publiclyIndex,
      localIndex: branchUniversalObject.locallyIndex,
      expirationDate: branchUniversalObject.expirationDateInMilliSec != 0
          ? DateTime.fromMillisecondsSinceEpoch(
              branchUniversalObject.expirationDateInMilliSec,
            )
          : null,
    );
  }

  AppDestinationModel? _extractDestinationFromBranchContentMetaData(
    BranchContentMetaData? contentMetadata,
  ) {
    final destination = branchUniversalObject.contentMetadata?.toMap()["destination"] != null
        ? AppDestinationModel.fromMap(
            branchUniversalObject.contentMetadata?.toMap()["destination"] as Map<String, dynamic>,
          )
        : null;
    return destination;
  }

  BranchContentMetaData? _removeDestinationFromBranchContentMetaData(
    BranchContentMetaData? contentMetadata,
  ) {
    if (contentMetadata == null) return null;
    final metadata = contentMetadata.toMap()..remove("destination");
    final newContentMetadata = BranchContentMetaData();
    metadata.forEach(newContentMetadata.addCustomMetadata);
    return newContentMetadata;
  }

  BranchContentMetaData? _mapToBranchContentMetaData(
    Map<String, dynamic>? metadata,
  ) {
    final _metadata = metadata ?? {};
    final contentMetadata = BranchContentMetaData();
    for (final key in _metadata.keys) {
      if (_metadata[key] != null && _metadata[key] != "") {
        contentMetadata.addCustomMetadata(key, _metadata[key]);
      }
    }
    if (destination != null) {
      contentMetadata.addCustomMetadata("destination", destination!.toJson());
    }
    if (fallbackUrl != null || (fallbackUrl?.isNotEmpty ?? false)) {
      contentMetadata.addCustomMetadata(r"$fallback_url", fallbackUrl.toString());
    }
    return contentMetadata;
  }
}
