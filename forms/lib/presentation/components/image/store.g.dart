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

  @override
  set imageUrl(String? value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  late final _$_ImageFormFieldStoreActionController =
      ActionController(name: '_ImageFormFieldStore', context: context);

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
  void removeImage() {
    final _$actionInfo = _$_ImageFormFieldStoreActionController.startAction(
        name: '_ImageFormFieldStore.removeImage');
    try {
      return super.removeImage();
    } finally {
      _$_ImageFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageUrl: ${imageUrl}
    ''';
  }
}
