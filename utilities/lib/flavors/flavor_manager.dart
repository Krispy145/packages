import 'package:flutter/cupertino.dart';
import 'package:utilities/flavors/flavor_config.dart';

/// [FlavorManager] is the class that will be used to manage the flavor configuration.
class FlavorManager extends ChangeNotifier {
  /// [flavorConfig] is the configuration that will be used to determine which flavor to use.
  final FlavorConfig flavorConfig;

  /// [FlavorManager] constructor
  FlavorManager({required this.flavorConfig});
}
