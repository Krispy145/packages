import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:mobx/mobx.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/pickers/picker.dart";
import "package:storage/repository.dart";
import "package:utilities/data/typedefs.dart";

part "store.g.dart";

class ImagesFormFieldStore = _ImagesFormFieldStore with _$ImagesFormFieldStore;

abstract class _ImagesFormFieldStore extends BaseFormFieldStore<List<URL>?> with Store {
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
      (p0) => imageFormFields.iterator, // Note that the reaction of fields when using Lists requires the use of the iterator property.
      (p0) => value = imageUrls,
    );
  }

  late ObservableList<URL> imageUrls = ObservableList<URL>.of(value ?? []);
  late ObservableList<ImageFormFieldStore> imageFormFields = ObservableList<ImageFormFieldStore>.of([
    ...imageUrls.map(
      (url) => buildStore(initialValue: url, index: imageUrls.indexOf(url)),
    ),
    addingImageStore,
  ]);

  ImageFormFieldStore get addingImageStore => buildStore(index: imageUrls.length);

  ImageFormFieldStore buildStore({URL? initialValue, required int index}) {
    return ImageFormFieldStore(
      filePicker: filePicker,
      storageRepository: storageRepository,
      tabType: tabType,
      initialValue: initialValue,
      onValueChanged: (value) {
        if (value == null) return;
        if (index == imageUrls.length) {
          return addImage(imageUrl: value);
        }
        return updateImage(imageUrl: value, index: index);
      },
      title: title,
    );
  }

  @action
  void addNewImageFormField({required int index}) {
    imageFormFields.add(addingImageStore);
  }

  late final picker = filePicker ?? PLSFilePicker();

  @action
  void addImage({required URL imageUrl}) {
    imageUrls.add(imageUrl);
  }

  @action
  void removeImage({required int index}) {
    imageUrls.removeAt(index);
  }

  @action
  void updateImage({required URL imageUrl, required int index}) {
    if (imageUrls.isEmpty) return;
    imageUrls[index] = imageUrl;
  }

  @action
  void reorderImages({required int oldIndex, required int newIndex}) {
    if (oldIndex >= imageUrls.length) {
      return;
    }
    if (oldIndex == newIndex) {
      return;
    }
    var newIndexAfterCheck = newIndex;
    if (newIndex >= imageUrls.length) {
      newIndexAfterCheck = imageUrls.length - 1;
    }
    final item = imageUrls.removeAt(oldIndex);
    imageUrls.insert(newIndexAfterCheck, item);
  }

  @action
  void cancelChanges() {
    imageUrls = ObservableList.of(value ?? []);
  }
}
