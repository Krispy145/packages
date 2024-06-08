// ignore_for_file: unused_element

import "package:authentication/data/models/review_model.dart";
import "package:authentication/presentation/review/list/store.dart";
import "package:mobx/mobx.dart";

part "store.g.dart";

/// [CRUDReviewStore] is a class that uses [_CRUDReviewStore] to manage state of the reviews feature.
class CRUDReviewStore<T, Q> = _CRUDReviewStore<T, Q> with _$CRUDReviewStore<T, Q>;

/// [_CRUDReviewStore<T,Q>] is a class that manages the state of the reviews feature.
abstract class _CRUDReviewStore<T, Q> extends CRUDReviewsStore<T, Q> with Store {
  final String? id;

  /// [_CRUDReviewStore] constructor.
  _CRUDReviewStore({
    required super.crud,
    required super.currentUserPermissions,
    required super.firestoreDataSource,
    this.id,
    ReviewModel? initialReviewModel,
  }) {
    _loadReview(initialReviewModel);
  }

  /// [currentReview] is an observable list of [ReviewModel]s.
  @observable
  ReviewModel? currentReview;

  void _loadReview(ReviewModel? initialReviewModel) {
    if (initialReviewModel == null && id != null) {
      setLoading();
      repository.getCRUDSpecifReviewModel(id!).then((value) {
        currentReview = value.second.first;
      });
    } else {
      currentReview = initialReviewModel;
    }
    if (currentReview != null) {
      setLoaded();
    } else {
      setEmpty();
    }
  }
}
