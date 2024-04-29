import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_supercluster/flutter_map_supercluster.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:maps/constants/map_constants.dart';
import 'package:maps/constants/marker_constants.dart';
import 'package:maps/presentation/markers/base_marker.dart';
import 'package:maps/presentation/markers/helpers/cluster_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:utilities/widgets/load_state/state_widget.dart';

import 'store.dart';

/// [MapView] of the app.
@RoutePage()
class MapView<StoreType extends MapStore> extends StatelessWidget {
  /// [MapView] constructor.
  const MapView({super.key, required this.store});

  /// [store] is an instance of [MapStore], used in the [LoadStateBuilder].
  final StoreType store;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return FlutterMap(options: store.mapOptions, mapController: store.animatedMapController.mapController, children: [
        buildAttribution(),
        buildTileLayer(),
        buildSuperclusterLayer(),
        ...buildAdditionalChildren(context),
      ]);
    });
  }

  List<Widget> buildAdditionalChildren(BuildContext context) {
    return [];
  }

  RichAttributionWidget buildAttribution() {
    return RichAttributionWidget(
      showFlutterMapAttribution: false,
      attributions: [
        TextSourceAttribution("© Mapbox", prependCopyright: false, onTap: () => launchUrl(Uri.parse('https://www.mapbox.com/about/maps/'))),
        TextSourceAttribution("© OpenStreetMap", prependCopyright: false, onTap: () => launchUrl(Uri.parse('http://www.openstreetmap.org/copyright'))),
        TextSourceAttribution("Improve this map", prependCopyright: false, onTap: () => launchUrl(Uri.parse('https://www.mapbox.com/map-feedback/'))),
      ],
    );
  }

  TileLayer buildTileLayer() {
    return TileLayer(
      urlTemplate: store.mapTilesUrl,
      userAgentPackageName: store.mapTilesUserPackageName,
      maxNativeZoom: MapConstants.maxZoomLevel.toInt(),
      maxZoom: MapConstants.maxZoomLevel,
      minNativeZoom: MapConstants.minZoomLevel.toInt(),
      minZoom: MapConstants.minZoomLevel,
    );
  }

  SuperclusterLayer buildSuperclusterLayer() {
    return SuperclusterLayer.mutable(
      controller: store.superclusterController,
      indexBuilder: IndexBuilders.rootIsolate,
      clusterWidgetSize: const Size.square(MarkerConstants.selectedSize),
      calculateAggregatedClusterData: true,
      loadingOverlayBuilder: (context) => const SizedBox.shrink(),
      clusterDataExtractor: (marker) => MarkerClusterData(marker as BaseMarker),
      builder: (context, position, markerCount, extraClusterData) {
        final clusterData = extraClusterData as MarkerClusterData;
        final marker = clusterData.topMarker;
        if (markerCount == 1) {
          return store.buildSingleMarker(marker).child;
        } else {
          return store.buildClusterMarker(clusterData, markerCount).child;
        }
      },
    );
  }
}
