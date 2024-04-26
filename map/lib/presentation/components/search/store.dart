import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:forms/presentation/components/base/store.dart';
import 'package:forms/presentation/components/double/store.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/data/models/google/place_model.dart';
import 'package:map/data/models/marker_model.dart';
import 'package:map/presentation/markers/icon_marker.dart';
import 'package:map/presentation/search_map/google_store.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class SearchMapFormFieldStore = _SearchMapFormFieldStore with _$SearchMapFormFieldStore;

abstract class _SearchMapFormFieldStore extends BaseFormFieldStore<MarkerModel?> with Store {
  final String mapTilesUrl;
  final String mapAPIKey;
  final Marker Function(MarkerModel)? singleMarkerBuilder;

  final void Function(MarkerModel?, GooglePlace?) onSearchSelected;
  _SearchMapFormFieldStore({
    required this.mapTilesUrl,
    required this.mapAPIKey,
    required super.value,
    required this.onSearchSelected,
    required super.title,
    // ignore: unused_element
    this.singleMarkerBuilder,
  }) : super(
          onValueChanged: (marker) => onSearchSelected(marker, null),
        ) {
    reaction((reaction) {
      return mapStore.mapCenter;
    }, (mapCenter) {
      if (mapCenter != null) {
        latitudeStore.textController.text = mapCenter.latitude.toString();
        longitudeStore.textController.text = mapCenter.longitude.toString();
      }
    });
    reaction((reaction) => mapStore.currentGooglePlace, (googlePlace) {
      if (googlePlace != null) {
        onSearchSelected(value, googlePlace);
      }
    });
  }

  late final GoogleSearchMapStore mapStore = GoogleSearchMapStore(
      mapAPIKey: mapAPIKey,
      mapTilesUrl: mapTilesUrl,
      initialMarkers: value != null ? [value!] : null,
      singleMarkerBuilder: singleMarkerBuilder ??
          (marker) => IconMarker(
              markerModel: marker,
              isSelected: (_) {
                return true;
              },
              icon: Icons.place_outlined));

  late final DoubleFormFieldStore latitudeStore = DoubleFormFieldStore(
    value: mapStore.markers.firstOrNull?.position.latitude,
    onValueChanged: (newLat) {
      if (newLat == null) return;
      final latLng = LatLng(newLat, value?.position.longitude ?? mapStore.markers.first.position.longitude);
      value = value?.copyWith(position: latLng) ?? MarkerModel(position: latLng, id: "0", score: 0);
      mapStore.setCenterMarker(marker: value);
      mapStore.animatedMapController.animateTo(dest: latLng, zoom: 10);
    },
    title: "Latitude",
  );

  late final DoubleFormFieldStore longitudeStore = DoubleFormFieldStore(
    value: mapStore.markers.firstOrNull?.position.longitude,
    onValueChanged: (newLng) {
      if (newLng == null) return;
      final latLng = LatLng(value?.position.latitude ?? mapStore.markers.first.position.latitude, newLng);
      value = value?.copyWith(position: latLng) ?? MarkerModel(position: latLng, id: "0", score: 0);
      mapStore.setCenterMarker(marker: value);
      mapStore.animatedMapController.animateTo(dest: latLng, zoom: 10);
    },
    title: "Longitude",
  );
}
