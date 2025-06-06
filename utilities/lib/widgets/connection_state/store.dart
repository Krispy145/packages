import "package:internet_connection_checker_plus/internet_connection_checker_plus.dart";
import "package:mobx/mobx.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";
import "package:utilities/widgets/connection_state/states.dart";

part "store.g.dart";

/// [ConnectionStateStore] is the store that will be used to manage the state of the connection.
class ConnectionStateStore = _ConnectionStateStore with _$ConnectionStateStore;

/// [_ConnectionStateStore] is the base store that will be used to manage the state of the connection.
abstract class _ConnectionStateStore with Store {
  /// [_ConnectionStateStore] constructor
  _ConnectionStateStore() {
    _listenOnConnectionStatus();
  }

  /// [currentState] is the state that will be used to manage the state of the connection.
  @observable
  ConnectionStoreState currentState = ConnectionStoreState.offline;

  /// [isOffline] is a getter that will be used to check if the user is offline.
  @computed
  bool get isOffline => currentState == ConnectionStoreState.offline;

  /// [isOnline] is a getter that will be used to check if the user is online.
  @computed
  bool get isOnline => currentState == ConnectionStoreState.online;

  /// [isSyncing] is a getter that will be used to check if the user is syncing.
  @computed
  bool get isSyncing => currentState == ConnectionStoreState.syncing;

  /// [isPaused] is a getter that will be used to check if the user is paused.
  @computed
  bool get isPaused => currentState == ConnectionStoreState.paused;

  /// [isCancelled] is a getter that will be used to check if the user is canceled.
  @computed
  bool get isCancelled => currentState == ConnectionStoreState.canceled;

  /// [setOffline] is a method that will be used to set the state to offline.
  @action
  void setOffline() {
    AppLogger.print(
      "ConnectionState Changed: Offline",
      [UtilitiesLoggers.connection],
    );
    currentState = ConnectionStoreState.offline;
  }

  /// [setOnline] is a method that will be used to set the state to online.
  @action
  void setOnline() {
    AppLogger.print(
      "ConnectionState Changed: Online",
      [UtilitiesLoggers.connection],
    );
    currentState = ConnectionStoreState.online;
  }

  /// [setSyncing] is a method that will be used to set the state to syncing.
  @action
  void setSyncing() {
    AppLogger.print(
      "ConnectionState Changed: Syncing",
      [UtilitiesLoggers.connection],
    );
    currentState = ConnectionStoreState.syncing;
  }

  /// [setPaused] is a method that will be used to set the state to paused.
  @action
  void setPaused() {
    AppLogger.print(
      "ConnectionState Changed: Paused",
      [UtilitiesLoggers.connection],
    );
    currentState = ConnectionStoreState.paused;
  }

  /// [setCancelled] is a method that will be used to set the state to canceled.
  @action
  void setCancelled() {
    AppLogger.print(
      "ConnectionState Changed: Canceled",
      [UtilitiesLoggers.connection],
    );
    currentState = ConnectionStoreState.canceled;
  }

  /// [handleConnectionSource] is a method that will be used to handle the connection source.
  @action
  T handleConnectionSource<T>({
    required T source,
    T? offlineBackup,
  }) {
    if (isOnline || isSyncing) {
      AppLogger.print(
        "Handler ConnectionState: Online",
        [UtilitiesLoggers.connection],
      );
      return source;
    } else if (isOffline && offlineBackup != null) {
      AppLogger.print(
        "Handler ConnectionState: Offline - Trying Offline Backup",
        [UtilitiesLoggers.connection],
        type: LoggerType.warning,
      );
      return offlineBackup;
    } else {
      AppLogger.print(
        "Handler ConnectionState: Offline",
        [UtilitiesLoggers.connection],
        type: LoggerType.error,
      );
      return source;
    }
  }

  @action
  void _listenOnConnectionStatus() {
    InternetConnection().onStatusChange.listen(
      (status) {
        switch (status) {
          case InternetStatus.connected:
            setOnline();
            break;
          case InternetStatus.disconnected:
            setOffline();
            break;
        }
      },
    );
  }
}
