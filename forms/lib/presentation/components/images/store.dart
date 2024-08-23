// ignore_for_file: unused_element

import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:mobx/mobx.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/pickers/picker.dart";
import "package:storage/repository.dart";
import "package:utilities/data/typedefs.dart";

part "store.g.dart";

class ImagesFormFieldStore = _ImagesFormFieldStore with _$ImagesFormFieldStore;

abstract class _ImagesFormFieldStore extends BaseFormFieldStore<List<URL?>> with Store {
  final BaseFilePicker? filePicker;
  final StorageRepository? storageRepository;
  final ImagePickerType tabType;
  _ImagesFormFieldStore({
    this.filePicker,
    this.storageRepository,
    required this.tabType,
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    reaction(
      (p0) => _imageUrls.iterator, // Note that the reaction of fields when using Lists requires the use of the iterator property.
      (p0) => value = _imageUrls,
    );
  }

  late final ObservableList<URL?> _imageUrls = ObservableList.of(value ?? []);

  final DOFilePicker picker = DOFilePicker();

  late ObservableList<ImageFormFieldStore> imageFormFields = ObservableList<ImageFormFieldStore>.of([addingImageStore]);

  late final addingImageStore = ImageFormFieldStore(
    filePicker: picker,
    storageRepository: storageRepository,
    tabType: ImagePickerType.upload,
    initialValue: null,
    onValueChanged: (uploadedResult) {
      if (uploadedResult != null) {
        _imageUrls.add(uploadedResult);
      }
    },
    title: "Add Image",
  );

  @action
  void addNewImageFormField() {
    imageFormFields.add(
      ImageFormFieldStore(
        filePicker: picker,
        storageRepository: storageRepository,
        tabType: ImagePickerType.upload,
        initialValue: null,
        onValueChanged: (uploadedResult) {
          if (uploadedResult != null) {
            _imageUrls.add(uploadedResult);
          }
        },
        title: "Add Image",
      ),
    );
  }

  @action
  void removeImage({required int index}) {
    if (imageFormFields.length <= 1) return;
    imageFormFields.removeAt(index);
  }

  // @action
  // void updateImage({required Pair<URL?, bool> result, required int index}) {
  //   if (imageFormFields.isEmpty) return;
  //   imageFormFields[index].updateImage(newImageOptions: result);
  // }

  @action
  void reorderImages({required int oldIndex, required int newIndex}) {
    if (oldIndex >= imageFormFields.length) {
      return;
    }
    if (oldIndex == newIndex) {
      return;
    }
    var newIndexAfterCheck = newIndex;
    if (newIndex >= imageFormFields.length) {
      newIndexAfterCheck = imageFormFields.length - 1;
    }
    final item = imageFormFields.removeAt(oldIndex);
    imageFormFields.insert(newIndexAfterCheck, item);
  }

  @action
  void cancelChanges() {
    imageFormFields = ObservableList<ImageFormFieldStore>.of([]);
  }
}
