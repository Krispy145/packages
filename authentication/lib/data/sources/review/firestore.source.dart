part of "_source.dart";

// typedef T<T> = T Function(Map<String, dynamic> json);

/// [FirestoreReviewDataSource] is a class that extends [FirestoreDataSource].
class FirestoreReviewDataSource<T>
    extends ReviewDataSource<FirestoreResponseModel<ReviewModel?>, T> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  /// [FirestoreReviewDataSource] constructor.
  FirestoreReviewDataSource(
    super.sourcePath, {
    required super.currentUserPermissions,
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  CollectionReference<Map<String, dynamic>> get collectionReference =>
      firestore.collection("$sourcePath-reviews");

  @override
  Future<
      Pair<
          RequestResponse,
          Pair<FirestoreResponseModel<ReviewModel?>?,
              List<Pair<ReviewModel, T?>>>>> getPage({
    FirestoreResponseModel<ReviewModel?>? lastResponse,
    int? size,
    String? orderBy,
  }) async {
    if (!_canReview) return const Pair(RequestResponse.denied, Pair(null, []));

    Query<Map<String, dynamic>> query = collectionReference;

    if (orderBy != null) {
      query = query.orderBy(orderBy);
    }
    if (lastResponse != null) {
      if (lastResponse.lastDocumentSnapshot != null) {
        query = query.startAfterDocument(
          lastResponse.lastDocumentSnapshot!,
        );
      }
    }

    if (size != null) {
      query = query.limit(size);
    }
    return query.get().then(
      (response) {
        final result = response.docs.map((doc) {
          final review = ReviewModel.fromMap(doc.data());
          final writeMapToType = review.writeData != null
              ? convertDataTypeFromMap(review.writeData!)
              : null;
          return Pair(review, writeMapToType);
        }).toList();
        if (result.isEmpty) {
          return const Pair(RequestResponse.failure, Pair(null, []));
        }
        final _lastSnapshot = response.docs.isNotEmpty
            ? response.docs.last
            : lastResponse?.lastDocumentSnapshot;
        return Pair(
          RequestResponse.success,
          Pair(
            FirestoreResponseModel(lastDocumentSnapshot: _lastSnapshot),
            result,
          ),
        );
      },
    );
  }

  @override
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>>
      getAllCRUDSpecific(CRUD crud) async {
    try {
      if (!_canReview) return const Pair(RequestResponse.denied, []);
      final querySnapshot =
          await collectionReference.where("crud", isEqualTo: crud.name).get();
      final result = querySnapshot.docs.map((doc) {
        final review = ReviewModel.fromMap(doc.data());
        final writeMapToType = review.writeData != null
            ? convertDataTypeFromMap(review.writeData!)
            : null;
        return Pair(review, writeMapToType);
      }).toList();
      if (result.isEmpty) {
        return const Pair(RequestResponse.failure, []);
      }
      return Pair(RequestResponse.success, result);
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return const Pair(RequestResponse.failure, []);
    }
  }

  @override
  Future<Pair<RequestResponse, List<Pair<ReviewModel?, T?>>>>
      getAllCRUDSpecificByUserId(
    CRUD crud, {
    required UUID userId,
  }) async {
    try {
      if (!_canReview) return const Pair(RequestResponse.denied, []);
      final querySnapshot = await collectionReference
          .where("crud", isEqualTo: crud.name)
          .where(
            "user.id",
            isEqualTo: userId,
          )
          .get();
      final result = querySnapshot.docs.map((doc) {
        final review = ReviewModel.fromMap(doc.data());
        final writeMapToType = review.writeData != null
            ? convertDataTypeFromMap(review.writeData!)
            : null;
        return Pair(review, writeMapToType);
      }).toList();
      if (result.isEmpty) {
        return const Pair(RequestResponse.failure, []);
      }
      return Pair(RequestResponse.success, result);
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return const Pair(RequestResponse.failure, []);
    }
  }

  @override
  Future<
      Pair<
          RequestResponse,
          Pair<FirestoreResponseModel<ReviewModel?>?,
              List<Pair<ReviewModel, T?>>>>> getAllPagedCRUD(
    CRUD crud, {
    FirestoreResponseModel<ReviewModel?>? lastResponse,
    int? size,
    String? orderBy,
  }) async {
    if (!_canReview) return const Pair(RequestResponse.denied, Pair(null, []));
    Query query = collectionReference.where("crud", isEqualTo: crud.name);

    if (orderBy != null) {
      query = query.orderBy(orderBy);
    }
    if (lastResponse != null) {
      if (lastResponse.lastDocumentSnapshot != null) {
        query = query.startAfterDocument(
          lastResponse.lastDocumentSnapshot!,
        );
      }
    }

    if (size != null) {
      query = query.limit(size);
    }
    return query.get().then(
      (response) {
        final result = response.docs.map((doc) {
          final review =
              ReviewModel.fromMap(doc.data()! as Map<String, dynamic>);
          final writeMapToType = review.writeData != null
              ? convertDataTypeFromMap(review.writeData!)
              : null;
          return Pair(review, writeMapToType);
        }).toList();
        if (result.isEmpty) {
          return const Pair(RequestResponse.failure, Pair(null, []));
        }
        final _lastSnapshot = response.docs.isNotEmpty
            ? response.docs.last as QueryDocumentSnapshot<Map<String, dynamic>>
            : lastResponse?.lastDocumentSnapshot;
        return Pair(
          RequestResponse.success,
          Pair(
            FirestoreResponseModel(lastDocumentSnapshot: _lastSnapshot),
            result,
          ),
        );
      },
    );
  }

  @override
  Future<Pair<RequestResponse, Pair<ReviewModel?, T?>>>
      getCRUDSpecifReviewModel(String id) async {
    try {
      final documentSnapshot = await collectionReference.doc(id).get();
      final review = ReviewModel.fromMap(documentSnapshot.data()!);
      final writeMapToType = review.writeData != null
          ? convertDataTypeFromMap(review.writeData!)
          : null;
      return Pair(RequestResponse.success, Pair(review, writeMapToType));
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return const Pair(RequestResponse.failure, Pair(null, null));
    }
  }

  @override
  Future<RequestResponse> updateReviewModel(String id, ReviewModel data) async {
    try {
      await collectionReference.doc(id).set(
            data.toMap(),
            SetOptions(merge: true),
          );
      AppLogger.print("ReviewModel updated", [AuthenticationLoggers.review]);
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  @override
  Future<
      Pair<
          RequestResponse,
          Pair<FirestoreResponseModel<ReviewModel?>?,
              List<Pair<ReviewModel, T?>>>>> getAllPagedCRUDByUserId(
    CRUD crud, {
    required UUID userId,
    FirestoreResponseModel<ReviewModel?>? lastResponse,
    int? size,
    String? orderBy,
  }) async {
    try {
      if (!_canReview) {
        return const Pair(RequestResponse.denied, Pair(null, []));
      }
      var query = collectionReference.where("crud", isEqualTo: crud.name).where(
            "user.id",
            isEqualTo: userId,
          );

      if (orderBy != null) {
        query = query.orderBy(orderBy);
      }
      if (lastResponse != null) {
        if (lastResponse.lastDocumentSnapshot != null) {
          query = query.startAfterDocument(
            lastResponse.lastDocumentSnapshot!,
          );
        }
      }

      if (size != null) {
        query = query.limit(size);
      }

      final response = await query.get();

      final result = response.docs.map((doc) {
        final review = ReviewModel.fromMap(doc.data());
        final writeMapToType = review.writeData != null
            ? convertDataTypeFromMap(review.writeData!)
            : null;
        return Pair(review, writeMapToType);
      }).toList();
      if (result.isEmpty) {
        return const Pair(RequestResponse.failure, Pair(null, []));
      }

      return Pair(
        RequestResponse.success,
        Pair(
          FirestoreResponseModel(
            lastDocumentSnapshot: response.docs.isNotEmpty
                ? response.docs.last
                : lastResponse?.lastDocumentSnapshot,
          ),
          result,
        ),
      );
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return const Pair(RequestResponse.failure, Pair(null, []));
    }
  }

  @override
  Future<RequestResponse> acceptCreate(ReviewModel review) async {
    try {
      final documentReference = firestore.doc(review.documentReference);
      review.writeData!["id"] = review.id;
      await documentReference.set(review.writeData!, SetOptions(merge: true));
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  @override
  Future<RequestResponse> acceptUpdate(ReviewModel review) async {
    try {
      final documentReference = firestore.doc(review.documentReference);
      await documentReference.set(review.writeData!, SetOptions(merge: true));
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  @override
  Future<RequestResponse> acceptDelete(ReviewModel review) async {
    try {
      await firestore.doc(review.documentReference).delete();
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  @override
  Future<RequestResponse> rejectCreate(ReviewModel review) async {
    try {
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  @override
  Future<RequestResponse> rejectUpdate(ReviewModel review) async {
    try {
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  @override
  Future<RequestResponse> rejectDelete(ReviewModel review) async {
    try {
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }
}
