import 'package:flutter/material.dart';
import 'package:forms/presentation/components/base/store.dart';
import 'package:forms/presentation/components/double/store.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/presentation/markers/location_marker.dart';
import 'package:map/presentation/search_map/store.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class SearchMapFormFieldStore = _SearchMapFormFieldStore with _$SearchMapFormFieldStore;

abstract class _SearchMapFormFieldStore extends BaseFormFieldStore<LatLng?> with Store {
  final String mapTilesUrl;
  final String mapAPIKey;
  _SearchMapFormFieldStore({
    required this.mapTilesUrl,
    required this.mapAPIKey,
    required super.value,
    required super.onValueChanged,
    required super.title,
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

  late final SearchMapStore mapStore = SearchMapStore(
      mapAPIKey: mapAPIKey,
      mapTilesUrl: mapTilesUrl,
      singleMarkerBuilder: (marker) => IconMarker(
          markerModel: marker,
          isSelected: (_) {
            return true;
          },
          icon: Icons.location_on_outlined));

  late final DoubleFormFieldStore latitudeStore = DoubleFormFieldStore(
    value: mapStore.markers.firstOrNull?.position.latitude,
    onValueChanged: (newLat) {
      if (newLat == null) return;
      value = LatLng(newLat, value?.longitude ?? mapStore.markers.first.position.longitude);
      mapStore.setCenterMarker(coordinates: value);
      mapStore.animatedMapController.animateTo(dest: value, zoom: 10);
    },
    title: "Latitude",
  );

  late final DoubleFormFieldStore longitudeStore = DoubleFormFieldStore(
    value: mapStore.markers.firstOrNull?.position.longitude,
    onValueChanged: (newLng) {
      if (newLng == null) return;
      value = LatLng(value?.latitude ?? mapStore.markers.first.position.latitude, newLng);
      mapStore.setCenterMarker(coordinates: value);
    },
    title: "Longitude",
  );
}
