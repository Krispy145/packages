import "package:flutter/widgets.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:forms/presentation/components/images/form_field.dart";
import "package:forms/presentation/components/images/store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/repository.dart";

class ReactiveImagesField extends ReactiveFormField<List<String?>, List<String?>> {
  final StorageRepository? storageRepository;
  final BaseFilePicker? filePicker;
  final Axis axis;
  ReactiveImagesField.combined({
    super.key,
    required this.storageRepository,
    this.filePicker,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    this.axis = Axis.horizontal,
    double? height,
    double? width,
  }) : super(
          builder: (field) {
            final store = ImagesFormFieldStore(
              onValueChanged: (urls) => field.didChange(urls),
              storageRepository: storageRepository,
              filePicker: filePicker,
              tabType: ImagePickerType.combined,
              initialValue: field.value,
              title: "Images",
            );

            return ImagesFormField(store: store, showTitle: false, axis: axis, height: height, width: width);
          },
        );

  ReactiveImagesField.url({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    this.axis = Axis.horizontal,
    double? height,
    double? width,
  })  : storageRepository = null,
        filePicker = null,
        super(
          builder: (field) {
            final store = ImagesFormFieldStore(
              onValueChanged: (urls) => field.didChange(urls),
              tabType: ImagePickerType.url,
              initialValue: field.value,
              title: "Images",
            );

            return ImagesFormField(store: store, showTitle: false, axis: axis, height: height, width: width);
          },
        );

  ReactiveImagesField.upload({
    super.key,
    required this.storageRepository,
    this.filePicker,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    this.axis = Axis.horizontal,
    double? height,
    double? width,
  }) : super(
          builder: (field) {
            final store = ImagesFormFieldStore(
              onValueChanged: (urls) => field.didChange(urls),
              storageRepository: storageRepository,
              filePicker: filePicker,
              tabType: ImagePickerType.upload,
              initialValue: field.value,
              title: "Images",
            );

            return ImagesFormField(store: store, showTitle: false, axis: axis, height: height, width: width);
          },
        );

  @override
  ReactiveFormFieldState<List<String?>, List<String?>> createState() => _ReactiveImagesFieldState<List<String?>>();
}

class _ReactiveImagesFieldState<T> extends ReactiveFormFieldState<T, List<String?>> {
  _ReactiveImagesFieldState();
}
