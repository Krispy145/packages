// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImagesFormFieldStore on _ImagesFormFieldStore, Store {
  late final _$imageUrlsAtom =
      Atom(name: '_ImagesFormFieldStore.imageUrls', context: context);

  @override
  ObservableList<String> get imageUrls {
    _$imageUrlsAtom.reportRead();
    return super.imageUrls;
  }

  bool _imageUrlsIsInitialized = false;

  @override
  set imageUrls(ObservableList<String> value) {
    _$imageUrlsAtom.reportWrite(
        value, _imageUrlsIsInitialized ? super.imageUrls : null, () {
      super.imageUrls = value;
      _imageUrlsIsInitialized = true;
    });
  }

  late final _$textStoresAtom =
      Atom(name: '_ImagesFormFieldStore.textStores', context: context);

  @override
  ObservableList<TextFormFieldStore> get textStores {
    _$textStoresAtom.reportRead();
    return super.textStores;
  }

  bool _textStoresIsInitialized = false;

  @override
  set textStores(ObservableList<TextFormFieldStore> value) {
    _$textStoresAtom.reportWrite(
        value, _textStoresIsInitialized ? super.textStores : null, () {
      super.textStores = value;
      _textStoresIsInitialized = true;
    });
  }

  late final _$_ImagesFormFieldStoreActionController =
      ActionController(name: '_ImagesFormFieldStore', context: context);

  @override
  void addImage({String? imageUrl}) {
    final _$actionInfo = _$_ImagesFormFieldStoreActionController.startAction(
        name: '_ImagesFormFieldStore.addImage');
    try {
      return super.addImage(imageUrl: imageUrl);
    } finally {
      _$_ImagesFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void cancelChanges() {
    final _$actionInfo = _$_ImagesFormFieldStoreActionController.startAction(
        name: '_ImagesFormFieldStore.cancelChanges');
    try {
      return super.cancelChanges();
    } finally {
      _$_ImagesFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageUrls: ${imageUrls},
textStores: ${textStores}
    ''';
  }
}
