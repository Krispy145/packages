import "dart:ui";

import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:forms/presentation/components/base/states.dart";
import "package:mobx/mobx.dart";

import "../base/store.dart";

part "store.g.dart";

class TextFormFieldStore = _TextFormFieldStore with _$TextFormFieldStore;

abstract class _TextFormFieldStore extends BaseFormFieldStore<String> with Store {
  // Validation
  final int? minChars;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? Function(
    BuildContext, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  })? buildCounter;
  final AutovalidateMode? autovalidateMode;

  // Style
  final Brightness? keyboardAppearance;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Color? cursorErrorColor;
  final MouseCursor? mouseCursor;
  final InputDecoration? decoration;
  final bool? cursorOpacityAnimates;
  final BoxHeightStyle selectionHeightStyle;
  final BoxWidthStyle selectionWidthStyle;
  final bool expands;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final Clip clipBehavior;

  // Focus

  final FocusNode? focusNode;
  final bool autofocus;

  // Input / Interaction
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool enableSuggestions;
  final Iterable<String>? autofillHints;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final UndoHistoryController? undoController;
  final bool scribbleEnabled;
  final ScrollController? scrollController;
  final bool readOnly;
  final bool autocorrect;
  final bool? enabled;
  final ScrollPhysics? scrollPhysics;
  final bool? enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final DragStartBehavior dragStartBehavior;
  final bool canRequestFocus;

  // Triggers
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool onTapAlwaysCalled;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;

  // Other

  final TextCapitalization textCapitalization;
  final TextDirection? textDirection;

  final EdgeInsets scrollPadding;
  final bool enableIMEPersonalizedLearning;
  final String? restorationId;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final ContentInsertionConfiguration? contentInsertionConfiguration;
  final WidgetStatesController? statesController;

  _TextFormFieldStore({
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
    // this.textFormFieldController = const TextFormFieldController(),
    this.minChars,
    this.focusNode,
    this.decoration,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.showCursor,
    this.obscuringCharacter = "•",
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onTapAlwaysCalled = false,
    this.onTapOutside,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.cursorErrorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20),
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode,
    this.scrollController,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.mouseCursor,
    this.contextMenuBuilder,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.undoController,
    this.onAppPrivateCommand,
    this.cursorOpacityAnimates,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.dragStartBehavior = DragStartBehavior.start,
    this.contentInsertionConfiguration,
    this.statesController,
    this.clipBehavior = Clip.hardEdge,
    this.scribbleEnabled = true,
    this.canRequestFocus = true,
  }) {
    textController = TextEditingController(text: value);
    // On Value Changed
    // reaction<String?>((reaction) => value, (newValue) {
    //   textController.setTextIfNotEqual(newValue.toString());
    // });
  }
  @observable
  late TextEditingController textController;

  @override
  FieldState<String> validate(String value) {
    if (autovalidateMode == AutovalidateMode.disabled) {
      return ValidFormFieldState(value);
    }

    if (minChars != null && value.length < minChars!) {
      return IncompleteFormFieldState(
        value: value,
        error: "Minimum $minChars characters required",
      );
    }
    return ValidFormFieldState(value);
  }
}
