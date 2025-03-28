import "package:auto_route/auto_route.dart";
import "package:maps/presentation/map/view.dart";

import "store.dart";

/// [SingleMarkerMapView] of the app.
@RoutePage()
class SingleMarkerMapView extends MapView<SingleMarkerStore> {
  const SingleMarkerMapView({super.key, required super.store});
}
