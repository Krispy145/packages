// ignore_for_file: unused_element

import "package:flutter/material.dart";
import "package:forms/presentation/components/base/store.dart";
import "package:mobx/mobx.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:storage/managers/manager.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/pickers/picker.dart";
import "package:storage/repository.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

enum ImagePickerType {
  combined,
  upload,
  url,
}

class ImageFormFieldStore = _ImageFormFieldStore with _$ImageFormFieldStore;

abstract class _ImageFormFieldStore extends BaseFormFieldStore<URL> with LoadStateStore, Store {
  final BaseFilePicker? filePicker;
  final StorageRepository? storageRepository;
  final ImagePickerType tabType;
  _ImageFormFieldStore({
    this.filePicker,
    this.storageRepository,
    required this.tabType,
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    setLoaded();
    reaction(
      (p0) => imageUrl,
      (p0) => value = imageUrl,
    );
  }

  @observable
  late URL? imageUrl = value;

  final pageController = PageController();

  @action
  void changeTab(int index) {
    tabIndex = index;
    pageController.animateToPage(index, duration: Durations.short4, curve: Curves.easeInOut);
  }

  late final bool isEditing = imageUrl != null;

  @observable
  int tabIndex = 0;

  final imageUrlKey = "imageUrl";
  late final form = FormGroup({
    imageUrlKey: FormControl<String>(value: imageUrl, validators: [Validators.required]),
  });

  late final bool canStoreImage = storageRepository != null;

  final DOFilePicker picker = DOFilePicker();

  late final DOFileUploadManager? fileUploadManager = canStoreImage
      ? DOFileUploadManager(
          storageRepository: storageRepository!,
          filePickerService: filePicker ?? picker,
        )
      : null;

  Future<void> pickImage() async {
    try {
      setLoading();
      if (fileUploadManager != null) {
        final newImageUrl = await fileUploadManager!.pickAndUploadSingleImage();
        if (newImageUrl != null) {
          form.control(imageUrlKey).value = newImageUrl;
        }
      }
      setLoaded();
    } catch (e) {
      setError("Error picking image");
    }
  }

  Future<void> takePhoto() async {
    try {
      setLoading();
      if (fileUploadManager != null) {
        final newImageUrl = await fileUploadManager!.pickAndUploadCameraImage();
        if (newImageUrl != null) {
          form.control(imageUrlKey).value = newImageUrl;
        }
      }
      setLoaded();
    } catch (e) {
      setError("Error taking photo");
    }
  }

  @action
  void updateImage({required URL newImageUrl}) {
    imageUrl = newImageUrl;
  }

  @action
  Future<void> removeImage() async {
    final _currentImageUrl = form.control(imageUrlKey).value as String?;
    if (fileUploadManager != null && _currentImageUrl != null) {
      await fileUploadManager!.deleteFile(path: _currentImageUrl);
    }
    imageUrl = null;
    form.control(imageUrlKey).reset();
  }
}
