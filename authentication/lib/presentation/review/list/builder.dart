import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/sources/firestore/secured_paginated.dart";
import "package:authentication/presentation/review/list/store.dart";
import "package:flutter/material.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/layouts/paginated_list/builder.dart";
import "package:utilities/widgets/load_state/builder.dart";

/// [CRUDReviewsBuilder] of the app.

class CRUDReviewsBuilder<T, Q> extends StatelessWidget {
  final CRUD crud;
  final PermissionModel currentUserPermissions;
  final SecuredPaginatedFirestoreDataSource<T, Q> firestoreDataSource;
  final Widget Function(BuildContext context, ReviewModel? review) reviewBuilder;

  /// [CRUDReviewsBuilder] constructor.
  CRUDReviewsBuilder({
    super.key,
    required this.currentUserPermissions,
    required this.crud,
    required this.firestoreDataSource,
    required this.reviewBuilder,
  });

  /// [store] is an instance of [CRUDReviewsStore], used in the [LoadStateBuilder].
  late final CRUDReviewsStore<T, Q> store = CRUDReviewsStore(
    crud: crud,
    firestoreDataSource: firestoreDataSource,
    currentUserPermissions: currentUserPermissions,
  );

  @override
  Widget build(BuildContext context) {
    return PaginatedListBuilder<ReviewModel>.listView(
      store: store,
      itemBuilder: (context, index) {
        final reviewModel = store.results[index];
        return reviewBuilder(context, reviewModel);
      },
    );
  }
}
