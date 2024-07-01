import "package:forms/presentation/components/images/form_field.dart";
import "package:forms/presentation/components/images/store.dart";
import "package:reactive_forms/reactive_forms.dart";

class ReactiveImagesField extends ReactiveFormField<List<String>, List<String>> {
  ReactiveImagesField({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
  }) : super(
          builder: (field) {
            final store = ImagesFormFieldStore(
              onValueChanged: (urls) => field.didChange(urls),
              initialValue: field.value,
              title: "Images",
            );
            return ImagesFormField(store: store, showTitle: false);
          },
        );

  @override
  ReactiveFormFieldState<List<String>, List<String>> createState() => _ReactiveImagesFieldState<List<String>>();
}

class _ReactiveImagesFieldState<T> extends ReactiveFormFieldState<T, List<String>> {
  _ReactiveImagesFieldState();
}
