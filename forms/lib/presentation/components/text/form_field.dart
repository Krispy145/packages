import "package:flutter/material.dart";
import "package:utilities/sizes/spacers.dart";

import "../base/form_field.dart";
import "store.dart";

class PLSTextFormField extends BaseFormField<TextFormFieldStore> {
  final Widget? leading;
  final List<Widget>? actions;
  PLSTextFormField({
    super.key,
    required super.store,
    super.showTitle,
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
          if (leading != null) ...[
            leading!,
            Sizes.s.spacer(axis: Axis.horizontal),
          ],
          Expanded(
            child: TextFormField(
              controller: store.textController,
              onChanged: store.onValueChanged,
              decoration: store.decoration,
              keyboardType: store.keyboardType,
              textInputAction: store.textInputAction,
              onFieldSubmitted: store.onFieldSubmitted,
              validator: store.validator,
              autovalidateMode: store.autovalidateMode,
              enabled: store.enabled,
              readOnly: store.readOnly,
              obscureText: store.obscureText,
              maxLines: store.maxLines,
              minLines: store.minLines,
              maxLength: store.maxLength,
              maxLengthEnforcement: store.maxLengthEnforcement,
              inputFormatters: store.inputFormatters,
              scribbleEnabled: store.scribbleEnabled,
              scrollPadding: store.scrollPadding,
              scrollPhysics: store.scrollPhysics,
              enableInteractiveSelection: store.enableInteractiveSelection,
              cursorColor: store.cursorColor,
              cursorWidth: store.cursorWidth,
              cursorHeight: store.cursorHeight,
              cursorRadius: store.cursorRadius,
              cursorOpacityAnimates: store.cursorOpacityAnimates,
              scrollController: store.scrollController,
              selectionControls: store.selectionControls,
              buildCounter: store.buildCounter,
              autofillHints: store.autofillHints,
              restorationId: store.restorationId,
              mouseCursor: store.mouseCursor,
              autocorrect: store.autocorrect,
              enableSuggestions: store.enableSuggestions,
              smartDashesType: store.smartDashesType,
              smartQuotesType: store.smartQuotesType,
              enableIMEPersonalizedLearning: store.enableIMEPersonalizedLearning,
              textCapitalization: store.textCapitalization,
              style: store.style,
              strutStyle: store.strutStyle,
              textAlign: store.textAlign,
              textAlignVertical: store.textAlignVertical,
              textDirection: store.textDirection,
              selectionHeightStyle: store.selectionHeightStyle,
              selectionWidthStyle: store.selectionWidthStyle,
              spellCheckConfiguration: store.spellCheckConfiguration,
              showCursor: store.showCursor,
              statesController: store.statesController,
            ),
          ),
          if (actions != null) ...[
            Sizes.s.spacer(axis: Axis.horizontal),
            ...actions!,
          ],
        ],
      ),
    );
  }
}
