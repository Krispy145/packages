// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'color_model.dart';

class ColorModelMapper extends ClassMapperBase<ColorModel> {
  ColorModelMapper._();

  static ColorModelMapper? _instance;
  static ColorModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorModelMapper._());
      MapperContainer.globals.useAll([ColorMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'ColorModel';

  static Color? _$primary(ColorModel v) => v.primary;
  static const Field<ColorModel, Color> _f$primary =
      Field('primary', _$primary, opt: true);
  static Color? _$onPrimary(ColorModel v) => v.onPrimary;
  static const Field<ColorModel, Color> _f$onPrimary =
      Field('onPrimary', _$onPrimary, key: 'on_primary', opt: true);
  static Color? _$primaryContainer(ColorModel v) => v.primaryContainer;
  static const Field<ColorModel, Color> _f$primaryContainer = Field(
      'primaryContainer', _$primaryContainer,
      key: 'primary_container', opt: true);
  static Color? _$onPrimaryContainer(ColorModel v) => v.onPrimaryContainer;
  static const Field<ColorModel, Color> _f$onPrimaryContainer = Field(
      'onPrimaryContainer', _$onPrimaryContainer,
      key: 'on_primary_container', opt: true);
  static Color? _$secondary(ColorModel v) => v.secondary;
  static const Field<ColorModel, Color> _f$secondary =
      Field('secondary', _$secondary, opt: true);
  static Color? _$onSecondary(ColorModel v) => v.onSecondary;
  static const Field<ColorModel, Color> _f$onSecondary =
      Field('onSecondary', _$onSecondary, key: 'on_secondary', opt: true);
  static Color? _$secondaryContainer(ColorModel v) => v.secondaryContainer;
  static const Field<ColorModel, Color> _f$secondaryContainer = Field(
      'secondaryContainer', _$secondaryContainer,
      key: 'secondary_container', opt: true);
  static Color? _$onSecondaryContainer(ColorModel v) => v.onSecondaryContainer;
  static const Field<ColorModel, Color> _f$onSecondaryContainer = Field(
      'onSecondaryContainer', _$onSecondaryContainer,
      key: 'on_secondary_container', opt: true);
  static Color? _$tertiary(ColorModel v) => v.tertiary;
  static const Field<ColorModel, Color> _f$tertiary =
      Field('tertiary', _$tertiary, opt: true);
  static Color? _$onTertiary(ColorModel v) => v.onTertiary;
  static const Field<ColorModel, Color> _f$onTertiary =
      Field('onTertiary', _$onTertiary, key: 'on_tertiary', opt: true);
  static Color? _$tertiaryContainer(ColorModel v) => v.tertiaryContainer;
  static const Field<ColorModel, Color> _f$tertiaryContainer = Field(
      'tertiaryContainer', _$tertiaryContainer,
      key: 'tertiary_container', opt: true);
  static Color? _$onTertiaryContainer(ColorModel v) => v.onTertiaryContainer;
  static const Field<ColorModel, Color> _f$onTertiaryContainer = Field(
      'onTertiaryContainer', _$onTertiaryContainer,
      key: 'on_tertiary_container', opt: true);
  static Color _$disabled(ColorModel v) => v.disabled;
  static const Field<ColorModel, Color> _f$disabled =
      Field('disabled', _$disabled, opt: true, def: Colors.grey);
  static Color _$error(ColorModel v) => v.error;
  static const Field<ColorModel, Color> _f$error =
      Field('error', _$error, opt: true, def: Colors.red);
  static Color _$onError(ColorModel v) => v.onError;
  static const Field<ColorModel, Color> _f$onError = Field('onError', _$onError,
      key: 'on_error', opt: true, def: Colors.white);
  static Color? _$errorContainer(ColorModel v) => v.errorContainer;
  static const Field<ColorModel, Color> _f$errorContainer = Field(
      'errorContainer', _$errorContainer,
      key: 'error_container', opt: true);
  static Color? _$onErrorContainer(ColorModel v) => v.onErrorContainer;
  static const Field<ColorModel, Color> _f$onErrorContainer = Field(
      'onErrorContainer', _$onErrorContainer,
      key: 'on_error_container', opt: true);
  static Color _$confirmation(ColorModel v) => v.confirmation;
  static const Field<ColorModel, Color> _f$confirmation =
      Field('confirmation', _$confirmation, opt: true, def: Colors.green);
  static Color _$onConfirmation(ColorModel v) => v.onConfirmation;
  static const Field<ColorModel, Color> _f$onConfirmation = Field(
      'onConfirmation', _$onConfirmation,
      key: 'on_confirmation', opt: true, def: Colors.white);
  static Color _$confirmationContainer(ColorModel v) => v.confirmationContainer;
  static const Field<ColorModel, Color> _f$confirmationContainer = Field(
      'confirmationContainer', _$confirmationContainer,
      key: 'confirmation_container', opt: true, def: const Color(0xFFC4FFC7));
  static Color _$onConfirmationContainer(ColorModel v) =>
      v.onConfirmationContainer;
  static const Field<ColorModel, Color> _f$onConfirmationContainer = Field(
      'onConfirmationContainer', _$onConfirmationContainer,
      key: 'on_confirmation_container',
      opt: true,
      def: const Color(0xFF004203));
  static Color _$information(ColorModel v) => v.information;
  static const Field<ColorModel, Color> _f$information =
      Field('information', _$information, opt: true, def: Colors.blue);
  static Color _$onInformation(ColorModel v) => v.onInformation;
  static const Field<ColorModel, Color> _f$onInformation = Field(
      'onInformation', _$onInformation,
      key: 'on_information', opt: true, def: Colors.white);
  static Color _$informationContainer(ColorModel v) => v.informationContainer;
  static const Field<ColorModel, Color> _f$informationContainer = Field(
      'informationContainer', _$informationContainer,
      key: 'information_container', opt: true, def: const Color(0xFFBCE1FF));
  static Color _$onInformationContainer(ColorModel v) =>
      v.onInformationContainer;
  static const Field<ColorModel, Color> _f$onInformationContainer = Field(
      'onInformationContainer', _$onInformationContainer,
      key: 'on_information_container', opt: true, def: const Color(0xFF012542));
  static Color _$warning(ColorModel v) => v.warning;
  static const Field<ColorModel, Color> _f$warning =
      Field('warning', _$warning, opt: true, def: Colors.orange);
  static Color _$onWarning(ColorModel v) => v.onWarning;
  static const Field<ColorModel, Color> _f$onWarning = Field(
      'onWarning', _$onWarning,
      key: 'on_warning', opt: true, def: Colors.white);
  static Color _$warningContainer(ColorModel v) => v.warningContainer;
  static const Field<ColorModel, Color> _f$warningContainer = Field(
      'warningContainer', _$warningContainer,
      key: 'warning_container', opt: true, def: const Color(0xFFFFE0B3));
  static Color _$onWarningContainer(ColorModel v) => v.onWarningContainer;
  static const Field<ColorModel, Color> _f$onWarningContainer = Field(
      'onWarningContainer', _$onWarningContainer,
      key: 'on_warning_container', opt: true, def: const Color(0xFF4C2E01));
  static Color? _$outline(ColorModel v) => v.outline;
  static const Field<ColorModel, Color> _f$outline =
      Field('outline', _$outline, opt: true);
  static Color? _$background(ColorModel v) => v.background;
  static const Field<ColorModel, Color> _f$background =
      Field('background', _$background, opt: true);
  static Color? _$onBackground(ColorModel v) => v.onBackground;
  static const Field<ColorModel, Color> _f$onBackground =
      Field('onBackground', _$onBackground, key: 'on_background', opt: true);
  static Color? _$surface(ColorModel v) => v.surface;
  static const Field<ColorModel, Color> _f$surface =
      Field('surface', _$surface, opt: true);
  static Color? _$onSurface(ColorModel v) => v.onSurface;
  static const Field<ColorModel, Color> _f$onSurface =
      Field('onSurface', _$onSurface, key: 'on_surface', opt: true);
  static Color? _$surfaceVariant(ColorModel v) => v.surfaceVariant;
  static const Field<ColorModel, Color> _f$surfaceVariant = Field(
      'surfaceVariant', _$surfaceVariant,
      key: 'surface_variant', opt: true);
  static Color? _$onSurfaceVariant(ColorModel v) => v.onSurfaceVariant;
  static const Field<ColorModel, Color> _f$onSurfaceVariant = Field(
      'onSurfaceVariant', _$onSurfaceVariant,
      key: 'on_surface_variant', opt: true);
  static Color? _$inverseSurface(ColorModel v) => v.inverseSurface;
  static const Field<ColorModel, Color> _f$inverseSurface = Field(
      'inverseSurface', _$inverseSurface,
      key: 'inverse_surface', opt: true);
  static Color? _$onInverseSurface(ColorModel v) => v.onInverseSurface;
  static const Field<ColorModel, Color> _f$onInverseSurface = Field(
      'onInverseSurface', _$onInverseSurface,
      key: 'on_inverse_surface', opt: true);
  static Color? _$inversePrimary(ColorModel v) => v.inversePrimary;
  static const Field<ColorModel, Color> _f$inversePrimary = Field(
      'inversePrimary', _$inversePrimary,
      key: 'inverse_primary', opt: true);
  static Color? _$shadow(ColorModel v) => v.shadow;
  static const Field<ColorModel, Color> _f$shadow =
      Field('shadow', _$shadow, opt: true);
  static Color? _$surfaceTint(ColorModel v) => v.surfaceTint;
  static const Field<ColorModel, Color> _f$surfaceTint =
      Field('surfaceTint', _$surfaceTint, key: 'surface_tint', opt: true);
  static Color? _$outlineVariant(ColorModel v) => v.outlineVariant;
  static const Field<ColorModel, Color> _f$outlineVariant = Field(
      'outlineVariant', _$outlineVariant,
      key: 'outline_variant', opt: true);
  static Color? _$scrim(ColorModel v) => v.scrim;
  static const Field<ColorModel, Color> _f$scrim =
      Field('scrim', _$scrim, opt: true);

  @override
  final MappableFields<ColorModel> fields = const {
    #primary: _f$primary,
    #onPrimary: _f$onPrimary,
    #primaryContainer: _f$primaryContainer,
    #onPrimaryContainer: _f$onPrimaryContainer,
    #secondary: _f$secondary,
    #onSecondary: _f$onSecondary,
    #secondaryContainer: _f$secondaryContainer,
    #onSecondaryContainer: _f$onSecondaryContainer,
    #tertiary: _f$tertiary,
    #onTertiary: _f$onTertiary,
    #tertiaryContainer: _f$tertiaryContainer,
    #onTertiaryContainer: _f$onTertiaryContainer,
    #disabled: _f$disabled,
    #error: _f$error,
    #onError: _f$onError,
    #errorContainer: _f$errorContainer,
    #onErrorContainer: _f$onErrorContainer,
    #confirmation: _f$confirmation,
    #onConfirmation: _f$onConfirmation,
    #confirmationContainer: _f$confirmationContainer,
    #onConfirmationContainer: _f$onConfirmationContainer,
    #information: _f$information,
    #onInformation: _f$onInformation,
    #informationContainer: _f$informationContainer,
    #onInformationContainer: _f$onInformationContainer,
    #warning: _f$warning,
    #onWarning: _f$onWarning,
    #warningContainer: _f$warningContainer,
    #onWarningContainer: _f$onWarningContainer,
    #outline: _f$outline,
    #background: _f$background,
    #onBackground: _f$onBackground,
    #surface: _f$surface,
    #onSurface: _f$onSurface,
    #surfaceVariant: _f$surfaceVariant,
    #onSurfaceVariant: _f$onSurfaceVariant,
    #inverseSurface: _f$inverseSurface,
    #onInverseSurface: _f$onInverseSurface,
    #inversePrimary: _f$inversePrimary,
    #shadow: _f$shadow,
    #surfaceTint: _f$surfaceTint,
    #outlineVariant: _f$outlineVariant,
    #scrim: _f$scrim,
  };

  static ColorModel _instantiate(DecodingData data) {
    return ColorModel(
        primary: data.dec(_f$primary),
        onPrimary: data.dec(_f$onPrimary),
        primaryContainer: data.dec(_f$primaryContainer),
        onPrimaryContainer: data.dec(_f$onPrimaryContainer),
        secondary: data.dec(_f$secondary),
        onSecondary: data.dec(_f$onSecondary),
        secondaryContainer: data.dec(_f$secondaryContainer),
        onSecondaryContainer: data.dec(_f$onSecondaryContainer),
        tertiary: data.dec(_f$tertiary),
        onTertiary: data.dec(_f$onTertiary),
        tertiaryContainer: data.dec(_f$tertiaryContainer),
        onTertiaryContainer: data.dec(_f$onTertiaryContainer),
        disabled: data.dec(_f$disabled),
        error: data.dec(_f$error),
        onError: data.dec(_f$onError),
        errorContainer: data.dec(_f$errorContainer),
        onErrorContainer: data.dec(_f$onErrorContainer),
        confirmation: data.dec(_f$confirmation),
        onConfirmation: data.dec(_f$onConfirmation),
        confirmationContainer: data.dec(_f$confirmationContainer),
        onConfirmationContainer: data.dec(_f$onConfirmationContainer),
        information: data.dec(_f$information),
        onInformation: data.dec(_f$onInformation),
        informationContainer: data.dec(_f$informationContainer),
        onInformationContainer: data.dec(_f$onInformationContainer),
        warning: data.dec(_f$warning),
        onWarning: data.dec(_f$onWarning),
        warningContainer: data.dec(_f$warningContainer),
        onWarningContainer: data.dec(_f$onWarningContainer),
        outline: data.dec(_f$outline),
        background: data.dec(_f$background),
        onBackground: data.dec(_f$onBackground),
        surface: data.dec(_f$surface),
        onSurface: data.dec(_f$onSurface),
        surfaceVariant: data.dec(_f$surfaceVariant),
        onSurfaceVariant: data.dec(_f$onSurfaceVariant),
        inverseSurface: data.dec(_f$inverseSurface),
        onInverseSurface: data.dec(_f$onInverseSurface),
        inversePrimary: data.dec(_f$inversePrimary),
        shadow: data.dec(_f$shadow),
        surfaceTint: data.dec(_f$surfaceTint),
        outlineVariant: data.dec(_f$outlineVariant),
        scrim: data.dec(_f$scrim));
  }

  @override
  final Function instantiate = _instantiate;

  static ColorModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColorModel>(map);
  }

  static ColorModel fromJson(String json) {
    return ensureInitialized().decodeJson<ColorModel>(json);
  }
}

