// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$YoutubesStore on _YoutubesStore, Store {
  late final _$youtubesAtom =
      Atom(name: '_YoutubesStore.youtubes', context: context);

  @override
  ObservableList<YoutubeModel?> get youtubes {
    _$youtubesAtom.reportRead();
    return super.youtubes;
  }

  @override
  set youtubes(ObservableList<YoutubeModel?> value) {
    _$youtubesAtom.reportWrite(value, super.youtubes, () {
      super.youtubes = value;
    });
  }

  late final _$loadYoutubeModelsAsyncAction =
      AsyncAction('_YoutubesStore.loadYoutubeModels', context: context);

  @override
  Future<void> loadYoutubeModels() {
    return _$loadYoutubeModelsAsyncAction.run(() => super.loadYoutubeModels());
  }

  @override
  String toString() {
    return '''
youtubes: ${youtubes}
    ''';
  }
}
