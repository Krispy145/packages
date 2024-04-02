import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';

/// [AppDestination] is the destination of a notification.
@unfreezed
class AppDestination with _$AppDestination {
  /// [AppDestination] constructor.
  const factory AppDestination({
    required final String routeName,
    final Map<String, String>? arguments,
  }) = _AppDestination;
  const AppDestination._();

  /// [AppDestination] constructor from string map.
  factory AppDestination.fromStringMap(Map<String, dynamic> map) {
    return AppDestination(
      routeName: map['routeName'] as String? ?? 'unknown-route',
      arguments: map['arguments'] != null ? map['arguments']! as Map<String, String> : null,
    );
  }

  /// [toStringMap] converts the [AppDestination] to a string map.
  Map<String, String> toStringMap() {
    final map = <String, String>{};
    map['routeName'] = routeName;
    if (arguments != null) {
      map['arguments'] = arguments!.toString();
    }
    return map;
  }

  /// [AppDestination] constructor from JSON.
  factory AppDestination.fromJson(Map<String, dynamic> json) => _$AppDestinationFromJson(json);
}
