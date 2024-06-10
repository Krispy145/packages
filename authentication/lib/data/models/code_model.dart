import "package:dart_mappable/dart_mappable.dart";

part "code_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CodeModel with CodeModelMappable {
  final String id;
  final String salt;

  const CodeModel({
    required this.id,
    required this.salt,
  });

  static const fromMap = CodeModelMapper.fromMap;
  static const fromJson = CodeModelMapper.fromJson;

  static const empty = CodeModel(
    id: "",
    salt: "",
  );

  static const codeOne = CodeModel(
    id: "codeOneId",
    salt: "codeOneId",
  );

  static const codeTwo = CodeModel(
    id: "codeTwoId",
    salt: "codeTwoId",
  );

  static const codeThree = CodeModel(
    id: "codeThreeId",
    salt: "codeThreeId",
  );

  static final List<CodeModel> fakeData = [
    codeOne,
    codeTwo,
    codeThree,
  ];
}
