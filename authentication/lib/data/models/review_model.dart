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
  final String title;
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
    required this.createdAt,
    required this.title,
  });

  static const fromMap = ReviewModelMapper.fromMap;
  static const fromJson = ReviewModelMapper.fromJson;

  static final empty = ReviewModel(
    id: "",
    title: "",
    crud: CRUD.create,
    documentReference: "",
    user: UserModel.anonymous,
    createdAt: DateTime.now(),
  );

  static final reviewOne = ReviewModel(
    id: "12345",
    crud: CRUD.create,
    title: "Review One Title",
    documentReference: "document/reference/id",
    user: UserModel.anonymous,
    createdAt: DateTime.now(),
  );

  static final reviewTwo = ReviewModel(
    id: "23456",
    crud: CRUD.update,
    title: "Review Two Title",
    documentReference: "document/reference/id",
    user: UserModel.anonymous,
    createdAt: DateTime.now(),
  );

  static final reviewThree = ReviewModel(
    id: "34567",
    title: "Review Three Title",
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
