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
      widthPercentage: 0.35,
      panelViewBuilder: (context, panelStore) {
        return Builder(
          builder: (context) {
            final selectedColor = store.selectedColor;
            final colorFormFieldStore = ColorFormFieldStore(
              initialValue: selectedColor,
              title: selectedColor.key,
              onValueChanged: (color) {
                AppLogger.print(
                  "onValueChanged: ${color?.value}",
                  [ThemeLoggers.colors],
                );
                if (color != null) {
                  store.selectedColor = color;
                  ThemeChanger.changeCurrentThemeStyle(
                    colorModel: store.setColorModel(),
                  );
                }
              },
            );
            return Observer(
              builder: (context) {
                return ColorFormField(
                  showTitle: false,
                  store: colorFormFieldStore,
                  onDone: (color) {
                    AppLogger.print("onDone: $color", [ThemeLoggers.colors]);
                    panelStore.toggle();
                  },
                );
              },
            );
          },
        );
      },
      viewBuilder: (context, panelStore) => ColorModelView(
        onColorSelected: (e) {
          store.setSelectedColor(e);
          if (!panelStore.isOpen) {
            panelStore.toggle();
          }
        },
      ),
    );
  }
}

class ColorModelView extends StatelessWidget {
  final void Function(MapEntry<String, dynamic> selected) onColorSelected;
  final void Function(Color selectedColor)? onPaletteColorSelected;
  final bool showPalette;
  ColorModelView({
    super.key,
    required this.onColorSelected,
    this.onPaletteColorSelected,
    this.showPalette = false,
  }) {
    if (showPalette && onPaletteColorSelected == null) {
      assert(false, "onPaletteColorSelected must be provided if showPalette is true");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("showPalette: $showPalette");
    print("appThemPalette: ${AppTheme.currentColorModel!.palette}");
    return Observer(
      builder: (context) {
        return Column(
          children: [
            Sizes.m.spacer(),
            if (AppTheme.currentColorModel!.palette != null && showPalette) ...[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Text("Palette:"),
                    Sizes.s.spacer(vertical: false),
                    ...AppTheme.currentColorModel!.palette!.map(
                      (e) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ColorCircle(
                            color: e,
                            onTap: () => onPaletteColorSelected!(e),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Sizes.m.spacer(),
            ],
            Expanded(
              child: GridView(
                padding: AppEdgeInsets.all(context, Sizes.m),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 160,
                  crossAxisSpacing: Sizes.m.points(context),
                  mainAxisSpacing: Sizes.m.points(context),
                ),
                children: AppTheme.currentColorModel!.toMap().entries.map(
                  (e) {
                    if (e.value is List) {
                      return const SizedBox();
                    }
                    return ColorCircle(
                      color: const ColorMapper().decode(e.value),
                      onTap: () => onColorSelected(e),
                      label: e.key,
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
