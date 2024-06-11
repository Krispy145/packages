import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/sources/review/_source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";

/// [ReviewDataRepository] is a class that defines the basic CRUD operations for the [ReviewModel] entity.
class ReviewDataRepository<Resp extends ResponseModel, T> {
  final ReviewDataSource<Resp, T> reviewDataSource;

  /// [ReviewDataRepository] constructor.
  ReviewDataRepository(this.reviewDataSource);

  /// [getAllCRUDSpecific] returns a list of [ReviewModel]s.
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>> getAllCRUDSpecific(CRUD crud) async {
    return reviewDataSource.getAllCRUDSpecific(crud);
  }

  /// [getAllCRUDSpecificByUserId] returns a list of [ReviewModel]s by [userId].
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>> getAllCRUDSpecificByUserId(CRUD crud, {required UUID userId}) async {
    return reviewDataSource.getAllCRUDSpecificByUserId(crud, userId: userId);
  }

  /// [getAllPagedCRUD] returns a list of [ReviewModel]s.
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>> getAllPagedCRUD(
    CRUD crud, {
    Resp? lastResponse,
    int? size,
    String? orderBy,
  }) async {
    return reviewDataSource.getAllPagedCRUD(
      crud,
      lastResponse: lastResponse,
      size: size,
      orderBy: orderBy,
    );
  }

  /// [getCRUDSpecifReviewModel] returns a [ReviewModel] by [id].
  Future<Pair<RequestResponse, Pair<ReviewModel?, T?>>> getCRUDSpecifReviewModel(String id) async {
    return reviewDataSource.getCRUDSpecifReviewModel(id);
  }

  /// [updateReviewModel] updates a [ReviewModel] by [id].
  Future<RequestResponse> updateReviewModel(String id, ReviewModel data) async {
    return reviewDataSource.updateReviewModel(id, data);
  }

  /// [getAllPagedCRUDByUserId] returns a list of [ReviewModel]s by [userId].
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>> getAllPagedCRUDByUserId(
    CRUD crud, {
    required UUID userId,
    Resp? lastResponse,
    int? size,
    String? orderBy,
  }) async {
    return reviewDataSource.getAllPagedCRUDByUserId(
      crud,
      userId: userId,
      lastResponse: lastResponse,
      size: size,
      orderBy: orderBy,
    );
  }

  /// [acceptCreate] accepts the creation of a [ReviewModel].
  Future<RequestResponse> acceptCreate(ReviewModel review) async {
    return reviewDataSource.acceptCreate(review);
  }

  /// [acceptUpdate] accepts the update of a [ReviewModel].
  Future<RequestResponse> acceptUpdate(ReviewModel review) async {
    return reviewDataSource.acceptUpdate(review);
  }

  /// [acceptDelete] accepts the deletion of a [ReviewModel].
  Future<RequestResponse> acceptDelete(ReviewModel review) async {
    return reviewDataSource.acceptDelete(review);
  }

  /// [rejectCreate] rejects the creation of a [ReviewModel].
  Future<RequestResponse> rejectCreate(ReviewModel review) async {
    return reviewDataSource.rejectCreate(review);
  }
}
