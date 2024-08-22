// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImageFormFieldStore on _ImageFormFieldStore, Store {
  late final _$imageUrlAtom =
      Atom(name: '_ImageFormFieldStore.imageUrl', context: context);

  @override
  String? get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  bool _imageUrlIsInitialized = false;

  @override
  set imageUrl(String? value) {
    _$imageUrlAtom
        .reportWrite(value, _imageUrlIsInitialized ? super.imageUrl : null, () {
      super.imageUrl = value;
      _imageUrlIsInitialized = true;
    });
  }

  late final _$tabIndexAtom =
      Atom(name: '_ImageFormFieldStore.tabIndex', context: context);

  @override
  int get tabIndex {
    _$tabIndexAtom.reportRead();
    return super.tabIndex;
  }

  @override
  set tabIndex(int value) {
    _$tabIndexAtom.reportWrite(value, super.tabIndex, () {
      super.tabIndex = value;
    });
  }

  late final _$removeImageAsyncAction =
      AsyncAction('_ImageFormFieldStore.removeImage', context: context);

  @override
  Future<void> removeImage() {
    return _$removeImageAsyncAction.run(() => super.removeImage());
  }

  late final _$_ImageFormFieldStoreActionController =
      ActionController(name: '_ImageFormFieldStore', context: context);

  @override
  void changeTab(int index) {
    final _$actionInfo = _$_ImageFormFieldStoreActionController.startAction(
        name: '_ImageFormFieldStore.changeTab');
    try {
      return super.changeTab(index);
    } finally {
      _$_ImageFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateImage({required String newImageUrl}) {
    final _$actionInfo = _$_ImageFormFieldStoreActionController.startAction(
        name: '_ImageFormFieldStore.updateImage');
    try {
      return super.updateImage(newImageUrl: newImageUrl);
    } finally {
      _$_ImageFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageUrl: ${imageUrl},
tabIndex: ${tabIndex}
    ''';
  }
}
