// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapStore on MapBaseStore, Store {
  late final _$mapsAtom = Atom(name: 'MapBaseStore.maps', context: context);

  @override
  ObservableList<MapModel?> get maps {
    _$mapsAtom.reportRead();
    return super.maps;
  }

  @override
  set maps(ObservableList<MapModel?> value) {
    _$mapsAtom.reportWrite(value, super.maps, () {
      super.maps = value;
    });
  }

  late final _$loadMapModelsAsyncAction =
      AsyncAction('MapBaseStore.loadMapModels', context: context);

  @override
  Future<void> loadMapModels() {
    return _$loadMapModelsAsyncAction.run(() => super.loadMapModels());
  }

  @override
  String toString() {
    return '''
maps: ${maps}
    ''';
  }
}
