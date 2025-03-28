import "package:flutter/material.dart";
import "package:forms/presentation/components/date_and_time/form_field.dart";
import "package:forms/presentation/components/date_and_time/store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/models/date_and_time_model.dart";

/// A [ReactiveTextField] that contains a [TextField].
///
/// This is a convenience widget that wraps a [TextField] widget in a
/// [ReactiveTextField].
///
/// A [ReactiveForm] ancestor is required.
///
class ReactiveDateAndTimeField
    extends ReactiveFormField<DateAndTime, DateAndTime> {
  final DateAndTimeFormFieldStore? _fieldStore;

  final ReactiveFormFieldCallback<DateAndTime>? onChanged;
  final String? title;

  ReactiveDateAndTimeField({
    super.key,
    super.formControlName,
    super.formControl,
    super.validationMessages,
    super.valueAccessor,
    super.showErrors,
    super.focusNode,
    DateAndTimeFormFieldStore? controller,
    this.onChanged,
    this.title,

    // InputDecoration decoration = const InputDecoration(),
    // TextInputType? keyboardType,
    // TextCapitalization textCapitalization = TextCapitalization.none,
    // TextInputAction? textInputAction,
    // TextStyle? style,
    // StrutStyle? strutStyle,
    // TextDirection? textDirection,
    // TextAlign textAlign = TextAlign.start,
    // TextAlignVertical? textAlignVertical,
    // bool autofocus = false,
    // bool readOnly = false,
    // EditableTextContextMenuBuilder? contextMenuBuilder = _defaultContextMenuBuilder,
    // bool? showCursor,
    // bool obscureText = false,
    // String obscuringCharacter = '•',
    // bool autocorrect = true,
    // SmartDashesType? smartDashesType,
    // SmartQuotesType? smartQuotesType,
    // bool enableSuggestions = true,
    // MaxLengthEnforcement? maxLengthEnforcement,
    // int? maxLines = 1,
    // int? minLines,
    // bool expands = false,
    // int? maxLength,
    // List<TextInputFormatter>? inputFormatters,
    // double cursorWidth = 2.0,
    // double? cursorHeight,
    // Radius? cursorRadius,
    // Color? cursorColor,
    // Brightness? keyboardAppearance,
    // EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    // bool enableInteractiveSelection = true,
    // InputCounterWidgetBuilder? buildCounter,
    // ScrollPhysics? scrollPhysics,
    // Iterable<String>? autofillHints,
    // MouseCursor? mouseCursor,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    // AppPrivateCommandCallback? onAppPrivateCommand,
    // String? restorationId,
    // ScrollController? scrollController,
    // TextSelectionControls? selectionControls,
    // ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    // ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    // Clip clipBehavior = Clip.hardEdge,
    // bool enableIMEPersonalizedLearning = true,
    // bool scribbleEnabled = true,
    // ReactiveFormFieldCallback<T>? onTap,
    // ReactiveFormFieldCallback<T>? onEditingComplete,
    // ReactiveFormFieldCallback<T>? onSubmitted,
    // UndoHistoryController? undoController,
    // bool? cursorOpacityAnimates,
    // TapRegionCallback? onTapOutside,
    // ContentInsertionConfiguration? contentInsertionConfiguration,
    // bool canRequestFocus = true,
    // SpellCheckConfiguration? spellCheckConfiguration,
    // TextMagnifierConfiguration? magnifierConfiguration,
  })  : _fieldStore = controller,
        super(
          builder: (field) {
            final state = field as _ReactiveDateAndTimeFieldState;
            return DateAndTimeField(
              store: state._fieldStore,
              // enabled: field.control.enabled,
              // onTap: onTap != null ? () => onTap(field.control) : null,
              // onSubmitted: onSubmitted != null ? (_) => onSubmitted(field.control) : null,
              // onEditingComplete: onEditingComplete != null ? () => onEditingComplete.call(field.control) : null,
              // onChanged: (value) {
              //   field.didChange(value);
              //   onChanged?.call(field.control);
              // },
            );
          },
        );

  @override
  ReactiveFormFieldState<DateAndTime, DateAndTime> createState() =>
      _ReactiveDateAndTimeFieldState();
}

class _ReactiveDateAndTimeFieldState
    extends ReactiveFocusableFormFieldState<DateAndTime, DateAndTime> {
  late DateAndTimeFormFieldStore _fieldStore;

  @override
  void initState() {
    super.initState();
    _initializeFormFieldStore();
  }

  @override
  void onControlValueChanged(dynamic value) {
    final effectiveValue = value as DateAndTime?;
    _fieldStore.value = effectiveValue;
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
    final currentWidget = widget as ReactiveDateAndTimeField;
    if (currentWidget._fieldStore == null) {
      _fieldStore = DateAndTimeFormFieldStore(
        initialValue: initialValue,
        title: currentWidget.title ?? "Date and Time",
        onValueChanged: (newValue) {
          didChange(newValue);
          currentWidget.onChanged?.call(control);
        },
      );
    } else {
      _fieldStore = currentWidget._fieldStore!;
      _fieldStore.value = initialValue;
    }
  }

  @override
  void dispose() {
    final currentWidget = widget as ReactiveDateAndTimeField;
    if (currentWidget._fieldStore == null) {
      // _fieldStore.dispose();
    }
    super.dispose();
  }
}
