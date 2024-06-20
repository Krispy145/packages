/// [ConnectionStoreState] is an enum that defines the different states of the connection.
enum ConnectionStoreState {
  /// [offline] is the state that will be used when the user is offline.
  offline,

  /// [online] is the state that will be used when the user is online.
  online,

  /// [syncing] is the state that will be used when the user is syncing.
  syncing,

  /// [paused] is the state that will be used when the user is paused.
  paused,

  /// [canceled] is the state that will be used when the user is canceled.
  canceled,
}
