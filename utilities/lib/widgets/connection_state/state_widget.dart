import "package:flutter/material.dart";
import "package:utilities/widgets/connection_state/store.dart";

/// [ConnectionStateBuilder] is a widget that will be used to build the UI based on the connection state.
class ConnectionStateBuilder extends StatelessWidget {
  /// [connectionStore] is an instance of [ConnectionStateStore].
  final ConnectionStateStore connectionStore;

  /// [offlineBuilder] is the builder that will be used to build the UI when the connection is offline.
  final WidgetBuilder offlineBuilder;

  /// [onlineBuilder] is the builder that will be used to build the UI when the connection is online.
  final WidgetBuilder onlineBuilder;

  /// [syncingBuilder] is the builder that will be used to build the UI when the connection is syncing.
  final WidgetBuilder? syncingBuilder;

  /// [pausedBuilder] is the builder that will be used to build the UI when the connection is paused.
  final WidgetBuilder? pausedBuilder;

  /// [cancelledBuilder] is the builder that will be used to build the UI when the connection is cancelled.
  final WidgetBuilder? cancelledBuilder;

  /// [ConnectionStateBuilder] constructor
  const ConnectionStateBuilder({
    super.key,
    required this.connectionStore,
    required this.offlineBuilder,
    required this.onlineBuilder,
    this.syncingBuilder,
    this.pausedBuilder,
    this.cancelledBuilder,
  });

  @override
  Widget build(BuildContext context) {
    switch (connectionStore.currentState) {
      case ConnectionStoreState.offline:
        return offlineBuilder(context);
      case ConnectionStoreState.online:
        return onlineBuilder(context);
      case ConnectionStoreState.syncing:
        return syncingBuilder?.call(context) ?? offlineBuilder(context);
      case ConnectionStoreState.paused:
        return pausedBuilder?.call(context) ?? offlineBuilder(context);
      case ConnectionStoreState.canceled:
        return cancelledBuilder?.call(context) ?? offlineBuilder(context);
    }
  }
}
