part of "_source.dart";

/// [DummyReviewDataSource] is a class that implements [ReviewDataSource] interface.
class DummyReviewDataSource<T> extends ReviewDataSource<DummyDataResponseModel<ReviewModel?>, T> {
  /// [DummyReviewDataSource] constructor.
  DummyReviewDataSource(
    super.sourcePath, {
    required super.currentUserPermissions,
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  List<ReviewModel> get fakeData => ReviewModel.fakeData;

  bool matchesID(String id, ReviewModel item) => item.id == id;

  @override
  Future<RequestResponse> acceptCreate(ReviewModel review) {
    // TODO: implement acceptCreate
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> acceptDelete(ReviewModel review) {
    // TODO: implement acceptDelete
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> acceptUpdate(ReviewModel review) {
    // TODO: implement acceptUpdate
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<DummyDataResponseModel<ReviewModel?>?, List<Pair<ReviewModel, T?>>>>> getPage({
    DummyDataResponseModel<ReviewModel?>? lastResponse,
    int? size,
    String? orderBy,
  }) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>> getAllCRUDSpecific(CRUD crud) {
    // TODO: implement getAllCRUDSpecific
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>> getAllCRUDSpecificByUserId(CRUD crud, {required UUID userId}) {
    // TODO: implement getAllCRUDSpecificByUserId
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<DummyDataResponseModel<ReviewModel?>?, List<Pair<ReviewModel, T?>>>>> getAllPagedCRUD(
    CRUD crud, {
    DummyDataResponseModel<ReviewModel?>? lastResponse,
    int? size,
    String? orderBy,
  }) {
    // TODO: implement getAllPagedCRUD
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<DummyDataResponseModel<ReviewModel?>?, List<Pair<ReviewModel, T?>>>>> getAllPagedCRUDByUserId(
    CRUD crud, {
    required UUID userId,
    DummyDataResponseModel<ReviewModel?>? lastResponse,
    int? size,
    String? orderBy,
  }) {
    // TODO: implement getAllPagedCRUDByUserId
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<ReviewModel?, T?>>> getCRUDSpecifReviewModel(String id) {
    // TODO: implement getCRUDSpecifReviewModel
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> rejectCreate(ReviewModel review) {
    // TODO: implement rejectCreate
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> rejectDelete(ReviewModel review) {
    // TODO: implement rejectDelete
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> rejectUpdate(ReviewModel review) {
    // TODO: implement rejectUpdate
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> updateReviewModel(String id, ReviewModel data) {
    // TODO: implement updateReviewModel
    throw UnimplementedError();
  }
}
