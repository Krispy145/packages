import 'package:flutter_map/flutter_map.dart';
import 'package:forms/presentation/components/base/store.dart';
import 'package:forms/presentation/components/double/store.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps/data/models/marker_model.dart';
import 'package:maps/presentation/edit_location/store.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class EditLocationMapFormFieldStore = _EditLocationMapFormFieldStore with _$EditLocationMapFormFieldStore;

abstract class _EditLocationMapFormFieldStore extends BaseFormFieldStore<MarkerModel?> with Store {
  final String mapTilesUrl;
  final Marker Function(MarkerModel)? singleMarkerBuilder;

  _EditLocationMapFormFieldStore({
    required this.mapTilesUrl,
    required super.value,
    required super.title,
    required super.onValueChanged,
    // ignore: unused_element
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
    initialMarkers: value != null ? [value!] : [],
  );

  late final DoubleFormFieldStore latitudeStore = DoubleFormFieldStore(
    value: value?.position.latitude,
    changeOnSaved: true,
    onValueChanged: (newLat) {
      if (newLat == null) return;
      final latLng = LatLng(newLat, value?.position.longitude ?? mapStore.markers.first.position.longitude);
      value = value?.copyWith(position: latLng) ?? MarkerModel(position: latLng, id: "0", score: 0);
      mapStore.setCenterMarker(marker: value);
      mapStore.animatedMapController.mapController.move(latLng, 10);
    },
    title: "Latitude",
  );

  late final DoubleFormFieldStore longitudeStore = DoubleFormFieldStore(
    value: value?.position.longitude,
    changeOnSaved: true,
    onValueChanged: (newLng) {
      if (newLng == null) return;
      final latLng = LatLng(value?.position.latitude ?? mapStore.markers.first.position.latitude, newLng);
      value = value?.copyWith(position: latLng) ?? MarkerModel(position: latLng, id: "0", score: 0);
      mapStore.setCenterMarker(marker: value);
      mapStore.animatedMapController.mapController.move(latLng, 10);
    },
    title: "Longitude",
  );
}
