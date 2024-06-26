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
    reaction<List<String>?>((reaction) => value, (newValue) {
      _loadImages(value: newValue);
    });
  }

  @observable
  late ObservableList<URL> imageUrls = ObservableList();

  @action
  void addImage({required URL imageUrl}) {
    imageUrls.add(imageUrl);
    value = imageUrls;
    print("IMAGES: Value after add: $value == $imageUrls");
  }

  @action
  void removeImage({required int index}) => imageUrls.removeAt(index);

  @action
  void updateImage({required URL imageUrl, required int index}) {
    imageUrls[index] = imageUrl;
    value = imageUrls;
    print("IMAGES: Value after update: $value == $imageUrls");
  }

  @action
  void cancelChanges() {
    imageUrls = ObservableList.of(value ?? []);
  }

  void _loadImages({List<URL>? value}) {
    imageUrls = ObservableList.of(value ?? []);
  }
}
