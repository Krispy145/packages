import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps/data/models/lat_lng.mapper.dart';
import 'package:maps/helpers/geo_points/geo_reference.dart';
import 'package:rxdart/rxdart.dart';
import 'package:utilities/data_sources/remote/firestore.dart';

import 'math.dart';
import 'utils.dart' as utils;

/// Extension on [FirestoreDataSource] to handle geo queries.
extension GeoCollectionReference<T> on FirestoreDataSource<T> {
  /// Detection range buffer when not strict mode.
  static const _detectionRangeBuffer = 1.02;
  static const String _fieldName = 'geo_reference';

  // Function to get GeoPoint instance from Cloud Firestore document data.
  LatLng _geoPointFrom(Map<String, dynamic> data) {
    return const LatLngMapper().decode((data[_fieldName] as Map<String, dynamic>)['geo_point']);
  }

  /// Updates the [LatLng].data (i.e. [LatLng] geoPoint and [String]
  /// geoHash) of specified document.
  /// If you would like to update not only [LatLng].data but also other
  /// fields, use [set] method by setting merge true.
  Future<void> updatePoint({
    required final String id,
    required final LatLng geoPoint,
  }) async =>
      collectionReference.doc(id).update(<String, dynamic>{
        _fieldName: GeoReference(geoPoint: geoPoint).data,
      });

  /// Subscribes geo query results by given conditions.
  ///
  /// * [center] Center point of detection.
  /// * [radiusInKm] Detection range in kilometers.
  /// * [field] Field name of cloud_firestore document.
  /// * [_geoPointFrom] Function to get cloud_firestore [LatLng] instance from
  /// the object (type T).
  /// * [queryBuilder] Specifies query if you would like to give additional
  /// conditions.
  /// * [strictMode] Whether to filter documents strictly within the bound of
  /// given radius.
  /// * [asBroadcastStream] Whether to return geo query results as broadcast.
  Stream<List<T?>> subscribeWithin({
    required final GeoReference center,
    required final double radiusInKm,
    required final String field,
    final Query<Map<String, dynamic>>? Function(Query<Map<String, dynamic>> query)? queryBuilder,
    final bool strictMode = false,
    final bool asBroadcastStream = false,
  }) =>
      subscribeWithinWithDistance(
        center: center,
        radiusInKm: radiusInKm,
        field: field,
        queryBuilder: queryBuilder,
        strictMode: strictMode,
      ).map(
        (final snapshots) => snapshots.map((final snapshot) => snapshot.documentSnapshot).toList(),
      );

  /// Subscribes geo query results with distance from center in kilometers
  /// ([_GeoDocumentSnapshot]) by given conditions.
  ///
  /// * [center] Center point of detection.
  /// * [radiusInKm] Detection range in kilometers.
  /// * [field] Field name of cloud_firestore document.
  /// * [_geoPointFrom] Function to get cloud_firestore [LatLng] instance from
  /// the object (type T).
  /// * [queryBuilder] Specifies query if you would like to give additional
  /// conditions.
  /// * [strictMode] Whether to filter documents strictly within the bound of
  /// given radius.
  /// * [asBroadcastStream] Whether to return geo query results as broadcast.
  Stream<List<_GeoDocumentSnapshot<T>>> subscribeWithinWithDistance({
    required final GeoReference center,
    required final double radiusInKm,
    required final String field,
    final Query<Map<String, dynamic>>? Function(Query<Map<String, dynamic>> query)? queryBuilder,
    final bool strictMode = false,
    final bool asBroadcastStream = false,
  }) {
    final collectionStreams = _collectionStreams(
      center: center,
      radiusInKm: radiusInKm,
      field: field,
      queryBuilder: queryBuilder,
    );

    final mergedCollectionStreams = _mergeCollectionStreams(collectionStreams);

    final filteredGeoDocumentSnapshots = mergedCollectionStreams.map((final queryDocumentSnapshots) {
      final geoDocumentSnapshots = queryDocumentSnapshots
          .map(
            (final queryDocumentSnapshot) => _nullableGeoDocumentSnapshotFromQueryDocumentSnapshot(
              queryDocumentSnapshot: queryDocumentSnapshot,
              center: center,
            ),
          )
          // Removes null values.
          .whereType<_GeoDocumentSnapshot<T>>();

      // Filter fetched geoDocumentSnapshots by distance from center point on
      // client side if strict mode.
      final filteredList = geoDocumentSnapshots.where(
        (final geoDocumentSnapshot) => !strictMode || geoDocumentSnapshot.distanceFromCenterInKm <= radiusInKm * _detectionRangeBuffer,
      );

      // Returns sorted list by distance from center point.
      return filteredList.toList()
        ..sort(
          (final a, final b) => (a.distanceFromCenterInKm * 1000).toInt() - (b.distanceFromCenterInKm * 1000).toInt(),
        );
    });
    if (asBroadcastStream) {
      return filteredGeoDocumentSnapshots.asBroadcastStream();
    }
    return filteredGeoDocumentSnapshots;
  }

