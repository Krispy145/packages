import "dart:math" as math;

import "package:file_picker/file_picker.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:forms/presentation/components/color/color_circle.dart";
import "package:image_picker/image_picker.dart";
import "package:palette_generator/palette_generator.dart";
import "package:theme/data/models/colors/color_model.dart";
import "package:theme/presentation/changer/changer.dart";
import "package:universal_io/io.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/sizes/spacers.dart";

const Color _kBackgroundColor = Color(0xffa0a0a0);
const Color _kSelectionRectangleBackground = Color(0x15000000);
const Color _kSelectionRectangleBorder = Color(0x80000000);
const Color _kPlaceholderColor = Color(0x80404040);

class UploadImageWidget extends StatefulWidget {
  const UploadImageWidget({super.key});

  @override
  _UploadImageWidgetState createState() => _UploadImageWidgetState();
}

class _UploadImageWidgetState extends State<UploadImageWidget> {
  File? _imageFile;
  Uint8List? _webImageFile;
  Color? _primaryColor;

  Future<void> _pickImage() async {
    if (kIsWeb) {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      if (result != null) {
        setState(() {
          _webImageFile = result.files.first.bytes;
        });
      }
    } else {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 64),
        child: Column(
          children: [
            if (_primaryColor != null) ColorCircle(color: _primaryColor!),
            Sizes.m.spacer(),
            ElevatedButton(
              onPressed: _pickImage,
              child: const Text("Upload Image"),
            ),
            const SizedBox(height: 20),
            if (_imageFile != null) ...[
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: context.screenHeight * 0.5,
                  minWidth: context.screenWidth / 2.5,
                ),
                child: Image.file(_imageFile!),
              ),
              Text("Image selected: ${_imageFile!.path}"),
            ] else if (_webImageFile != null) ...[
              ImageColors(image: Image.memory(_webImageFile!).image),
              const Text("Image selected from web"),
            ] else ...[
              const Text("No image selected."),
            ],
            Sizes.m.spacer(),
            if (_webImageFile != null || _imageFile != null)
              ElevatedButton(
                onPressed: _setColorModelFromImage,
                child: const Text("Set Color Model"),
              ),
            Sizes.m.spacer(),
          ],
        ),
      ),
    );
  }

  Future<void> _setColorModelFromImage() async {
    final _provider = kIsWeb ? Image.memory(_webImageFile!) : Image.file(_imageFile!);
    final colorFromImage = await ColorModel.fromImage(provider: _provider.image);
    setState(() {
      _primaryColor = colorFromImage.primary;
    });

    ThemeChanger.changeCurrentThemeStyle(
      colorModel: colorFromImage,
    );
  }
}

/// The home page for this example app.
@immutable
class ImageColors extends StatefulWidget {
  /// Creates the home page.
  const ImageColors({
    super.key,
    this.title,
    required this.image,
    this.imageSize,
  });

  /// The title that is shown at the top of the page.
  final String? title;

  /// This is the image provider that is used to load the colors from.
  final ImageProvider image;

  /// The dimensions of the image.
  final Size? imageSize;

  @override
  State<ImageColors> createState() {
    return _ImageColorsState();
  }
}

class _ImageColorsState extends State<ImageColors> {
  Rect? region;
  Rect? dragRegion;
  Offset? startDrag;
  Offset? currentDrag;
  PaletteGenerator? paletteGenerator;

  final GlobalKey imageKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    if (widget.imageSize != null) {
      region = Offset.zero & widget.imageSize!;
    }
    _updatePaletteGenerator(region);
  }

  Future<void> _updatePaletteGenerator(Rect? newRegion) async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      widget.image,
      size: widget.imageSize,
      region: newRegion,
      maximumColorCount: 50,
    );
    final paletteColors = paletteGenerator?.paletteColors.map((e) => Pair(e.color, e.population)).toList();

    final distinctColors = <Pair<Color, int>>[];
    for (final color in paletteColors ?? <Pair<Color, int>>[]) {
      if (distinctColors.every((c) => isSignificantlyDifferent(c.first, color.first))) {
        distinctColors.add(color);
      }
    }

    for (final color in distinctColors) {
      debugPrint("ColorImage Color: #${color.first.toString().substring(10)} - Population: ${color.second}");
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth - 120,
      height: context.screenHeight - 120,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              // GestureDetector is used to handle the selection rectangle.
              child: Image(
                key: imageKey,
                image: widget.image,
                width: widget.imageSize?.width,
                height: widget.imageSize?.height,
              ),
            ),
            // Use a FutureBuilder so that the palettes will be displayed when
            // the palette generator is done generating its data.
            PaletteSwatches(generator: paletteGenerator),
          ],
        ),
      ),
    );
  }
}

