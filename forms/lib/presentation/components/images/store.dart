import "package:forms/presentation/components/base/store.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/typedefs.dart";

part "store.g.dart";

class ImagesFormFieldStore = _ImagesFormFieldStore with _$ImagesFormFieldStore;

abstract class _ImagesFormFieldStore extends BaseFormFieldStore<List<URL>?> with Store {
  _ImagesFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    _loadImages(value: value);
    // On Value Changed
    // reaction<List<String>?>((reaction) => value, (newValue) {
    //   _loadImages(value: newValue);
    // });
    reaction((p0) => imageUrls, (p0) {
      value = imageUrls;
    });
  }

  @observable
  late ObservableList<URL> imageUrls = ObservableList();

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

  void _loadImages({List<URL>? value}) {
    imageUrls = ObservableList.of(value ?? []);
  }
}
