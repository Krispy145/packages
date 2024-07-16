import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:maps/presentation/edit_location/store.dart';
import 'package:maps/presentation/map/view.dart';
import 'package:theme/extensions/build_context.dart';

/// [EditLocationMapView] of the app.
@RoutePage()
class EditLocationMapView extends MapView<EditLocationMapStore> {
  const EditLocationMapView({super.key, required super.store});

  @override
  Widget build(BuildContext context) {
    // return LoadStateBuilder(
    //     viewStore: store,
    //     loadedBuilder: (context) {
    return Observer(
      builder: (context) => FlutterMap(
        options: store.mapOptions,
        mapController: store.animatedMapController.mapController,
        children: [
          buildAttribution(),
          buildTileLayer(),
          buildSuperclusterLayer(),
          ...buildAdditionalChildren(context),
        ],
      ),
    );
    //       });
  }

  @override
  List<Widget> buildAdditionalChildren(BuildContext context) {
    return [
      Observer(
        builder: (context) => Visibility(
          visible: store.isLocked,
          child: ColoredBox(
            color: context.colorScheme.primary.withOpacity(0.1),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton.filled(
                  icon: Icon(
                    Icons.lock,
                    color: context.colorScheme.onPrimary,
                    size: 24,
                  ),
                  onPressed: store.toggleLocked,
                ),
              ),
            ),
          ),
        ),
      ),
      Observer(
        builder: (context) => Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (!store.isLocked)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton.filled(
                    icon: Icon(
                      Icons.lock_open_rounded,
                      color: context.colorScheme.onPrimary,
                      size: 24,
                    ),
                    onPressed: store.toggleLocked,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton.filled(
                  icon: Icon(
                    store.isEditing ? Icons.done : Icons.edit,
                    color: context.colorScheme.onPrimary,
                    size: 24,
                  ),
                  onPressed: store.toggleEditing,
                ),
              ),
            ],
          ),
        ),
      )
    ];
  }
}