/// A widget that draws the swatches for the [PaletteGenerator] it is given,
/// and shows the selected target colors.
class PaletteSwatches extends StatelessWidget {
  /// Create a Palette swatch.
  ///
  /// The [generator] is optional. If it is null, then the display will
  /// just be an empty container.
  const PaletteSwatches({super.key, this.generator});

  /// The [PaletteGenerator] that contains all of the swatches that we're going
  /// to display.
  final PaletteGenerator? generator;

  @override
  Widget build(BuildContext context) {
    final swatches = <Widget>[];
    final paletteGen = generator;
    if (paletteGen == null || paletteGen.colors.isEmpty) {
      return Container();
    }

    for (final color in paletteGen.colors) {
      swatches.add(PaletteSwatch(color: color));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Wrap(
          children: swatches,
        ),
        Container(height: 30),
        PaletteSwatch(
          label: "Dominant",
          color: paletteGen.dominantColor?.color,
        ),
        PaletteSwatch(
          label: "Light Vibrant",
          color: paletteGen.lightVibrantColor?.color,
        ),
        PaletteSwatch(label: "Vibrant", color: paletteGen.vibrantColor?.color),
        PaletteSwatch(
          label: "Dark Vibrant",
          color: paletteGen.darkVibrantColor?.color,
        ),
        PaletteSwatch(
          label: "Light Muted",
          color: paletteGen.lightMutedColor?.color,
        ),
        PaletteSwatch(label: "Muted", color: paletteGen.mutedColor?.color),
        PaletteSwatch(
          label: "Dark Muted",
          color: paletteGen.darkMutedColor?.color,
        ),
      ],
    );
  }
}

/// A small square of color with an optional label.
@immutable
class PaletteSwatch extends StatelessWidget {
  /// Creates a PaletteSwatch.
  ///
  /// If the [paletteColor] has property `isTargetColorFound` as `false`,
  /// then the swatch will show a placeholder instead, to indicate
  /// that there is no color.
  const PaletteSwatch({
    super.key,
    this.color,
    this.label,
  });

  /// The color of the swatch.
  final Color? color;

  /// The optional label to display next to the swatch.
  final String? label;

  @override
  Widget build(BuildContext context) {
    // Compute the "distance" of the color swatch and the background color
    // so that we can put a border around those color swatches that are too
    // close to the background's saturation and lightness. We ignore hue for
    // the comparison.
    final hslColor = HSLColor.fromColor(color ?? Colors.transparent);
    final backgroundAsHsl = HSLColor.fromColor(_kBackgroundColor);
    final colorDistance = math.sqrt(
      math.pow(hslColor.saturation - backgroundAsHsl.saturation, 2.0) + math.pow(hslColor.lightness - backgroundAsHsl.lightness, 2.0),
    );

    Widget swatch = Padding(
      padding: const EdgeInsets.all(2),
      child: color == null
          ? const SizedBox(
              width: 34,
              height: 20,
              child: Center(
                child: Text("Null"),
              ),
            )
          : Container(
              decoration: BoxDecoration(
                color: color,
                border: Border.all(
                  color: _kPlaceholderColor,
                  style: colorDistance < 0.2 ? BorderStyle.solid : BorderStyle.none,
                ),
              ),
              width: 34,
              height: 20,
            ),
    );

    if (label != null) {
      swatch = ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 130, minWidth: 130),
        child: Row(
          children: <Widget>[
            swatch,
            Container(width: 5),
            Text(label!),
          ],
        ),
      );
    }
    return swatch;
  }
}
