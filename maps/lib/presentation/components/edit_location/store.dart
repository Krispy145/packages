import "package:flutter_map/flutter_map.dart";
import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/double/store.dart";
import "package:latlong2/latlong.dart";
import "package:maps/data/models/marker_model.dart";
import "package:maps/presentation/edit_location/store.dart";
import "package:mobx/mobx.dart";

part "store.g.dart";

class EditLocationMapFormFieldStore = _EditLocationMapFormFieldStore with _$EditLocationMapFormFieldStore;

abstract class _EditLocationMapFormFieldStore extends BaseFormFieldStore<LatLng?> with Store {
  final String mapTilesUrl;
  final Marker Function(MarkerModel)? singleMarkerBuilder;

  _EditLocationMapFormFieldStore({
    required this.mapTilesUrl,
    required super.initialValue,
    required super.title,
    required super.onValueChanged,
    this.singleMarkerBuilder,
  }) {
    reaction((reaction) {
      return mapStore.mapCenter;
    }, (mapCenter) {
      if (mapCenter != null) {
        latitudeStore.textController.text = mapCenter.latitude.toString();
        longitudeStore.textController.text = mapCenter.longitude.toString();
      }
    });
  }

  late final EditLocationMapStore mapStore = EditLocationMapStore(
    mapTilesUrl: mapTilesUrl,
    singleMarkerBuilder: singleMarkerBuilder,
    initialMarkers: value != null ? [MarkerModel(id: "id", score: 1, position: value!)] : [],
  );

  late final DoubleFormFieldStore latitudeStore = DoubleFormFieldStore(
    initialValue: value?.latitude,
    changeOnSaved: true,
    onValueChanged: (newLat) {
      if (newLat == null) return;
      value = LatLng(
        newLat,
        value?.longitude ?? mapStore.markers.first.position.longitude,
      );
      mapStore.setCenterMarker(center: value);
      try {
        mapStore.animatedMapController.mapController.move(value!, 10);
      } catch (e) {}
    },
    title: "Latitude",
  );

  late final DoubleFormFieldStore longitudeStore = DoubleFormFieldStore(
    initialValue: value?.longitude,
    changeOnSaved: true,
    onValueChanged: (newLng) {
      if (newLng == null) return;
      value = LatLng(
        value?.latitude ?? mapStore.markers.first.position.latitude,
        newLng,
      );
      mapStore.setCenterMarker(center: value);
      mapStore.animatedMapController.mapController.move(value!, 10);
    },
    title: "Longitude",
  );
}
