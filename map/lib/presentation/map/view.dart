import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:utilities/widgets/load_state/state_widget.dart';

import 'store.dart';

/// [MapView] of the app.
@RoutePage()
class MapView extends StatelessWidget {
  /// [MapView] constructor.
  MapView({super.key});

  /// [store] is an instance of [MapStore], used in the [LoadStateBuilder].
  final MapStore store = MapStore()..loadMapModels();

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
        viewStore: store,
        emptyBuilder: (context) => const Center(
          child: Text("Empty map view."),
        ),
        loadedBuilder: (context) => ListView.builder(
          itemCount: store.maps.length,
          itemBuilder: (context, index) {
            final mapModel = store.maps[index];
            return ListTile(
              title: Text('ID: ${mapModel?.id}'),
              subtitle: Text('Name: ${mapModel?.name}'),
            );
          },
        ),
        errorBuilder: (context) => const Center(
          child: Text("Error loading map view."),
        ),
      );
  }
}
