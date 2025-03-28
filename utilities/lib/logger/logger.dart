import "package:flutter/foundation.dart";
import "package:get_it/get_it.dart";
import "package:logger/logger.dart";

/// [AppLogger] is the instance of the [AppLoggerInjector] class.
// ignore: non_constant_identifier_names
final AppLoggerInjector AppLogger = GetIt.instance<AppLoggerInjector>();

final Map<Level, AnsiColor> _levelColors = {
  Level.trace: const AnsiColor.fg(175), // Light Red
  Level.info: const AnsiColor.fg(4), // Blue
  Level.debug: const AnsiColor.fg(2), // Green
  Level.warning: const AnsiColor.fg(3), // Yellow
  Level.error: const AnsiColor.fg(9), // Bright Red
  Level.fatal: const AnsiColor.fg(1), // Bold Bright Red
};

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

  Level get level {
    switch (this) {
      case LoggerType.information:
        return Level.info;
      case LoggerType.error:
        return Level.error;
      case LoggerType.warning:
        return Level.warning;
      case LoggerType.confirmation:
        return Level.debug;
      default:
        return Level.info;
    }
  }
}

/// [AppLogger] class responsible for logging, utilizing the features.
class AppLoggerInjector {
  final Map<Enum, bool> logFeatures;
  final bool overrideFeatures;

  /// [AppLoggerInjector] constructor
  AppLoggerInjector(this.logFeatures, {this.overrideFeatures = false});

  /// [print] method responsible for printing log to the console.
  void print(
    String text,
    List<Enum> features, {
    LoggerType type = LoggerType.information,
  }) {
    final lineLength = (text.length + (features.join(", ").length) + 2) > 300
        ? 300
        : text.length + (features.join(", ").length) + 2;
    final _logger = Logger(
      printer: PrettyPrinter(
        printEmojis: false,
        lineLength: lineLength,
        methodCount: 0,
        levelColors: _levelColors,
      ),
    );
    if (!overrideFeatures) {
      if (type == LoggerType.error) {
        return _logger.e(
          "ERROR OVERRIDE - ${features.join(", ")}: $text",
        );
      }
      final activeFeatures = <Enum>[];
      for (final feature in logFeatures.entries) {
        if (features.contains(feature.key) && feature.value) {
          activeFeatures.add(feature.key);
        }
      }
      if (activeFeatures.isNotEmpty && kDebugMode) {
        _logger.log(
          type.level,
          "Features (${activeFeatures.join(', ')}): $text",
        );
      }
    } else {
      _logger.log(
        type.level,
        "ALL OVERRIDE - ${features.join(", ")}: $text",
      );
    }
  }
}