  /// Fetches geo query results by given conditions.
  ///
  /// * [center] Center point of detection.
  /// * [radiusInKm] Detection range in kilometers.
  /// * [field] Field name of cloud_firestore document.
  /// * [geoHashField] Field name of the geoHash in the [field]
  /// * [geoPointFrom] Function to get cloud_firestore [LatLng] instance from
  /// the object (type T).
  /// * [queryBuilder] Specifies query if you would like to give additional
  /// conditions.
  /// * [strictMode] Whether to filter documents strictly within the bound of
  /// given radius.
  Future<List<T?>> fetchWithin({
    required final GeoReference center,
    required final double radiusInKm,
    final String geoHashField = 'geo_hash',
    final Query<Map<String, dynamic>>? Function(Query<Map<String, dynamic>> query)? queryBuilder,
    final bool strictMode = false,
  }) async {
    final geoDocumentSnapshots = await fetchWithinWithDistance(
      center: center,
      radiusInKm: radiusInKm,
      geoHashField: geoHashField,
      queryBuilder: queryBuilder,
      strictMode: strictMode,
    );
    return geoDocumentSnapshots.map((final snapshot) => snapshot.documentSnapshot).toList();
  }

  /// Fetches geo query results with distance from center in kilometers
  /// ([_GeoDocumentSnapshot]) by given conditions.
  ///
  /// * [center] Center point of detection.
  /// * [radiusInKm] Detection range in kilometers.
  /// * [field] Field name of cloud_firestore document.
  /// * [geoHashField] Field name of the geoHash in the [field]
  /// * [geoPointFrom] Function to get cloud_firestore [LatLng] instance from
  /// the object (type T).
  /// * [queryBuilder] Specifies query if you would like to give additional
  /// conditions.
  /// * [strictMode] Whether to filter documents strictly within the bound of
  /// given radius.
  Future<List<_GeoDocumentSnapshot<T>>> fetchWithinWithDistance({
    required final GeoReference center,
    required final double radiusInKm,
    final String geoHashField = 'geo_hash',
    final Query<Map<String, dynamic>>? Function(Query<Map<String, dynamic>> query)? queryBuilder,
    final bool strictMode = false,
  }) async {
    final collectionFutures = _collectionFutures(
      center: center,
      radiusInKm: radiusInKm,
      geoHashField: geoHashField,
      queryBuilder: queryBuilder,
    );

    final mergedCollections = await _mergeCollectionFutures(collectionFutures);

    final geoDocumentSnapshots = mergedCollections
        .map(
          (final queryDocumentSnapshot) => _nullableGeoDocumentSnapshotFromQueryDocumentSnapshot(
            queryDocumentSnapshot: queryDocumentSnapshot,
            center: center,
          ),
        ) // Removes null values.
        .whereType<_GeoDocumentSnapshot<T>>();

    // Filter fetched geoDocumentSnapshots by distance from center point on
    // client side if strict mode.
    final filteredList = geoDocumentSnapshots
        .where(
          (final geoDocumentSnapshot) => !strictMode || geoDocumentSnapshot.distanceFromCenterInKm <= radiusInKm * _detectionRangeBuffer,
        )
        .toList()
      // sort list by distance from center point.
      ..sort(
        (final a, final b) => (a.distanceFromCenterInKm * 1000).toInt() - (b.distanceFromCenterInKm * 1000).toInt(),
      );
    return filteredList;
  }

  /// Returns stream of [QueryDocumentSnapshot]s of neighbor and center
  /// GeoHashes.
  List<Stream<List<T>>> _collectionStreams({
    required final double radiusInKm,
    required final GeoReference center,
    required final String field,
    final String geoHashField = 'geo_hash',
    final Query<Map<String, dynamic>>? Function(Query<Map<String, dynamic>> query)? queryBuilder,
  }) {
    return _geoHashes(radiusInKm: radiusInKm, center: center)
        .map(
          (final geoHash) => geoQuery(
            geoHashField: geoHashField,
            geoHash: geoHash,
            queryBuilder: queryBuilder,
          ).snapshots().map((final querySnapshot) => querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList()),
        )
        .toList();
  }

