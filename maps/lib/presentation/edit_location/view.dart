import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:maps/presentation/edit_location/store.dart';
import 'package:maps/presentation/map/view.dart';
import 'package:theme/extensions/build_context.dart';

/// [EditLocationMapView] of the app.
@RoutePage()
class EditLocationMapView extends MapView<EditLocationMapStore> {
  const EditLocationMapView({super.key, required super.store});

  @override
  List<Widget> buildAdditionalChildren(BuildContext context) {
    return [
      Observer(builder: (context) {
        return Align(
          alignment: Alignment.bottomRight,
          child: Padding(
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
        );
      })
    ];
  }
}
