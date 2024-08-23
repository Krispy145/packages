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

  late final _$pickedImageAtom =
      Atom(name: '_ImageFormFieldStore.pickedImage', context: context);

  @override
  XFile? get pickedImage {
    _$pickedImageAtom.reportRead();
    return super.pickedImage;
  }

  @override
  set pickedImage(XFile? value) {
    _$pickedImageAtom.reportWrite(value, super.pickedImage, () {
      super.pickedImage = value;
    });
  }

  late final _$imageBytesAtom =
      Atom(name: '_ImageFormFieldStore.imageBytes', context: context);

  @override
  Uint8List? get imageBytes {
    _$imageBytesAtom.reportRead();
    return super.imageBytes;
  }

  @override
  set imageBytes(Uint8List? value) {
    _$imageBytesAtom.reportWrite(value, super.imageBytes, () {
      super.imageBytes = value;
    });
  }

  late final _$didPickImageAtom =
      Atom(name: '_ImageFormFieldStore.didPickImage', context: context);

  @override
  bool get didPickImage {
    _$didPickImageAtom.reportRead();
    return super.didPickImage;
  }

  @override
  set didPickImage(bool value) {
    _$didPickImageAtom.reportWrite(value, super.didPickImage, () {
      super.didPickImage = value;
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

  late final _$updateImageAsyncAction =
      AsyncAction('_ImageFormFieldStore.updateImage', context: context);

  @override
  Future<void> updateImage({required Pair<String?, bool> newImageOptions}) {
    return _$updateImageAsyncAction
        .run(() => super.updateImage(newImageOptions: newImageOptions));
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
  String toString() {
    return '''
imageUrl: ${imageUrl},
pickedImage: ${pickedImage},
imageBytes: ${imageBytes},
didPickImage: ${didPickImage},
tabIndex: ${tabIndex}
    ''';
  }
}
