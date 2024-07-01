import "package:forms/presentation/components/base/store.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/typedefs.dart";

part "store.g.dart";

class ImageFormFieldStore = _ImageFormFieldStore with _$ImageFormFieldStore;

abstract class _ImageFormFieldStore extends BaseFormFieldStore<URL> with Store {
  _ImageFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
  }) {
    imageUrl = value;
    // On Value Changed
    // reaction<List<String>?>((reaction) => value, (newValue) {
    //   _loadImages(value: newValue);
    // });
    reaction((p0) => imageUrl, (p0) {
      value = imageUrl;
    });
  }

  @observable
  URL? imageUrl;

  @action
  void updateImage({required URL newImageUrl}) {
    imageUrl = newImageUrl;
  }

  @action
  void removeImage() {
    imageUrl = null;
  }
}
