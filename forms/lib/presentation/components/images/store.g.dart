// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImagesFormFieldStore on _ImagesFormFieldStore, Store {
  late final _$_ImagesFormFieldStoreActionController =
      ActionController(name: '_ImagesFormFieldStore', context: context);

  @override
  void addNewImageFormField({required int index}) {
    final _$actionInfo = _$_ImagesFormFieldStoreActionController.startAction(
        name: '_ImagesFormFieldStore.addNewImageFormField');
    try {
      return super.addNewImageFormField(index: index);
    } finally {
      _$_ImagesFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addImage({required String imageUrl}) {
    final _$actionInfo = _$_ImagesFormFieldStoreActionController.startAction(
        name: '_ImagesFormFieldStore.addImage');
    try {
      return super.addImage(imageUrl: imageUrl);
    } finally {
      _$_ImagesFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeImage({required int index}) {
    final _$actionInfo = _$_ImagesFormFieldStoreActionController.startAction(
        name: '_ImagesFormFieldStore.removeImage');
    try {
      return super.removeImage(index: index);
    } finally {
      _$_ImagesFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateImage({required String imageUrl, required int index}) {
    final _$actionInfo = _$_ImagesFormFieldStoreActionController.startAction(
        name: '_ImagesFormFieldStore.updateImage');
    try {
      return super.updateImage(imageUrl: imageUrl, index: index);
    } finally {
      _$_ImagesFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reorderImages({required int oldIndex, required int newIndex}) {
    final _$actionInfo = _$_ImagesFormFieldStoreActionController.startAction(
        name: '_ImagesFormFieldStore.reorderImages');
    try {
      return super.reorderImages(oldIndex: oldIndex, newIndex: newIndex);
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

    ''';
  }
}
