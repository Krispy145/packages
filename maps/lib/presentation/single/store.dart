// ignore_for_file: unused_element

import 'package:maps/presentation/map/store.dart';
import 'package:mobx/mobx.dart';

import '../../data/models/marker_model.dart';

part 'store.g.dart';

/// [SingleMarkerStore] is a class that uses [_SingleMarkerStore] to manage state of the map feature.
class SingleMarkerStore = _SingleMarkerStore with _$SingleMarkerStore;

/// [_SingleMarkerStore] is a class that manages the state of the map feature.
abstract class _SingleMarkerStore extends MapStore with Store {
  final MarkerModel marker;

  _SingleMarkerStore({
    required this.marker,
    required super.mapTilesUrl,
    super.singleMarkerBuilder,
  });

  ///
  /// INTERACTIONS & LIFECYCLE
  ///

  @override
  Future<void> onMapReady() async {
    setLoading();
    addMarker(marker);
    selectMarker(
      marker.id,
      marker.position,
    );
    isMapReady = true;
    setLoaded();
  }
}