mixin ColorModelMappable {
  String toJson() {
    return ColorModelMapper.ensureInitialized()
        .encodeJson<ColorModel>(this as ColorModel);
  }

  Map<String, dynamic> toMap() {
    return ColorModelMapper.ensureInitialized()
        .encodeMap<ColorModel>(this as ColorModel);
  }

  ColorModelCopyWith<ColorModel, ColorModel, ColorModel> get copyWith =>
      _ColorModelCopyWithImpl(this as ColorModel, $identity, $identity);
  @override
  String toString() {
    return ColorModelMapper.ensureInitialized()
        .stringifyValue(this as ColorModel);
  }

  @override
  bool operator ==(Object other) {
    return ColorModelMapper.ensureInitialized()
        .equalsValue(this as ColorModel, other);
  }

  @override
  int get hashCode {
    return ColorModelMapper.ensureInitialized().hashValue(this as ColorModel);
  }
}

extension ColorModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColorModel, $Out> {
  ColorModelCopyWith<$R, ColorModel, $Out> get $asColorModel =>
      $base.as((v, t, t2) => _ColorModelCopyWithImpl(v, t, t2));
}

abstract class ColorModelCopyWith<$R, $In extends ColorModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {Color? primary,
      Color? onPrimary,
      Color? primaryContainer,
      Color? onPrimaryContainer,
      Color? secondary,
      Color? onSecondary,
      Color? secondaryContainer,
      Color? onSecondaryContainer,
      Color? tertiary,
      Color? onTertiary,
      Color? tertiaryContainer,
      Color? onTertiaryContainer,
      Color? disabled,
      Color? error,
      Color? onError,
      Color? errorContainer,
      Color? onErrorContainer,
      Color? confirmation,
      Color? onConfirmation,
      Color? confirmationContainer,
      Color? onConfirmationContainer,
      Color? information,
      Color? onInformation,
      Color? informationContainer,
      Color? onInformationContainer,
      Color? warning,
      Color? onWarning,
      Color? warningContainer,
      Color? onWarningContainer,
      Color? outline,
      Color? background,
      Color? onBackground,
      Color? surface,
      Color? onSurface,
      Color? surfaceVariant,
      Color? onSurfaceVariant,
      Color? inverseSurface,
      Color? onInverseSurface,
      Color? inversePrimary,
      Color? shadow,
      Color? surfaceTint,
      Color? outlineVariant,
      Color? scrim});
  ColorModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ColorModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColorModel, $Out>
    implements ColorModelCopyWith<$R, ColorModel, $Out> {
  _ColorModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColorModel> $mapper =
      ColorModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? primary = $none,
          Object? onPrimary = $none,
          Object? primaryContainer = $none,
          Object? onPrimaryContainer = $none,
          Object? secondary = $none,
          Object? onSecondary = $none,
          Object? secondaryContainer = $none,
          Object? onSecondaryContainer = $none,
          Object? tertiary = $none,
          Object? onTertiary = $none,
          Object? tertiaryContainer = $none,
          Object? onTertiaryContainer = $none,
          Color? disabled,
          Color? error,
          Color? onError,
          Object? errorContainer = $none,
          Object? onErrorContainer = $none,
          Color? confirmation,
          Color? onConfirmation,
          Color? confirmationContainer,
          Color? onConfirmationContainer,
          Color? information,
          Color? onInformation,
          Color? informationContainer,
          Color? onInformationContainer,
          Color? warning,
          Color? onWarning,
          Color? warningContainer,
          Color? onWarningContainer,
          Object? outline = $none,
          Object? background = $none,
          Object? onBackground = $none,
          Object? surface = $none,
          Object? onSurface = $none,
          Object? surfaceVariant = $none,
          Object? onSurfaceVariant = $none,
          Object? inverseSurface = $none,
          Object? onInverseSurface = $none,
          Object? inversePrimary = $none,
          Object? shadow = $none,
          Object? surfaceTint = $none,
          Object? outlineVariant = $none,
          Object? scrim = $none}) =>
      $apply(FieldCopyWithData({
        if (primary != $none) #primary: primary,
        if (onPrimary != $none) #onPrimary: onPrimary,
        if (primaryContainer != $none) #primaryContainer: primaryContainer,
        if (onPrimaryContainer != $none)
          #onPrimaryContainer: onPrimaryContainer,
        if (secondary != $none) #secondary: secondary,
        if (onSecondary != $none) #onSecondary: onSecondary,
        if (secondaryContainer != $none)
          #secondaryContainer: secondaryContainer,
        if (onSecondaryContainer != $none)
          #onSecondaryContainer: onSecondaryContainer,
        if (tertiary != $none) #tertiary: tertiary,
        if (onTertiary != $none) #onTertiary: onTertiary,
        if (tertiaryContainer != $none) #tertiaryContainer: tertiaryContainer,
        if (onTertiaryContainer != $none)
          #onTertiaryContainer: onTertiaryContainer,
        if (disabled != null) #disabled: disabled,
        if (error != null) #error: error,
        if (onError != null) #onError: onError,
        if (errorContainer != $none) #errorContainer: errorContainer,
        if (onErrorContainer != $none) #onErrorContainer: onErrorContainer,
        if (confirmation != null) #confirmation: confirmation,
        if (onConfirmation != null) #onConfirmation: onConfirmation,
        if (confirmationContainer != null)
          #confirmationContainer: confirmationContainer,
        if (onConfirmationContainer != null)
          #onConfirmationContainer: onConfirmationContainer,
        if (information != null) #information: information,
        if (onInformation != null) #onInformation: onInformation,
        if (informationContainer != null)
          #informationContainer: informationContainer,
        if (onInformationContainer != null)
          #onInformationContainer: onInformationContainer,
        if (warning != null) #warning: warning,
        if (onWarning != null) #onWarning: onWarning,
        if (warningContainer != null) #warningContainer: warningContainer,
        if (onWarningContainer != null) #onWarningContainer: onWarningContainer,
        if (outline != $none) #outline: outline,
        if (background != $none) #background: background,
        if (onBackground != $none) #onBackground: onBackground,
        if (surface != $none) #surface: surface,
        if (onSurface != $none) #onSurface: onSurface,
        if (surfaceVariant != $none) #surfaceVariant: surfaceVariant,
        if (onSurfaceVariant != $none) #onSurfaceVariant: onSurfaceVariant,
        if (inverseSurface != $none) #inverseSurface: inverseSurface,
        if (onInverseSurface != $none) #onInverseSurface: onInverseSurface,
        if (inversePrimary != $none) #inversePrimary: inversePrimary,
        if (shadow != $none) #shadow: shadow,
        if (surfaceTint != $none) #surfaceTint: surfaceTint,
        if (outlineVariant != $none) #outlineVariant: outlineVariant,
        if (scrim != $none) #scrim: scrim
      }));
  @override
  ColorModel $make(CopyWithData data) => ColorModel(
      primary: data.get(#primary, or: $value.primary),
      onPrimary: data.get(#onPrimary, or: $value.onPrimary),
      primaryContainer:
          data.get(#primaryContainer, or: $value.primaryContainer),
      onPrimaryContainer:
          data.get(#onPrimaryContainer, or: $value.onPrimaryContainer),
      secondary: data.get(#secondary, or: $value.secondary),
      onSecondary: data.get(#onSecondary, or: $value.onSecondary),
      secondaryContainer:
          data.get(#secondaryContainer, or: $value.secondaryContainer),
      onSecondaryContainer:
          data.get(#onSecondaryContainer, or: $value.onSecondaryContainer),
      tertiary: data.get(#tertiary, or: $value.tertiary),
      onTertiary: data.get(#onTertiary, or: $value.onTertiary),
      tertiaryContainer:
          data.get(#tertiaryContainer, or: $value.tertiaryContainer),
      onTertiaryContainer:
          data.get(#onTertiaryContainer, or: $value.onTertiaryContainer),
      disabled: data.get(#disabled, or: $value.disabled),
      error: data.get(#error, or: $value.error),
      onError: data.get(#onError, or: $value.onError),
      errorContainer: data.get(#errorContainer, or: $value.errorContainer),
      onErrorContainer:
          data.get(#onErrorContainer, or: $value.onErrorContainer),
      confirmation: data.get(#confirmation, or: $value.confirmation),
      onConfirmation: data.get(#onConfirmation, or: $value.onConfirmation),
      confirmationContainer:
          data.get(#confirmationContainer, or: $value.confirmationContainer),
      onConfirmationContainer: data.get(#onConfirmationContainer,
          or: $value.onConfirmationContainer),
      information: data.get(#information, or: $value.information),
      onInformation: data.get(#onInformation, or: $value.onInformation),
      informationContainer:
          data.get(#informationContainer, or: $value.informationContainer),
      onInformationContainer:
          data.get(#onInformationContainer, or: $value.onInformationContainer),
      warning: data.get(#warning, or: $value.warning),
      onWarning: data.get(#onWarning, or: $value.onWarning),
      warningContainer:
          data.get(#warningContainer, or: $value.warningContainer),
      onWarningContainer:
          data.get(#onWarningContainer, or: $value.onWarningContainer),
      outline: data.get(#outline, or: $value.outline),
      background: data.get(#background, or: $value.background),
      onBackground: data.get(#onBackground, or: $value.onBackground),
      surface: data.get(#surface, or: $value.surface),
      onSurface: data.get(#onSurface, or: $value.onSurface),
      surfaceVariant: data.get(#surfaceVariant, or: $value.surfaceVariant),
      onSurfaceVariant:
          data.get(#onSurfaceVariant, or: $value.onSurfaceVariant),
      inverseSurface: data.get(#inverseSurface, or: $value.inverseSurface),
      onInverseSurface:
          data.get(#onInverseSurface, or: $value.onInverseSurface),
      inversePrimary: data.get(#inversePrimary, or: $value.inversePrimary),
      shadow: data.get(#shadow, or: $value.shadow),
      surfaceTint: data.get(#surfaceTint, or: $value.surfaceTint),
      outlineVariant: data.get(#outlineVariant, or: $value.outlineVariant),
      scrim: data.get(#scrim, or: $value.scrim));

  @override
  ColorModelCopyWith<$R2, ColorModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ColorModelCopyWithImpl($value, $cast, t);
}
