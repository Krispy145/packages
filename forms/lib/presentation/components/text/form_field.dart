import "package:flutter/material.dart";
import "package:utilities/sizes/spacers.dart";

import "../base/form_field.dart";
import "store.dart";

class DOTextFormField extends BaseFormField<TextFormFieldStore> {
  final Widget? leading;
  final List<Widget>? actions;
  const DOTextFormField({
    super.key,
    required super.store,
    this.leading,
    this.actions,
  });

  @override
  Widget buildField(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 48),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[leading!, Sizes.s.spacer(vertical: false)],
          Expanded(
            child: TextFormField(
              controller: store.textController,
              onChanged: store.onValueChanged,
              decoration: store.textFormFieldController.decoration,
              keyboardType: store.textFormFieldController.keyboardType,
              textInputAction: store.textFormFieldController.textInputAction,
              onFieldSubmitted: store.textFormFieldController.onFieldSubmitted,
              validator: store.textFormFieldController.validator,
              autovalidateMode: store.textFormFieldController.autovalidateMode,
              enabled: store.textFormFieldController.enabled,
              readOnly: store.textFormFieldController.readOnly,
              obscureText: store.textFormFieldController.obscureText,
              maxLines: store.textFormFieldController.maxLines,
              minLines: store.textFormFieldController.minLines,
              maxLength: store.textFormFieldController.maxLength,
              maxLengthEnforcement: store.textFormFieldController.maxLengthEnforcement,
              inputFormatters: store.textFormFieldController.inputFormatters,
              scribbleEnabled: store.textFormFieldController.scribbleEnabled,
              scrollPadding: store.textFormFieldController.scrollPadding,
              scrollPhysics: store.textFormFieldController.scrollPhysics,
              enableInteractiveSelection: store.textFormFieldController.enableInteractiveSelection,
              cursorColor: store.textFormFieldController.cursorColor,
              cursorWidth: store.textFormFieldController.cursorWidth,
              cursorHeight: store.textFormFieldController.cursorHeight,
              cursorRadius: store.textFormFieldController.cursorRadius,
              cursorOpacityAnimates: store.textFormFieldController.cursorOpacityAnimates,
              scrollController: store.textFormFieldController.scrollController,
              selectionControls: store.textFormFieldController.selectionControls,
              buildCounter: store.textFormFieldController.buildCounter,
              autofillHints: store.textFormFieldController.autofillHints,
              restorationId: store.textFormFieldController.restorationId,
              mouseCursor: store.textFormFieldController.mouseCursor,
              autocorrect: store.textFormFieldController.autocorrect,
              enableSuggestions: store.textFormFieldController.enableSuggestions,
              smartDashesType: store.textFormFieldController.smartDashesType,
              smartQuotesType: store.textFormFieldController.smartQuotesType,
              enableIMEPersonalizedLearning: store.textFormFieldController.enableIMEPersonalizedLearning,
              textCapitalization: store.textFormFieldController.textCapitalization,
              style: store.textFormFieldController.style,
              strutStyle: store.textFormFieldController.strutStyle,
              textAlign: store.textFormFieldController.textAlign,
              textAlignVertical: store.textFormFieldController.textAlignVertical,
              textDirection: store.textFormFieldController.textDirection,
              selectionHeightStyle: store.textFormFieldController.selectionHeightStyle,
              selectionWidthStyle: store.textFormFieldController.selectionWidthStyle,
              spellCheckConfiguration: store.textFormFieldController.spellCheckConfiguration,
              showCursor: store.textFormFieldController.showCursor,
              statesController: store.textFormFieldController.statesController,
            ),
          ),
          if (actions != null) ...[
            Sizes.s.spacer(vertical: false),
            ...actions!,
          ],
        ],
      ),
    );
  }
}
