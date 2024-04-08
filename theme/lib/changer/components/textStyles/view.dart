import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/changer/changer.dart';
import 'package:theme/changer/components/textStyles/store.dart';
import 'package:theme/data/models/text/text_style_model.dart';
import 'package:theme/data/models/text/text_types.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/double/form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/double/store.dart';
import 'package:theme/wrapper/wrapper.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: store.mergedMap.entries.map(
            (textType) {
              final type = textType.key;

              final typeValue = textType.value as Map<String, dynamic>;
              return Column(
                children: [
                  ColoredBox(
                    color: AppTheme.currentColorModel?.primary ?? Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StyleTypeWrapper(
                            styleTypeName: "DO",
                            child: (context, _) => Text(
                              type,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Accordion(
                    headerBackgroundColor: AppTheme.currentColorModel?.tertiary,
                    children: typeValue.entries.map(
                      (entry) {
                        final size = entry.key;
                        final sizeValue = entry.value as Map<String, dynamic>;
                        return AccordionSection(
                          headerPadding: const EdgeInsets.all(8),
                          header: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                size,
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
                              ),
                            ],
                          ),
                          content: Observer(
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: sizeValue.entries.map(
                                    (e) {
                                      final title = e.key;
                                      final value = e.value;
                                      if (value is String) {
                                        return TextFormField(
                                          initialValue: value,
                                          onChanged: (newString) => store.setTextStyleModel(type, size, title, newString),
                                        );

                                        // return StringChanger(
                                        //     currentString: value,
                                        //     onStringChanged: (context, newString) {
                                        //       store.setTextStyleModel(type, size, title, newString);
                                        //     });
                                      }
                                      if (value is double) {
                                        final doubleStore = DoubleFormFieldStore(
                                          value: value,
                                          onValueChanged: (newDouble) {
                                            final textTypes = store.setTextStyleModel(type, size, title, newDouble);
                                            ThemeChanger.changeBaseThemeModel(
                                              model: AppTheme.baseThemeModel.copyWith(
                                                textStyles: {AppTheme.styleType: textTypes ?? TextTypes.defaultTextTypes()},
                                              ),
                                            );
                                          },
                                        );
                                        return DoubleFormField(store: doubleStore);
                                        // return DoubleChanger(
                                        //     currentDouble: value,
                                        //     onDoubleChanged: (context, newDouble) {
                                        //       final textTypes = store.setTextStyleModel(type, size, title, newDouble);
                                        //       ThemeChanger.changeBaseThemeModel(
                                        //         model: AppTheme.baseThemeModel.copyWith(
                                        //           textStyles: {AppTheme.styleType: textTypes ?? TextTypes.defaultTextTypes()},
                                        //         ),
                                        //       );
                                        //     });
                                      }
                                      return const SizedBox();
                                    },
                                  ).toList(),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
