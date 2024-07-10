import "package:dart_mappable/dart_mappable.dart";

part "app_destination_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class AppDestinationModel with AppDestinationModelMappable {
  final String routeName;
  final Map<String, String>? arguments;

  const AppDestinationModel({
    required this.routeName,
    this.arguments,
  });

  static const fromMap = AppDestinationModelMapper.fromMap;
  static const fromJson = AppDestinationModelMapper.fromJson;

  /// [AppDestinationModel] constructor from string map.
  factory AppDestinationModel.fromStringMap(Map<String, dynamic> map) {
    return AppDestinationModel(
      routeName: map["route_name"] as String? ?? "unknown-route",
      arguments: map["arguments"] != null ? map["arguments"]! as Map<String, String> : null,
    );
  }

  /// [toStringMap] converts the [AppDestinationModel] to a string map.
  Map<String, String> toStringMap() {
    final map = <String, String>{};
    map["routeName"] = routeName;
    if (arguments != null) {
      map["arguments"] = arguments!.toString();
    }
    return map;
  }
}
