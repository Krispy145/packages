import "package:flutter/material.dart";
import "package:forms/presentation/maps/store.dart";
import "package:theme/data/models/text/text_types.dart";
import "package:theme/presentation/changer/view.dart";
import "package:theme/presentation/components/textStyles/store.dart";

class TextStyleView extends StatelessWidget {
  final void Function(TextTypes newTextType)? onTextTypeChanged;
  TextStyleView({super.key, this.onTextTypeChanged});

  final store = TextTypesStore();
  @override
  Widget build(BuildContext context) {
    return ThemeComponentEditor(
      store: FormsMapStore(
        initialData: store.mergedMap,
        onMapChanged: (data) =>
            onTextTypeChanged?.call(TextTypes.fromJson(data)),
      ),
      title: "Text Styles",
    );
  }
}
