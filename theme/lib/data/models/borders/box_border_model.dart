import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";

part "box_border_model.mapper.dart";

@MappableClass()
class BoxBorderModel with BoxBorderModelMappable {
  final BorderSideModel? top;
  final BorderSideModel? bottom;
  final BorderSideModel? left;
  final BorderSideModel? right;

  const BoxBorderModel({
    required this.top,
    required this.bottom,
    required this.left,
    required this.right,
  });

  static const fromMap = BoxBorderModelMapper.fromMap;
  static const fromJson = BoxBorderModelMapper.fromJson;

  BoxBorder asBoxBorder({String? styleTypeName}) {
    return Border(
      top: top?.asBorderSide() ?? BorderSide.none,
      bottom: bottom?.asBorderSide() ?? BorderSide.none,
      left: left?.asBorderSide() ?? BorderSide.none,
      right: right?.asBorderSide() ?? BorderSide.none,
    );
  }

  // static const empty = BoxBorderModel(id: "");

  // static const boxBorderOne = BoxBorderModel(
  // id: "boxBorderOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const boxBorderTwo = BoxBorderModel(
  // id: "boxBorderTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const boxBorderThree = BoxBorderModel(
  // id: "boxBorderThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<BoxBorderModel> fakeData = [
  // boxBorderOne,
  // boxBorderTwo,
  // boxBorderThree,
  // ];
}

// import "package:flutter/material.dart";
// 
// import "package:theme/data/models/borders/border_side_model.dart";

// part "box_border_model.freezed.dart";
// part "box_border_model.g.dart";

// @freezed
// class BoxBorderModel with _$BoxBorderModel {
//   const factory BoxBorderModel({
//     final BorderSideModel? top,
//     final BorderSideModel? bottom,
//     final BorderSideModel? left,
//     final BorderSideModel? right,
//   }) = _BoxBorderModel;

//   const BoxBorderModel._();

//   factory BoxBorderModel.fromJson(Map<String, dynamic> json) =>
//       _$BoxBorderModelFromJson(json);

//   BoxBorder asBoxBorder({String? styleTypeName}) {
//     return Border(
//       top: top?.asBorderSide() ?? BorderSide.none,
//       bottom: bottom?.asBorderSide() ?? BorderSide.none,
//       left: left?.asBorderSide() ?? BorderSide.none,
//       right: right?.asBorderSide() ?? BorderSide.none,
//     );
//   }
// }
