import "dart:typed_data";

import "package:cross_file/cross_file.dart";
import "package:flutter/material.dart";
import "package:forms/presentation/components/base/store.dart";
import "package:mobx/mobx.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:storage/managers/manager.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/pickers/picker.dart";
import "package:storage/repository.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";
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
    if (value != null) {
      setLoaded();
    } else {
      setEmpty("No image selected");
    }
    reaction(
      (p0) => imageUrl,
      (p0) => value = imageUrl,
    );
  }

  @observable
  late URL? imageUrl = value;

  @observable
  XFile? pickedImage;

  @observable
  Uint8List? imageBytes;

  @observable
  bool didPickImage = false;

  final pageController = PageController();

  final BoxDecoration defaultDecoration = BoxDecoration(borderRadius: BorderRadius.circular(8));

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
    imageUrlKey: FormControl<URL>(value: imageUrl, validators: [Validators.required]),
  });

  late final bool canStoreImage = storageRepository != null;

  final LYFilePicker picker = LYFilePicker();

  late final LYFileUploadManager? fileUploadManager = canStoreImage
      ? LYFileUploadManager(
          storageRepository: storageRepository!,
          filePickerService: filePicker ?? picker,
        )
      : null;

  Future<void> pickImage() async {
    try {
      setLoading();
      if (fileUploadManager != null) {
        pickedImage = await fileUploadManager!.pickSingleImage();
        imageBytes = await pickedImage?.readAsBytes();
        didPickImage = pickedImage != null;
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
        pickedImage = await fileUploadManager!.pickCameraImage();
        imageBytes = await pickedImage?.readAsBytes();
        didPickImage = pickedImage != null;
      }
      setLoaded();
    } catch (e) {
      setError("Error taking photo");
    }
  }

  @action
  Future<void> updateImage({required Pair<URL?, bool> newImageOptions}) async {
    imageUrl = newImageOptions.first;
    if (newImageOptions.second && fileUploadManager != null) {
      if (pickedImage != null) {
        setLoading();
        await fileUploadManager!.uploadImage(image: pickedImage!).then((value) {
          imageUrl = value;
          form.control(imageUrlKey).value = value;
          setLoaded();
        }).catchError((e) {
          setError("Error uploading image");
        });
      } else if (newImageOptions.first != null) {
        imageUrl = newImageOptions.first;
        form.control(imageUrlKey).value = imageUrl;
        setLoaded();
      }
    }
  }

  @action
  Future<void> removeImage() async {
    setLoading();
    imageUrl = null;
    pickedImage = null;
    imageBytes = null;
    form.control(imageUrlKey).reset();
    setEmpty("No image selected");
  }
}
