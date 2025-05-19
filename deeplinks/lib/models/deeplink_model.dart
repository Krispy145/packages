import "dart:convert";

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/foundation.dart" show kIsWeb;
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

  BranchUniversalObject get branchUniversalObject => BranchUniversalObject(
        canonicalIdentifier: canonicalIdentifier,
        canonicalUrl: canonicalUrl ?? "",
        title: title,
        contentDescription: contentDescription ?? "",
        imageUrl: imageUrl ?? "",
        contentMetadata: _mapToBranchContentMetaData(
          metadata,
          title,
          contentDescription,
          imageUrl,
        ),
        // keywords: keywords,
        publiclyIndex: publicIndex,
        locallyIndex: localIndex,
        // expirationDateInMilliSec: expirationDate?.millisecondsSinceEpoch ?? 0,
      );

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
    final raw = contentMetadata?.toMap()["destination"];
    if (raw is String) {
      final decoded = jsonDecode(raw);
      if (decoded is Map<String, dynamic>) {
        return AppDestinationModel.fromMap(decoded);
      }
    }
    return null;
  }

  // Map<String, dynamic> toWebMetadata() {
  //   final contentMetadata = _mapToBranchContentMetaData(
  //     metadata,
  //     title,
  //     contentDescription,
  //     imageUrl,
  //   );

  //   final map = {
  //     r"$canonical_identifier": canonicalIdentifier,
  //     r"$canonical_url": canonicalUrl ?? "",
  //     r"$og_title": title,
  //     r"$og_description": contentDescription ?? "",
  //     r"$og_image_url": imageUrl ?? "",
  //     r"$creation_timestamp": DateTime.now().millisecondsSinceEpoch,
  //     r"$publicly_indexable": publicIndex,
  //     r"$locally_indexable": localIndex,
  //     r"$desktop_url": fallbackUrl ?? "",
  //     ...?contentMetadata?.toMap(),
  //   };

  //   return map.map((key, value) => MapEntry(key, value is Map || value is List ? jsonEncode(value) : value));
  // }

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
    String title,
    String? contentDescription,
    String? imageUrl,
  ) {
    try {
      final contentMetadata = BranchContentMetaData();
      final rawMetadata = metadata ?? {};
      final safeMetadata = kIsWeb ? _sanitizeForWeb(rawMetadata) : rawMetadata;

      for (final entry in safeMetadata.entries) {
        contentMetadata.addCustomMetadata(entry.key, entry.value);
      }

      if (destination != null) {
        final destValue = kIsWeb ? jsonEncode(destination!.toMap()) : destination!.toMap();
        contentMetadata.addCustomMetadata("destination", destValue);
      }

      if (imageUrl != null || (imageUrl?.isNotEmpty ?? false)) {
        final _imageUrl = imageUrl?.replaceFirst("https://", "http://");
        contentMetadata.addCustomMetadata(r"$og_image_url", _imageUrl.toString());
      }
      if (fallbackUrl != null || (fallbackUrl?.isNotEmpty ?? false)) {
        contentMetadata.addCustomMetadata(r"$desktop_url", fallbackUrl.toString());
      }

      return contentMetadata;
    } catch (e) {
      print("[DeepLinkModel] Metadata mapping error: $e");
      return null;
    }
  }

  Map<String, dynamic> _sanitizeForWeb(Map<String, dynamic> input) {
    final output = <String, dynamic>{};
    input.forEach((key, value) {
      if (value is Map || value is List || value is! String && value is! num && value is! bool) {
        try {
          output[key] = jsonEncode(value);
        } catch (_) {
          output[key] = value.toString();
        }
      } else {
        output[key] = value;
      }
    });
    return output;
  }
}
