import "package:authentication/data/models/review_model.dart";
import "package:authentication/utils/loggers.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/logger/logger.dart";

/// [FirestoreReviewDataSource] is a class that extends [FirestoreDataSource].
class FirestoreReviewDataSource<Q> extends PaginatedFirestoreDataSource<ReviewModel, Q> {
  final String originalCollectionName;

  /// [FirestoreReviewDataSource] constructor.
  FirestoreReviewDataSource(this.originalCollectionName)
      : super(
          "$originalCollectionName-reviews",
          convertDataTypeFromMap: ReviewModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  Future<List<ReviewModel?>> getAllCRUDSpecific(CRUD crud) async {
    try {
      final querySnapshot = await collectionReference.where("crud", isEqualTo: crud.name).get();
      return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return [];
    }
  }

  Future<List<ReviewModel?>> getAllCRUDSpecificByUserId(CRUD crud, {required UUID userId}) async {
    try {
      final querySnapshot = await collectionReference.where("crud", isEqualTo: crud.name).where("user.id", isEqualTo: userId).get();
      return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return [];
    }
  }

  Future<List<ReviewModel?>> getAllPagedCRUD(
    CRUD crud, {
    FirestoreResponseModel<ReviewModel?>? lastResponse,
    int? size,
    String? orderBy,
  }) async {
    try {
      final querySnapshot = await collectionReference.where("crud", isEqualTo: crud.name).get();
      return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return [];
    }
  }

  Future<List<ReviewModel?>> getAllPagedCRUDByUserId(
    CRUD crud, {
    required UUID userId,
    FirestoreResponseModel<ReviewModel?>? lastResponse,
    int? size,
    String? orderBy,
  }) async {
    try {
      final querySnapshot = await collectionReference.where("crud", isEqualTo: crud.name).where("user.id", isEqualTo: userId).get();
      return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return [];
    }
  }

  Future<RequestResponse> acceptCreate(ReviewModel review) async {
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

  Future<RequestResponse> rejectCreate(ReviewModel review) async {
    try {
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  Future<RequestResponse> rejectUpdate(ReviewModel review) async {
    try {
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  Future<RequestResponse> rejectDelete(ReviewModel review) async {
    try {
      await collectionReference.doc(review.id).delete();
      return RequestResponse.success;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.review]);
      return RequestResponse.failure;
    }
  }

  @override
  Query<Map<String, dynamic>> buildQuery(Q query, Query<Map<String, dynamic>> collectionReference) {
    // TODO: implement buildQuery
    throw UnimplementedError();
  }
}
