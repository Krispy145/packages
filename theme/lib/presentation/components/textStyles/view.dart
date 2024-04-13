import 'package:flutter/material.dart';
import 'package:theme/data/models/text/text_types.dart';
import 'package:theme/presentation/components/textStyles/store.dart';
import 'package:theme/presentation/changer/components/editing_map/store.dart';
import 'package:theme/presentation/changer/view.dart';
import 'package:utilities/helpers/extensions/build_context.dart';

class TextStyleView extends StatelessWidget {
  final void Function(TextTypes newTextType)? onTextTypeChanged;
  TextStyleView({super.key, this.onTextTypeChanged});

  final store = TextTypesStore();
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: context.screenWidth * 0.35,
        maxHeight: context.screenHeight * 0.75,
      ),
      child: ThemeComponentEditor(
        mapEditorStore: MapEditorStore(
          initialData: store.mergedMap,
          onMapChanged: (data) => onTextTypeChanged?.call(TextTypes.fromJson(data)),
        ),
        title: 'Text Styles',
      ),
    );
  }
}
