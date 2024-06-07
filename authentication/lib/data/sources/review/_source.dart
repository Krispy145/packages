library data.sources.review;

import "package:authentication/data/models/review_model.dart";
import "package:authentication/utils/loggers.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/dummy/paginated.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

part "dummy.source.dart";
part "firestore.source.dart";

/// [ReviewDataSource] is an mixin that defines the functionality of a [ReviewDataSource].
sealed class ReviewDataSource<Resp extends ResponseModel, T> {
  /// [sourcePath] is the name of the collection
  final String sourcePath;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  final PermissionModel? currentUserPermissions;

  /// [ReviewDataSource] constructor.
  ReviewDataSource(
    this.sourcePath, {
    required this.currentUserPermissions,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  });

  bool get _canReview => currentUserPermissions?.reviews?[sourcePath] ?? currentUserPermissions?.role == "superAdmin";

  Future<List<Pair<ReviewModel?, T?>>> getAllCRUDSpecific(CRUD crud);

  Future<List<Pair<ReviewModel?, T?>>> getAllCRUDSpecificByUserId(
    CRUD crud, {
    required UUID userId,
  });

  Future<List<Pair<ReviewModel?, T?>>> getAllPagedCRUD(
    CRUD crud, {
    Resp? lastResponse,
    int? size,
    String? orderBy,
  });

  Future<Pair<ReviewModel?, T?>> getCRUDSpecifReviewModel(String id);

  Future<RequestResponse> updateReviewModel(String id, ReviewModel data);

  Future<List<Pair<ReviewModel?, T?>>> getAllPagedCRUDByUserId(
    CRUD crud, {
    required UUID userId,
    Resp? lastResponse,
    int? size,
    String? orderBy,
  });

  Future<RequestResponse> acceptCreate(ReviewModel review);

  Future<RequestResponse> acceptUpdate(ReviewModel review);

  Future<RequestResponse> acceptDelete(ReviewModel review);

  Future<RequestResponse> rejectCreate(ReviewModel review);

  Future<RequestResponse> rejectUpdate(ReviewModel review);

  Future<RequestResponse> rejectDelete(ReviewModel review);
}
