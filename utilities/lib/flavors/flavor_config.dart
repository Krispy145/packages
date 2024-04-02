/// [Env] is an abstract class that defines the environment
abstract class Env {
  /// [name] is the name of the environment
  static const String name = "env";
}

/// [Environment] is an enum class that defines the different environments
enum Environment {
  /// [development] is the environment used for development
  development,

  /// [staging] is the environment used for staging
  staging,

  /// [production] is the environment used for production
  production;
}

/// [FlavorConfig] is a class that defines the configuration for each environment
class FlavorConfig {
  final String _environmentName;

  /// [environment] is the environment used for the app
  Environment? environment;

  /// [apiPrefix] is the prefix used for the api
  final String apiPrefix;

  /// [loggerFeatures] is the features used for the logger
  final Map<Enum, bool> loggerFeatures;

  /// [FlavorConfig] is the constructor for the class
  FlavorConfig(this._environmentName,
      {required this.apiPrefix, required this.loggerFeatures}) {
    _setEnvironment(_environmentName);
  }

  /// [_setEnvironment] is a private method that sets the environment
  void _setEnvironment(String environmentName) {
    environment =
        Environment.values.firstWhere((e) => e.name == environmentName);
  }
}
