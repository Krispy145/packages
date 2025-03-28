import "math.dart" as math;

/// Returns neighbor geoHashes of given [geoHash].
List<String> neighborGeoHashesOf({required final String geoHash}) =>
    math.neighborGeoHashesOf(geoHash);
