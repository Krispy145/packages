import "package:flutter/widgets.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:forms/presentation/components/images/form_field.dart";
import "package:forms/presentation/components/images/store.dart";
import "package:forms/utils/loggers.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/repository.dart";
import "package:utilities/logger/logger.dart";

class ReactiveImagesField extends ReactiveFormField<List<String>, List<String>> {
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
          builder: (field) => _buildField(
            field: field,
            storageRepository: storageRepository,
            filePicker: filePicker,
            axis: axis,
            height: height,
            width: width,
            tabType: ImagePickerType.combined,
          ),
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
          builder: (field) => _buildField(
            field: field,
            axis: axis,
            height: height,
            width: width,
            tabType: ImagePickerType.url,
          ),
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
          builder: (field) => _buildField(
            field: field,
            storageRepository: storageRepository,
            filePicker: filePicker,
            axis: axis,
            height: height,
            width: width,
            tabType: ImagePickerType.upload,
          ),
        );

  static ImagesFormField _buildField({
    required ReactiveFormFieldState<List<String>, List<String>> field,
    StorageRepository? storageRepository,
    BaseFilePicker? filePicker,
    required Axis axis,
    double? height,
    double? width,
    required ImagePickerType tabType,
  }) {
    final store = ImagesFormFieldStore(
      onValueChanged: (urls) {
        try {
          field.control.value = urls;
        } catch (e) {
          AppLogger.print("${tabType.name} Error: $e", [FormsLoggers.field], type: LoggerType.error);
        }
      },
      storageRepository: storageRepository,
      filePicker: filePicker,
      tabType: tabType,
      initialValue: field.value,
      title: "Images",
    );

    return ImagesFormField(store: store, showTitle: false, axis: axis, height: height, width: width);
  }

  @override
  ReactiveFormFieldState<List<String>, List<String>> createState() => _ReactiveImagesFieldState<List<String>>();
}

class _ReactiveImagesFieldState<T> extends ReactiveFormFieldState<T, List<String>> {
  _ReactiveImagesFieldState();
}
