import "package:maps/data/models/google/place_model.dart";
import "package:maps/presentation/components/search/form_field.dart";
import "package:maps/presentation/components/search/store.dart";
import "package:reactive_forms/reactive_forms.dart";

class ReactiveGooglePlacesField
    extends ReactiveFormField<GooglePlace, GooglePlace> {
  ReactiveGooglePlacesField({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    required String googleApiKey,
    void Function(FormControl<GooglePlace>?)? onValueChanged,
  }) : super(
          builder: (field) {
            final store = GooglePlaceSearchFormFieldStore(
              googleAPIKey: googleApiKey,
              // onValueChanged: (place) => field.didChange(place),
              initialValue: field.value,
              title: "Search Locations",
              onValueChanged: (place) {
                field.didChange(place);
                onValueChanged?.call(
                  field.control,
                ); // TODO: Check how this should be working
              },
            );
            return GooglePlaceSearchFormField(store: store);
          },
        );

  @override
  ReactiveFormFieldState<GooglePlace, GooglePlace> createState() =>
      ReactiveFormFieldState<GooglePlace, GooglePlace>();
}
