import "package:utilities/helpers/stream_wrapper.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

class StreamSubscriptionManager {
  final List<StreamWrapper<dynamic>> _wrappers = [];

  /// Add a new StreamWrapper
  void add<T>(StreamWrapper<T> stream) {
    _wrappers.add(stream);
  }

  /// Cancel and remove a specific StreamWrapper
  void cancel<T>(StreamWrapper<T> wrapper) {
    wrapper.dispose();
    _wrappers.remove(wrapper);
  }

  /// Cancel all subscriptions
  Future<void> cancelAll() async {
    for (final wrapper in _wrappers) {
      AppLogger.print("Cancelling stream subscription: ${wrapper.name}", [UtilitiesLoggers.streamManager]);
      await wrapper.dispose();
    }
    _wrappers.clear();
  }
}
