import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

/// [AppLogger] is the instance of the [AppLoggerInjector] class.
// ignore: non_constant_identifier_names
final AppLoggerInjector AppLogger = GetIt.instance<AppLoggerInjector>();

/// [Logger] class responsible for logging.
final _logger = Logger(
  printer: PrettyPrinter(
    printEmojis: false,
    levelColors: {
      Level.trace: const AnsiColor.fg(175), // Light Red
      Level.info: const AnsiColor.fg(4), // Blue
      Level.debug: const AnsiColor.fg(2), // Green
      Level.warning: const AnsiColor.fg(3), // Yellow
      Level.error: const AnsiColor.fg(9), // Bright Red
      Level.fatal: const AnsiColor.fg(1), // Bold Bright Red
    },
  ),
);

/// enum [LoggerType] class responsible for storing log types.
enum LoggerType {
  /// [information] is the log type for information.
  information,

  /// [error] is the log type for error.
  error,

  /// [warning] is the log type for warning.
  warning,

  /// [confirmation] is the log type for confirmation.
  confirmation,

  /// [reset] is the log type for reset.
  reset;
}

// /// [LoggerFeature] class responsible for storing feature references.
// class LoggerFeature {
//   /// [enabled] is the boolean value to enable or disable the feature.
//   final bool enabled;

//   /// [name] is the name of the feature.
//   final String name;

//   /// [LoggerFeature] is the constructor for the class.
//   LoggerFeature(this, this.enabled);
// }

/// [PackageFeatures] class responsible for storing base feature references.
/// Used to determine which features are enabled for logging.
enum PackageFeatures {
  /// [navigation] is the feature reference for navigation.
  navigation,

  /// [connection] is the feature reference for connection.
  connection,

  /// [dependencyInjection] is the feature reference for dependency injection.
  dependencyInjection,

  /// [theme] is the feature reference for theme.
  theme,

  /// [adMob] is the feature reference for adMob.
  adMob,

  /// [notifications] is the feature reference for notifications.
  notifications,

  /// [localDataSource] is the feature reference for localDataSource.
  localDataSource,

  /// [secureDataSource] is the feature reference for secureDataSource.
  secureDataSource,

  /// [apiDataSource] is the feature reference for apiDataSource.
  apiDataSource,

  /// [firestoreDataSource] is the feature reference for firestoreDataSource.
  firestoreDataSource,

  /// [supabaseDataSource] is the feature reference for supabaseDataSource.
  supabaseDataSource,

  /// [authentication] is the feature reference for authentication.
  authentication,

  /// [converters] is the feature reference for converters.
  converters,

  /// [deeplinks] is the feature reference for deeplinks.
  deeplinks;
}

// /// [PackageFeatures.$&] class responsible for storing base feature references.
// class LoggerFeatures {
//   /// [navigation] is the feature reference for navigation.
//   static final LoggerFeature navigation = LoggerFeature("NAVIGATION", false);

//   /// [connection] is the feature reference for connection.
//   static final LoggerFeature connection = LoggerFeature("CONNECTION", false);

//   /// [dependencyInjection] is the feature reference for dependency injection.
//   static final LoggerFeature dependencyInjection = LoggerFeature("INJECTION", false);

//   /// [theme] is the feature reference for theme.
//   static final LoggerFeature theme = LoggerFeature("THEME", false);

//   /// [adMob] is the feature reference for adMob.
//   static final LoggerFeature adMob = LoggerFeature("AD_MOB", false);

//   /// [notifications] is the feature reference for notifications.
//   static final LoggerFeature notifications = LoggerFeature("NOTIFICATIONS", false);

//   /// [localDataSource] is the feature reference for notifications.
//   static final LoggerFeature localDataSource = LoggerFeature("LOCAL_DATASOURCE", true);

//   /// [secureDataSource] is the feature reference for secureDataSource.
//   static final LoggerFeature secureDataSource = LoggerFeature("SECURE_DATASOURCE", false);

//   /// [apiDataSource] is the feature reference for apiDataSource.
//   static final LoggerFeature apiDataSource = LoggerFeature("API_DATASOURCE", false);

//   /// [firestoreDataSource] is the feature reference for firestoreDataSource.
//   static final LoggerFeature firestoreDataSource = LoggerFeature("FIRESTORE_DATASOURCE", true);

//   /// [authentication] is the feature reference for authentication.
//   static final LoggerFeature authentication = LoggerFeature("AUTHENTICATION", true);

//   /// [converters] is the feature reference for converters.
//   static final LoggerFeature converters = LoggerFeature("CONVERTERS", false);

//   /// [deeplinks] is the feature reference for deeplinks.
//   static final LoggerFeature deeplinks = LoggerFeature("DEEPLINKS", true);
// }

/// [AppLogger] class responsible for logging, utilizing the features.
class AppLoggerInjector {
  final Map<Enum, bool> logFeatures;

  /// [AppLoggerInjector] constructor
  AppLoggerInjector(this.logFeatures);

  /// [print] method responsible for printing log to the console.
  void print(
    String text,
    List<Enum> features, {
    LoggerType type = LoggerType.information,
  }) {
    final activeFeatures = <Enum>[];
    for (final feature in logFeatures.entries) {
      if (features.contains(feature.key) && feature.value) {
        activeFeatures.add(feature.key);
      }
    }
    if (activeFeatures.isNotEmpty && kDebugMode) {
      // Determine the log level based on LoggerType
      Level level;
      switch (type) {
        case LoggerType.information:
          level = Level.info;
          break;
        case LoggerType.error:
          level = Level.error;
          break;
        case LoggerType.warning:
          level = Level.warning;
          break;
        case LoggerType.confirmation:
          level = Level.debug;
          break;
        default:
          level = Level.info;
      }
      _logger.log(
        level,
        "Features (${activeFeatures.join(', ')}): $text",
      );
    }
  }
}
