import "package:forms/presentation/components/base/store.dart";
import "package:forms/presentation/components/text/store.dart";
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

  @observable
  late ObservableList<TextFormFieldStore> textStores = ObservableList();

  @action
  void addImage({URL? imageUrl}) {
    if (imageUrl == null) return;
    imageUrls.add(imageUrl);
    textStores.add(
      TextFormFieldStore(
        initialValue: imageUrl,
        onValueChanged: (newValue) {
          if (newValue != null) imageUrls[imageUrls.length - 1] = newValue;
          onValueChanged(imageUrls);
        },
        title: "ImageUrl",
      ),
    );
  }

  @action
  void cancelChanges() {
    imageUrls = ObservableList.of(value ?? []);
    textStores = ObservableList.of(
      imageUrls
          .map(
            (e) => TextFormFieldStore(
              initialValue: e,
              onValueChanged: (newValue) {
                final index = imageUrls.indexWhere((element) => element == e);
                if (newValue != null) imageUrls[index] = newValue;
              },
              title: "ImageUrl",
            ),
          )
          .toList(),
    );
  }

  void _loadImages({List<URL>? value}) {
    imageUrls = ObservableList.of(value ?? []);
    textStores = ObservableList.of(
      imageUrls
          .map(
            (e) => TextFormFieldStore(
              initialValue: e,
              onValueChanged: (newValue) {
                final index = imageUrls.indexWhere((element) => element == e);
                if (newValue != null) imageUrls[index] = newValue;
                onValueChanged(imageUrls);
              },
              title: "Image Url",
            ),
          )
          .toList(),
    );
  }
}
