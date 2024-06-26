import "package:latlong2/latlong.dart";
import "package:maps/data/models/marker_model.dart";
import "package:maps/presentation/components/edit_location/form_field.dart";
import "package:maps/presentation/components/edit_location/store.dart";
import "package:reactive_forms/reactive_forms.dart";

class ReactiveMapField extends ReactiveFormField<LatLng, LatLng> {
  ReactiveMapField({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    required String mapBoxUrl,
  }) : super(
          builder: (field) {
            final store = EditLocationMapFormFieldStore(
              onValueChanged: (marker) => field.didChange(marker?.position),
              mapTilesUrl: mapBoxUrl,
              initialValue: field.value != null ? MarkerModel(id: "fakeid", score: 1, position: field.value!) : null,
              title: "Coordinates",
            );
            return EditLocationMapFormField(store: store);
          },
        );

  @override
  ReactiveFormFieldState<LatLng, LatLng> createState() => _ReactiveMapFieldState<LatLng>();
}

class _ReactiveMapFieldState<T> extends ReactiveFocusableFormFieldState<T, LatLng> {
  @override
  void onControlValueChanged(dynamic value) {
    //
    super.onControlValueChanged(value);
  }

  @override
  void dispose() {
    //
    super.dispose();
  }
}
