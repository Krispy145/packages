// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FontsStore on FontsBaseStore, Store {
  late final _$fontssAtom =
      Atom(name: 'FontsBaseStore.fontss', context: context);

  @override
  ObservableList<FontsModel?> get fontss {
    _$fontssAtom.reportRead();
    return super.fontss;
  }

  @override
  set fontss(ObservableList<FontsModel?> value) {
    _$fontssAtom.reportWrite(value, super.fontss, () {
      super.fontss = value;
    });
  }

  late final _$loadFontsModelsAsyncAction =
      AsyncAction('FontsBaseStore.loadFontsModels', context: context);

  @override
  Future<void> loadFontsModels() {
    return _$loadFontsModelsAsyncAction.run(() => super.loadFontsModels());
  }

  @override
  String toString() {
    return '''
fontss: ${fontss}
    ''';
  }
}