  /// Returns future of [QueryDocumentSnapshot]s of neighbor and center
  /// GeoHashes.
  List<Future<List<T>>> _collectionFutures({
    required final double radiusInKm,
    required final GeoReference center,
    required final String geoHashField,
    final Query<Map<String, dynamic>>? Function(Query<Map<String, dynamic>> query)? queryBuilder,
  }) {
    return _geoHashes(radiusInKm: radiusInKm, center: center).map(
      (final geoHash) async {
        final querySnapshot = await geoQuery(
          geoHashField: geoHashField,
          geoHash: geoHash,
          queryBuilder: queryBuilder,
        ).get();
        return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      },
    ).toList();
  }

  /// Returns neighbor and center geoHash strings.
  List<String> _geoHashes({
    required final double radiusInKm,
    required final GeoReference center,
  }) {
    final precisionDigits = geoHashDigitsFromRadius(radiusInKm);
    final centerGeoHash = center.geoHash.substring(0, precisionDigits);
    return {
      ...utils.neighborGeoHashesOf(geoHash: centerGeoHash),
      centerGeoHash,
    }.toList();
  }

  /// Returns geoHash query, adding query conditions if queryBuilder parameter
  /// is given.
  @visibleForTesting
  Query<Map<String, dynamic>> geoQuery({
    final String geoHashField = 'geo_hash',
    required final String geoHash,
    final Query<Map<String, dynamic>>? Function(Query<Map<String, dynamic>> query)? queryBuilder,
  }) {
    Query<Map<String, dynamic>> query = collectionReference;
    if (queryBuilder != null) {
      query = queryBuilder(query)!;
    }
    return query.orderBy('$_fieldName.$geoHashField').startAt([geoHash]).endAt(['$geoHash{']);
  }

  /// Merge given list of collection streams by `Rx.combineLatest`.
  ///
  /// Note:
  ///
  /// ```dart
  /// final stream1 = Stream.value([1, 2, 3]);
  /// final stream2 = Stream.value([11, 12, 13]);
  /// final streams = [stream1, stream2];
  ///
  /// Rx.combineLatest<List<int>, List<int>>(
  ///   streams,
  ///   (values) => [
  ///     for (final numbers in values) ...numbers,
  ///   ],
  /// ).listen(print);
  ///
  /// // [1, 2, 3, 11, 12, 13]
  /// ```
  Stream<List<T>> _mergeCollectionStreams(
    final List<Stream<List<T>>> collectionStreams,
  ) =>
      Rx.combineLatest<List<T>, List<T>>(
        collectionStreams,
        (final values) => [
          for (final queryDocumentSnapshots in values) ...queryDocumentSnapshots,
        ],
      );

  /// Merge given list of collection futures.
  Future<List<T>> _mergeCollectionFutures(
    final List<Future<List<T>>> collectionFutures,
  ) async {
    final mergedQueryDocumentSnapshots = <T>[];
    await Future.forEach<Future<List<T>>>(collectionFutures, (final values) async {
      final queryDocumentSnapshots = await values;
      queryDocumentSnapshots.forEach(mergedQueryDocumentSnapshots.add);
    });
    return mergedQueryDocumentSnapshots;
  }

  /// Returns nullable [_GeoDocumentSnapshot] from given [QueryDocumentSnapshot].
  _GeoDocumentSnapshot<T>? _nullableGeoDocumentSnapshotFromQueryDocumentSnapshot({
    required final T queryDocumentSnapshot,
    required final GeoReference center,
  }) {
    final fetchedData = queryDocumentSnapshot;
    final fetchedLatLng = _geoPointFrom(convertToMap(fetchedData));
    final distanceFromCenterInKm = center.distanceBetweenInKm(geoPoint: fetchedLatLng);
    return _GeoDocumentSnapshot(
      documentSnapshot: queryDocumentSnapshot,
      distanceFromCenterInKm: distanceFromCenterInKm,
    );
  }
}

/// A model to handle cloud_firestore [DocumentSnapshot] with distance from
/// given center in kilometers.
class _GeoDocumentSnapshot<T> {
  /// Instantiates [_GeoDocumentSnapshot].
  _GeoDocumentSnapshot({
    required this.documentSnapshot,
    required this.distanceFromCenterInKm,
  });

  /// Fetched [DocumentSnapshot].
  final T documentSnapshot;

  /// Distance from center in kilometers.
  final double distanceFromCenterInKm;
}
