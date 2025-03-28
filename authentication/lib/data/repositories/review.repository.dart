import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/sources/review/_source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";

/// [ReviewDataRepository] is a class that defines the basic CRUD operations for the [ReviewModel] entity.
class ReviewDataRepository<T> {
  final ReviewDataSource<ResponseModel, T> reviewDataSource;

  /// [ReviewDataRepository] constructor.
  ReviewDataRepository(this.reviewDataSource);

  Future<
      Pair<RequestResponse,
          Pair<ResponseModel?, List<Pair<ReviewModel, T?>>>>> getAllPaged({
    ResponseModel? lastResponse,
    int? size,
    String? orderBy,
  }) {
    return reviewDataSource.getPage(
      lastResponse: lastResponse,
      size: size,
      orderBy: orderBy,
    );
  }

  /// [getAllCRUDSpecific] returns a list of [ReviewModel]s.
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>>
      getAllCRUDSpecific(CRUD crud) async {
    return reviewDataSource.getAllCRUDSpecific(crud);
  }

  /// [getAllCRUDSpecificByUserId] returns a list of [ReviewModel]s by [userId].
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>>
      getAllCRUDSpecificByUserId(CRUD crud, {required UUID userId}) async {
    return reviewDataSource.getAllCRUDSpecificByUserId(crud, userId: userId);
  }

  /// [getAllPagedCRUD] returns a list of [ReviewModel]s.
  Future<
      Pair<RequestResponse,
          Pair<ResponseModel?, List<Pair<ReviewModel, T?>>>>> getAllPagedCRUD(
    CRUD crud, {
    ResponseModel? lastResponse,
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
  Future<Pair<RequestResponse, Pair<ReviewModel?, T?>>>
      getCRUDSpecifReviewModel(String id) async {
    return reviewDataSource.getCRUDSpecifReviewModel(id);
  }

  /// [updateReviewModel] updates a [ReviewModel] by [id].
  Future<RequestResponse> updateReviewModel(String id, ReviewModel data) async {
    return reviewDataSource.updateReviewModel(id, data);
  }

  /// [getAllPagedCRUDByUserId] returns a list of [ReviewModel]s by [userId].
  Future<
          Pair<RequestResponse,
              Pair<ResponseModel?, List<Pair<ReviewModel, T?>>>>>
      getAllPagedCRUDByUserId(
    CRUD crud, {
    required UUID userId,
    ResponseModel? lastResponse,
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

  Future<RequestResponse> acceptCRUD(CRUD crud, ReviewModel review) async {
    switch (crud) {
      case CRUD.create:
        return reviewDataSource.acceptCreate(review);
      case CRUD.update:
        return reviewDataSource.acceptUpdate(review);
      case CRUD.delete:
        return reviewDataSource.acceptDelete(review);
      default:
        return RequestResponse.failure;
    }
  }

  Future<RequestResponse> rejectCRUD(CRUD crud, ReviewModel review) async {
    switch (crud) {
      case CRUD.create:
        return reviewDataSource.rejectCreate(review);
      case CRUD.update:
        return reviewDataSource.rejectUpdate(review);
      case CRUD.delete:
        return reviewDataSource.rejectDelete(review);
      default:
        return RequestResponse.failure;
    }
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

  /// [rejectUpdate] rejects the update of a [ReviewModel].
  Future<RequestResponse> rejectUpdate(ReviewModel review) async {
    return reviewDataSource.rejectUpdate(review);
  }

  /// [rejectDelete] rejects the deletion of a [ReviewModel].
  Future<RequestResponse> rejectDelete(ReviewModel review) async {
    return reviewDataSource.rejectDelete(review);
  }
}
