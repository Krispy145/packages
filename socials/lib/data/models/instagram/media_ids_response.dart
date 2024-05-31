import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/sources/paginated.dart";

part "media_ids_response.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InstagramMediaIdsResponse extends ResponseModel with InstagramMediaIdsResponseMappable {
  final String id;
  final InstagramMedia? media;

  InstagramMediaIdsResponse({
    required this.id,
    this.media,
  });

  static const fromMap = InstagramMediaIdsResponseMapper.fromMap;
  static const fromJson = InstagramMediaIdsResponseMapper.fromJson;

  static final instagramMediaIdsResponseOne = InstagramMediaIdsResponse(
    id: "7358854787544146",
    media: InstagramMedia.fakeData.first,
  );

  static final instagramMediaIdsResponseTwo = InstagramMediaIdsResponse(
    id: "7358854787544146",
    media: InstagramMedia.fakeData.last,
  );

  static final List<InstagramMediaIdsResponse> fakeData = [
    instagramMediaIdsResponseOne,
    instagramMediaIdsResponseTwo,
  ];
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InstagramMedia with InstagramMediaMappable {
  final List<InstagramMediaIdModel> data;
  final InstagramPagingModel paging;

  InstagramMedia({
    required this.data,
    required this.paging,
  });

  static const fromMap = InstagramMediaMapper.fromMap;
  static const fromJson = InstagramMediaMapper.fromJson;

  static final instagramMediaOne = InstagramMedia(
    data: InstagramMediaIdModel.fakeData,
    paging: InstagramPagingModel.pagingOne,
  );

  static final instagramMediaTwo = InstagramMedia(
    data: InstagramMediaIdModel.fakeData,
    paging: InstagramPagingModel.pagingTwo,
  );

  static final List<InstagramMedia> fakeData = [
    instagramMediaOne,
    instagramMediaTwo,
  ];
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InstagramMediaIdModel with InstagramMediaIdModelMappable {
  final String id;

  InstagramMediaIdModel({
    required this.id,
  });

  static const fromMap = InstagramMediaIdModelMapper.fromMap;
  static const fromJson = InstagramMediaIdModelMapper.fromJson;

  static final mediaIdOne = InstagramMediaIdModel(
    id: "18083819998033743",
  );

  static final mediaIdTwo = InstagramMediaIdModel(
    id: "18008847520044663",
  );

  static final mediaIdThree = InstagramMediaIdModel(
    id: "17869877356248310",
  );

  static final List<InstagramMediaIdModel> fakeData = [
    mediaIdOne,
    mediaIdTwo,
    mediaIdThree,
  ];
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InstagramPagingModel with InstagramPagingModelMappable {
  final InstagramCursorsModel cursors;
  final String next;

  InstagramPagingModel({
    required this.cursors,
    required this.next,
  });

  static const fromMap = InstagramPagingModelMapper.fromMap;
  static const fromJson = InstagramPagingModelMapper.fromJson;

  static final pagingOne = InstagramPagingModel(
    cursors: InstagramCursorsModel.cursorsOne,
    next:
        "https://graph.instagram.com/v19.0/17841400900077425/media?access_token=IGQWRQTEFNY0R0UkN1TnlvQThoTFp2SVZAKS05IdmswbVNjZAGxzc0FhaV84ZAGdGOUYwcU1ncUZApZAUpwWkJMRDJJRWhFcW1BVWdldndESDZAtSnI5bXNhMkFCMTM1eE1xcjJjY25QNldzeG5mSGZAQVzF0bUVXQlhldEhwbE55RFZAhdUFZAUU0ZD&limit=25&after=QVFIUkk3NXFVaVlUZAlVzYVMwcEtwcXN0WnNGSHhUcEtCcTR0c3NGNkFyOXphbG5yTjhIcVZA6UlpQejhtUDVvV09fS1dQU1luTzNINjZAMY2xuc3FFZA0lNeGF3",
  );

  static final pagingTwo = InstagramPagingModel(
    cursors: InstagramCursorsModel.cursorsTwo,
    next:
        "https://graph.instagram.com/v19.0/17841400900077425/media?access_token=IGQWRQTEFNY0R0UkN1TnlvQThoTFp2SVZAKS05IdmswbVNjZAGxzc0FhaV84ZAGdGOUYwcU1ncUZApZAUpwWkJMRDJJRWhFcW1BVWdldndESDZAtSnI5bXNhMkFCMTM1eE1xcjJjY25QNldzeG5mSGZAQVzF0bUVXQlhldEhwbE55RFZAhdUFZAUU0ZD&limit=25&after=QVFIUkk3NXFVaVlUZAlVzYVMwcEtwcXN0WnNGSHhUcEtCcTR0c3NGNkFyOXphbG5yTjhIcVZA6UlpQejhtUDVvV09fS1dQU1luTzNINjZAMY2xuc3FFZA0lNeGF3",
  );
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InstagramCursorsModel with InstagramCursorsModelMappable {
  final String before;
  final String after;

  InstagramCursorsModel({
    required this.before,
    required this.after,
  });

  static const fromMap = InstagramCursorsModelMapper.fromMap;
  static const fromJson = InstagramCursorsModelMapper.fromJson;

  static final cursorsOne = InstagramCursorsModel(
    before: "QVFIUlZAsMnJGeEtYSDMzcjBoc3V5WVE1NV9ERlFLMkNrUjNfZAFFybk9mVDVqeHNKeVdQSC1aWm1IVFl4eWEwRExCLTYzd1J6MkktV215VWF1dFVQOTI1UVVB",
    after: "QVFIUkk3NXFVaVlUZAlVzYVMwcEtwcXN0WnNGSHhUcEtCcTR0c3NGNkFyOXphbG5yTjhIcVZA6UlpQejhtUDVvV09fS1dQU1luTzNINjZAMY2xuc3FFZA0lNeGF3",
  );

  static final cursorsTwo = InstagramCursorsModel(
    before: "QVFIUlZAsMnJGeEtYSDMzcjBoc3V5WVE1NV9ERlFLMkNrUjNfZAFFybk9mVDVqeHNKeVdQSC1aWm1IVFl4eWEwRExCLTYzd1J6MkktV215VWF1dFVQOTI1UVVB",
    after: "QVFIUkk3NXFVaVlUZAlVzYVMwcEtwcXN0WnNGSHhUcEtCcTR0c3NGNkFyOXphbG5yTjhIcVZA6UlpQejhtUDVvV09fS1dQU1luTzNINjZAMY2xuc3FFZA0lNeGF3",
  );
}
