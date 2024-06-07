import "package:dart_mappable/dart_mappable.dart";

import "user_model.dart";

part "review_model.mapper.dart";

@MappableEnum()
enum CRUD {
  create,
  read,
  update,
  delete;
}

@MappableClass(caseStyle: CaseStyle.snakeCase, includeSubClasses: [CRUD])
class ReviewModel with ReviewModelMappable {
  final String id;
  final String? name;
  final CRUD crud;
  final String documentReference;
  final UserModel user;
  final Map<String, dynamic>? writeData;
  final DateTime createdAt;

  const ReviewModel({
    required this.id,
    required this.crud,
    required this.documentReference,
    required this.user,
    this.writeData,
    this.name,
    required this.createdAt,
  });

  static const fromMap = ReviewModelMapper.fromMap;
  static const fromJson = ReviewModelMapper.fromJson;

  static final empty = ReviewModel(
    id: "",
    crud: CRUD.create,
    documentReference: "",
    user: UserModel.anonymous,
    createdAt: DateTime.now(),
  );

  static final reviewOne = ReviewModel(
    id: "reviewOneId",
    name: "Review Model One",
    crud: CRUD.create,
    documentReference: "document/reference/id",
    user: UserModel.anonymous,
    createdAt: DateTime.now(),
  );

  static final reviewTwo = ReviewModel(
    id: "reviewTwoId",
    name: "Review Model Two",
    crud: CRUD.update,
    documentReference: "document/reference/id",
    user: UserModel.anonymous,
    createdAt: DateTime.now(),
  );

  static final reviewThree = ReviewModel(
    id: "reviewThreeId",
    name: "Review Model Three",
    crud: CRUD.delete,
    documentReference: "document/reference/id",
    user: UserModel.anonymous,
    createdAt: DateTime.now(),
  );

  static final List<ReviewModel> fakeData = [
    reviewOne,
    reviewTwo,
    reviewThree,
  ];
}
