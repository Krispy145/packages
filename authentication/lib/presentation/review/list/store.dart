import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/repositories/review.repository.dart";
import "package:authentication/data/sources/firestore/secured_paginated.dart";
import "package:authentication/data/sources/review/_source.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/paginated_list/store.dart";

part "store.g.dart";

/// [CRUDReviewsStore] is a class that uses [_CRUDReviewsStore] to manage state of the reviews feature.
class CRUDReviewsStore<T, Q> = _CRUDReviewsStore<T, Q> with _$CRUDReviewsStore<T, Q>;

/// [_CRUDReviewsStore] is a class that manages the state of the reviews feature.
abstract class _CRUDReviewsStore<T, Q> extends PaginatedListStore<ReviewModel> with Store {
  final PermissionModel currentUserPermissions;
  final CRUD crud;
  final SecuredPaginatedFirestoreDataSource<T, Q> firestoreDataSource;

  /// [_CRUDReviewsStore] constructor.
  _CRUDReviewsStore({
    required this.currentUserPermissions,
    required this.crud,
    required this.firestoreDataSource,
  });
  @override
  late final loadMoreFromRepository = loadMoreCRUDSpecific;

  Future<Pair<RequestResponse, List<ReviewModel?>>> loadMoreCRUDSpecific({
    int? limit,
    bool refresh = false,
  }) async {
    final loadedReviews = await repository.getAllPagedCRUD(crud);
    return Pair(
      loadedReviews.first,
      loadedReviews.second.map((e) => e.first).toList(),
    );
  }

  /// [repository] is an instance of [ReviewDataRepository].
  late final ReviewDataRepository<FirestoreResponseModel<ReviewModel?>, T> repository = ReviewDataRepository(
    FirestoreReviewDataSource(
      firestoreDataSource.collectionName,
      convertDataTypeFromMap: firestoreDataSource.convertDataTypeFromMap,
      convertDataTypeToMap: firestoreDataSource.convertDataTypeToMap,
      currentUserPermissions: currentUserPermissions,
    ),
  );

  /// [loadReviewModels] loads all [ReviewModel]s from the data source.
  @action
  Future<void> loadReviewModels() async {
    try {
      setLoading();
      final loadedReviews = await repository.getAllCRUDSpecific(crud);
      if (loadedReviews.second.isNotEmpty) {
        final _loadedResults = results.whereType<Pair<ReviewModel?, T?>>().map((e) => e.first).toList();
        results
          ..clear()
          ..addAll(_loadedResults);
        setLoaded();
      } else {
        setEmpty("No reviews yet");
      }
    } catch (e) {
      setError("There was a problem loading reviews");
    }
  }
}
