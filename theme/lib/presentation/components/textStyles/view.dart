import 'package:flutter/material.dart';
import 'package:theme/presentation/components/textStyles/store.dart';
import 'package:theme/data/models/text/text_style_model.dart';
import 'package:theme/presentation/changer/components/editing_map/store.dart';
import 'package:theme/presentation/changer/view.dart';
import 'package:utilities/helpers/extensions/build_context.dart';

class TextStyleView extends StatelessWidget {
  final void Function(TextStyleModel newTextStyle)? onTextStyleChanged;
  TextStyleView({super.key, this.onTextStyleChanged});

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
          onMapChanged: (data) {
            //TODO:
            onTextStyleChanged?.call(TextStyleModel.fromJson(data));
          },
        ),
        title: 'Text Styles',
      ),

//       SingleChildScrollView(
//         child: Column(
//           children: store.mergedMap.entries.map(
//             (textType) {
//               final type = textType.key;
//               final typeValue = textType.value as Map<String, dynamic>;
//               return Column(
//                 children: [
//                   ColoredBox(
//                     color: AppTheme.currentColorModel?.primary ?? Colors.blue,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(type, style: Theme.of(context).textTheme.titleMedium),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Accordion(
//                     headerBackgroundColor: AppTheme.currentColorModel?.tertiary,
//                     children: typeValue.entries.map(
//                       (entry) {
//                         final size = entry.key;
//                         final sizeValue = entry.value as Map<String, dynamic>;
//                         return AccordionSection(
//                           headerPadding: const EdgeInsets.all(8),
//                           header: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 size,
//                                 style: Theme.of(context).textTheme.titleMedium,
//                               ),
//                             ],
//                           ),
//                           content: Observer(
//                             builder: (context) {
//                               return Padding(
//                                 padding: const EdgeInsets.all(8),
//                                 child: ThemeComponentEditor(
//                                   mapEditorStore: MapEditorStore(
//                                     initialData: sizeValue,
//                                     onMapChanged: (data) {
//                                       //TODO:
//                                     },
//                                   ),
//                                   title: 'Text Styles',
//                                 ),
//                                 // child: Column(
//                                 //   children:

//                                 //   sizeValue.entries.map(
//                                 //     (e) {
//                                 //       final title = e.key;
//                                 //       final value = e.value;
//                                 //       if (value is String) {
//                                 //         return TextFormField(
//                                 //           initialValue: value,
//                                 //           onChanged: (newString) => store.setTextStyleModel(type, size, title, newString),
//                                 //         );
//                                 //       }
//                                 //       if (value is double) {
//                                 //         final doubleStore = DoubleFormFieldStore(
//                                 //           value: value,
//                                 //           onValueChanged: (newDouble) {
//                                 //             final textTypes = store.setTextStyleModel(type, size, title, newDouble);
//                                 //             ThemeChanger.changeBaseThemeModel(
//                                 //               model: AppTheme.baseThemeModel.copyWith(
//                                 //                 textStyles: {AppTheme.styleType: textTypes ?? TextTypes.defaultTextTypes()},
//                                 //               ),
//                                 //             );
//                                 //           },
//                                 //           title: 'Double',
//                                 //         );
//                                 //         return DoubleFormField(store: doubleStore);
//                                 //       }
//                                 //       return const SizedBox();
//                                 //     },
//                                 //   ).toList(),
// //
//                               );
//                             },
//                           ),
//                         );
//                       },
//                     ).toList(),
//                   ),
//                 ],
//               );
//             },
//           ).toList(),
//         ),
//       ),
    );
  }
}
