// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchMapFormFieldStore on _SearchMapFormFieldStore, Store {
  late final _$suggestionsAtom =
      Atom(name: '_SearchMapFormFieldStore.suggestions', context: context);

  @override
  List<Suggestion>? get suggestions {
    _$suggestionsAtom.reportRead();
    return super.suggestions;
  }

  @override
  set suggestions(List<Suggestion>? value) {
    _$suggestionsAtom.reportWrite(value, super.suggestions, () {
      super.suggestions = value;
    });
  }

  late final _$searchMapAsyncAction =
      AsyncAction('_SearchMapFormFieldStore.searchMap', context: context);

  @override
  Future<void> searchMap(String query) {
    return _$searchMapAsyncAction.run(() => super.searchMap(query));
  }

  late final _$setCoordinatesAsyncAction =
      AsyncAction('_SearchMapFormFieldStore.setCoordinates', context: context);

  @override
  Future<void> setCoordinates(Suggestion suggestion) {
    return _$setCoordinatesAsyncAction
        .run(() => super.setCoordinates(suggestion));
  }

  @override
  String toString() {
    return '''
suggestions: ${suggestions}
    ''';
  }
}
