import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/changer/changer.dart';
import 'package:theme/changer/components/colors/store.dart';
import 'package:theme/changer/panel_view/view.dart';
import 'package:theme/domain/converters/colors/color.dart';
import 'package:theme/presentation/theme_changer/components/color_circle.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/color/form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/color/store.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/sizes/edge_insets.dart';
import 'package:utilities/sizes/spacers.dart';

typedef DOColor = MapEntry<String, dynamic>;

/// [ColorsView] of the app.
class ColorsView extends StatelessWidget {
  /// [ColorsView] constructor.
  ColorsView({super.key});

  /// [ColorSchemesStore] instance.
  final ColorSchemesStore store = ColorSchemesStore();

  @override
  Widget build(BuildContext context) {
    return ExpandingPanelViewBuilder.right(
      widthPercentage: 0.25,
      panelViewBuilder: (context) {
        return Observer(
          builder: (context) {
            final selectedColor = store.selectedColor;
            final colorFormFieldStore = ColorFormFieldStore(
              value: selectedColor,
              title: selectedColor.key,
              onValueChanged: (color) {
                AppLogger.print('on value changed: ${color.value}', [PackageFeatures.theme]);
                store.selectedColor = color;
                ThemeChanger.changeCurrentThemeStyle(colorModel: store.setColorModel());
              },
            );
            return ColorFormField(store: colorFormFieldStore);
          },
        );
      },
      viewBuilder: (context, panelStore) => Column(
        children: [
          Sizes.m.spacer(),
          Expanded(
            child: Observer(
              builder: (context) {
                return GridView(
                  padding: AppEdgeInsets.all(context, Sizes.m),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 160,
                    crossAxisSpacing: Sizes.m.points(context),
                    mainAxisSpacing: Sizes.m.points(context),
                  ),
                  children: AppTheme.currentColorModel!.toJson().entries.map(
                    (e) {
                      return ColorCircle(
                        color: const ColorConverter().fromJson(e.value) ?? Colors.transparent,
                        onTap: () {
                          store.setSelectedColor(e);
                          if (!panelStore.isOpen) {
                            panelStore.toggle();
                          }
                        },
                        label: e.key,
                      );
                    },
                  ).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
