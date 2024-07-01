import "package:forms/presentation/components/image/form_field.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:reactive_forms/reactive_forms.dart";

class ReactiveImageField extends ReactiveFormField<String, String> {
  ReactiveImageField({
    String title = "Image",
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    double? height,
    double? width,
  }) : super(
          builder: (field) {
            final store = ImageFormFieldStore(
              onValueChanged: (urls) => field.didChange(urls),
              initialValue: field.value,
              title: title,
            );
            return ImageFormField(store: store, height: height, width: width, showTitle: false);
          },
        );

  @override
  ReactiveFormFieldState<String, String> createState() => _ReactiveImageFieldState<String>();
}

class _ReactiveImageFieldState<T> extends ReactiveFormFieldState<T, String> {
  _ReactiveImageFieldState();
}
