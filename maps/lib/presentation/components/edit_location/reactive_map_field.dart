import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps/presentation/components/edit_location/form_field.dart';
import 'package:maps/presentation/components/edit_location/store.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// A [ReactiveTextField] that contains a [TextField].
///
/// This is a convenience widget that wraps a [TextField] widget in a
/// [ReactiveTextField].
///
/// A [ReactiveForm] ancestor is required.
///
class ReactiveMapField extends ReactiveFormField<LatLng, LatLng> {
  final EditLocationMapFormFieldStore? _fieldStore;

  final String mapTilesUrl;
  final ReactiveFormFieldCallback<LatLng>? onChanged;

  ReactiveMapField({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    required this.mapTilesUrl,
    EditLocationMapFormFieldStore? controller,
    this.onChanged,
  })  : _fieldStore = controller,
        super(
          builder: (ReactiveFormFieldState<LatLng, LatLng> field) {
            final state = field as _ReactiveMapFieldState;
            return EditLocationMapFormField(
              store: state._fieldStore,
            );
          },
        );

  @override
  ReactiveFormFieldState<LatLng, LatLng> createState() => _ReactiveMapFieldState();
}

class _ReactiveMapFieldState extends ReactiveFocusableFormFieldState<LatLng, LatLng> {
  late EditLocationMapFormFieldStore _fieldStore;

  @override
  void initState() {
    super.initState();
    _initializeFormFieldStore();
  }

  @override
  void onControlValueChanged(dynamic value) {
    final effectiveValue = value as LatLng?;
    _fieldStore.value = effectiveValue;
    didChange(effectiveValue);
    _fieldStore.mapStore.setCenterMarker(center: effectiveValue);
    if (effectiveValue != null) _fieldStore.mapStore.animatedMapController.mapController.move(effectiveValue, 10);
    super.onControlValueChanged(value);
  }

  // @override
  // ControlValueAccessor<T, String> selectValueAccessor() {
  //   if (control is FormControl<int>) {
  //     return IntValueAccessor() as ControlValueAccessor<T, String>;
  //   } else if (control is FormControl<double>) {
  //     return DoubleValueAccessor() as ControlValueAccessor<T, String>;
  //   } else if (control is FormControl<DateTime>) {
  //     return DateTimeValueAccessor() as ControlValueAccessor<T, String>;
  //   } else if (control is FormControl<TimeOfDay>) {
  //     return TimeOfDayValueAccessor() as ControlValueAccessor<T, String>;
  //   }
  //   return super.selectValueAccessor();
  // }

  void _initializeFormFieldStore() {
    final initialValue = value;
    final currentWidget = widget as ReactiveMapField;
    if (currentWidget._fieldStore == null) {
      _fieldStore = EditLocationMapFormFieldStore(
          mapTilesUrl: currentWidget.mapTilesUrl,
          initialValue: initialValue,
          title: "Title",
          onValueChanged: (val) {
            didChange(val);
            currentWidget.onChanged?.call(control);
          });
    } else {
      _fieldStore = currentWidget._fieldStore!;
      _fieldStore.value = initialValue;
    }
  }

  @override
  void dispose() {
    final currentWidget = widget as ReactiveMapField;
    if (currentWidget._fieldStore == null) {
      // _fieldStore.dispose();
    }
    super.dispose();
  }
}
