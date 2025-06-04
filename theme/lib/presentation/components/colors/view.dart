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

typedef PLSColor = MapEntry<String, dynamic>;

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
                AppLogger.print("onValueChanged: ${color?.value}", [ThemeLoggers.colors]);
                if (color != null) {
                  store.selectedColor = color;
                  ThemeChanger.changeCurrentThemeStyle(colorModel: store.setColorModel());
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
  ColorModelView({super.key, required this.onColorSelected, this.onPaletteColorSelected, this.showPalette = false}) {
    if (showPalette && onPaletteColorSelected == null) {
      assert(false, "onPaletteColorSelected must be provided if showPalette is true");
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("showPalette: $showPalette");
    debugPrint("appThemPalette: ${AppTheme.currentColorModel!.palette}");
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
                    Sizes.s.spacer(axis: Axis.horizontal),
                    ...AppTheme.currentColorModel!.palette!.map((e) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ColorCircle(color: e, onTap: () => onPaletteColorSelected!(e)),
                      );
                    }),
                  ],
                ),
              ),
              Sizes.m.spacer(),
            ],
            Expanded(
              child: GridView(
                padding: AppEdgeInsets.all(context, Sizes.m),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 160, crossAxisSpacing: Sizes.zero.points(context), mainAxisSpacing: Sizes.zero.points(context)),
                children: AppTheme.currentColorModel!.toMap().entries.map((e) {
                  if (e.value is List) {
                    return const SizedBox();
                  }
                  final Color? contrastColor;
                  switch (e.key) {
                    case "primary":
                      contrastColor = AppTheme.currentColorModel!.onPrimary;
                      break;
                    case "onPrimary":
                      contrastColor = AppTheme.currentColorModel!.primary;
                      break;
                    case "primaryContainer":
                      contrastColor = AppTheme.currentColorModel!.onPrimaryContainer;
                      break;
                    case "onPrimaryContainer":
                      contrastColor = AppTheme.currentColorModel!.primaryContainer;
                      break;
                    case "secondary":
                      contrastColor = AppTheme.currentColorModel!.onSecondary;
                      break;
                    case "onSecondary":
                      contrastColor = AppTheme.currentColorModel!.secondary;
                      break;
                    case "secondaryContainer":
                      contrastColor = AppTheme.currentColorModel!.onSecondaryContainer;
                      break;
                    case "onSecondaryContainer":
                      contrastColor = AppTheme.currentColorModel!.secondaryContainer;
                      break;
                    case "tertiary":
                      contrastColor = AppTheme.currentColorModel!.onTertiary;
                      break;
                    case "onTertiary":
                      contrastColor = AppTheme.currentColorModel!.tertiary;
                      break;
                    case "tertiaryContainer":
                      contrastColor = AppTheme.currentColorModel!.onTertiaryContainer;
                      break;
                    case "onTertiaryContainer":
                      contrastColor = AppTheme.currentColorModel!.tertiaryContainer;
                      break;
                    case "error":
                      contrastColor = AppTheme.currentColorModel!.onError;
                      break;
                    case "onError":
                      contrastColor = AppTheme.currentColorModel!.error;
                      break;
                    case "errorContainer":
                      contrastColor = AppTheme.currentColorModel!.onErrorContainer;
                      break;
                    case "onErrorContainer":
                      contrastColor = AppTheme.currentColorModel!.errorContainer;
                      break;
                    case "confirmation":
                      contrastColor = AppTheme.currentColorModel!.onConfirmation;
                      break;
                    case "onConfirmation":
                      contrastColor = AppTheme.currentColorModel!.confirmation;
                      break;
                    case "confirmationContainer":
                      contrastColor = AppTheme.currentColorModel!.onConfirmationContainer;
                      break;
                    case "onConfirmationContainer":
                      contrastColor = AppTheme.currentColorModel!.confirmationContainer;
                      break;
                    case "information":
                      contrastColor = AppTheme.currentColorModel!.onInformation;
                      break;
                    case "onInformation":
                      contrastColor = AppTheme.currentColorModel!.information;
                      break;
                    case "informationContainer":
                      contrastColor = AppTheme.currentColorModel!.onInformationContainer;
                      break;
                    case "onInformationContainer":
                      contrastColor = AppTheme.currentColorModel!.informationContainer;
                      break;
                    case "warning":
                      contrastColor = AppTheme.currentColorModel!.onWarning;
                      break;
                    case "onWarning":
                      contrastColor = AppTheme.currentColorModel!.warning;
                      break;
                    case "warningContainer":
                      contrastColor = AppTheme.currentColorModel!.onWarningContainer;
                      break;
                    case "onWarningContainer":
                      contrastColor = AppTheme.currentColorModel!.warningContainer;
                      break;
                    case "background":
                      contrastColor = AppTheme.currentColorModel!.onBackground;
                      break;
                    case "onBackground":
                      contrastColor = AppTheme.currentColorModel!.background;
                      break;
                    case "surface":
                      contrastColor = AppTheme.currentColorModel!.onSurface;
                      break;
                    case "onSurface":
                      contrastColor = AppTheme.currentColorModel!.surface;
                      break;
                    case "surfaceVariant":
                      contrastColor = AppTheme.currentColorModel!.onSurfaceVariant;
                      break;
                    case "onSurfaceVariant":
                      contrastColor = AppTheme.currentColorModel!.surfaceVariant;
                      break;
                    case "inverseSurface":
                      contrastColor = AppTheme.currentColorModel!.onInverseSurface;
                      break;
                    case "onInverseSurface":
                      contrastColor = AppTheme.currentColorModel!.inverseSurface;
                      break;
                    case "inversePrimary":
                      contrastColor = AppTheme.currentColorModel!.onPrimary;
                      break;
                    case "shadow":
                      contrastColor = AppTheme.currentColorModel!.background;
                      break;
                    case "disabled":
                      contrastColor = AppTheme.currentColorModel!.background;
                      break;
                    case "surfaceTint":
                      contrastColor = AppTheme.currentColorModel!.onSurface;
                      break;
                    case "outlineVariant":
                      contrastColor = AppTheme.currentColorModel!.primaryContainer;
                      break;
                    case "scrim":
                      contrastColor = AppTheme.currentColorModel!.background;
                      break;
                    default:
                      contrastColor = null;
                  }

                  return ColorCircle(color: const ColorMapper().decode(e.value), onTap: () => onColorSelected(e), label: e.key, contrastColor: contrastColor);
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
