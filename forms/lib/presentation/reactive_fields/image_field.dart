import "package:flutter/material.dart";
import "package:forms/presentation/components/image/form_field.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/repository.dart";

class ReactiveImageField extends ReactiveFormField<String, String> {
  final StorageRepository? storageRepository;
  final BaseFilePicker? filePicker;
  final Axis axis;
  final BoxDecoration? decoration;
  final double? aspectRatio;
  final bool showTitle;
  final bool isActive;
  ReactiveImageField.combined({
    String title = "Image",
    this.showTitle = true,
    required this.storageRepository,
    this.filePicker,
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    double? height,
    double? width,
    this.axis = Axis.horizontal,
    this.decoration,
    this.aspectRatio,
    this.isActive = true,
  }) : super(
          builder: (field) {
            final store = ImageFormFieldStore(
              onValueChanged: (urls) => field.didChange(urls),
              storageRepository: storageRepository,
              filePicker: filePicker,
              tabType: ImagePickerType.combined,
              initialValue: field.value,
              title: title,
            );

            return ImageFormField(
              store: store,
              height: height,
              width: width,
              showTitle: showTitle,
              axis: axis,
              isActive: isActive,
              decoration: decoration,
              aspectRatio: aspectRatio,
            );
          },
        );

  ReactiveImageField.url({
    String title = "Image",
    this.showTitle = true,
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    double? height,
    double? width,
    this.axis = Axis.horizontal,
    this.decoration,
    this.aspectRatio,
    this.isActive = true,
  })  : storageRepository = null,
        filePicker = null,
        super(
          builder: (field) {
            final store = ImageFormFieldStore(
              onValueChanged: (urls) => field.didChange(urls),
              tabType: ImagePickerType.url,
              initialValue: field.value,
              title: title,
            );

            return ImageFormField(
              store: store,
              height: height,
              width: width,
              showTitle: showTitle,
              axis: axis,
              isActive: isActive,
              decoration: decoration,
              aspectRatio: aspectRatio,
            );
          },
        );

  ReactiveImageField.upload({
    String title = "Image",
    this.showTitle = true,
    required this.storageRepository,
    this.filePicker,
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    double? height,
    double? width,
    this.axis = Axis.horizontal,
    this.decoration,
    this.aspectRatio,
    this.isActive = true,
  }) : super(
          builder: (field) {
            final store = ImageFormFieldStore(
              onValueChanged: (urls) => field.didChange(urls),
              storageRepository: storageRepository,
              filePicker: filePicker,
              tabType: ImagePickerType.upload,
              initialValue: field.value,
              title: title,
            );

            return ImageFormField(
              store: store,
              height: height,
              width: width,
              showTitle: showTitle,
              axis: axis,
              isActive: isActive,
              decoration: decoration,
            );
          },
        );

  @override
  ReactiveFormFieldState<String, String> createState() => _ReactiveImageFieldState<String>();
}

class _ReactiveImageFieldState<T> extends ReactiveFormFieldState<T, String> {
  _ReactiveImageFieldState();
}
