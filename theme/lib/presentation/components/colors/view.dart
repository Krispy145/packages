import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/color/color_circle.dart";
import "package:forms/presentation/components/color/form_field.dart";
import "package:forms/presentation/components/color/store.dart";
import "package:theme/app/app.dart";
import "package:theme/domain/converters/colors/color.dart";
import "package:theme/presentation/changer/changer.dart";
import "package:theme/presentation/components/colors/store.dart";
import "package:theme/presentation/panel/panel_view.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/sizes/edge_insets.dart";
import "package:utilities/sizes/spacers.dart";

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
      widthPercentage: 0.45,
      panelViewBuilder: (context) {
        return Observer(
          builder: (context) {
            final selectedColor = store.selectedColor;
            final colorFormFieldStore = ColorFormFieldStore(
              value: selectedColor,
              title: selectedColor.key,
              onValueChanged: (color) {
                AppLogger.print(
                  "on value changed: ${color.value}",
                  [ThemeLoggers.colors],
                );
                store.selectedColor = color;
                ThemeChanger.changeCurrentThemeStyle(
                  colorModel: store.setColorModel(),
                );
              },
            );
            return ColorFormField(
              showTitle: false,
              store: colorFormFieldStore,
            );
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
