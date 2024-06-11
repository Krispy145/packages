import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/sources/firestore/secured_paginated.dart";
import "package:authentication/presentation/review/single/store.dart";
import "package:flutter/material.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/widgets/load_state/builder.dart";

/// [CRUDReviewBuilder] of the app.
class CRUDReviewBuilder<T, Q> extends StatelessWidget {
  final String? id;
  final ReviewModel? reviewModel;
  final PermissionModel currentUserPermissions;
  final CRUD crud;
  final SecuredPaginatedFirestoreDataSource<T, Q> firestoreDataSource;
  final Widget Function(BuildContext context, ReviewModel? review) reviewBuilder;

  /// [CRUDReviewBuilder] constructor.
  CRUDReviewBuilder({
    super.key,
    this.id,
    this.reviewModel,
    required this.currentUserPermissions,
    required this.crud,
    required this.firestoreDataSource,
    required this.reviewBuilder,
  })  : assert(
          id != null || reviewModel != null,
          "id or reviewModel must be provided.",
        ),
        store = CRUDReviewStore<T, Q>(
          crud: crud,
          currentUserPermissions: currentUserPermissions,
          firestoreDataSource: firestoreDataSource,
          id: id,
          initialReviewModel: reviewModel,
        );

  /// [store] is an instance of [CRUDReviewStore], used in the [LoadStateBuilder].
  /// initialized in the constructor.
  final CRUDReviewStore<T, Q> store;

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      errorBuilder: (context) => Center(
        child: Text("Error loading review: $id / $reviewModel."),
      ),
      loadedBuilder: (context) => reviewBuilder(context, store.currentReview),
    );
  }
}
