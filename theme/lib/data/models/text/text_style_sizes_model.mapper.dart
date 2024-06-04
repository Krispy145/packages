// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_style_sizes_model.dart';

class TextSizesMapper extends EnumMapper<TextSizes> {
  TextSizesMapper._();

  static TextSizesMapper? _instance;
  static TextSizesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextSizesMapper._());
    }
    return _instance!;
  }

  static TextSizes fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TextSizes decode(dynamic value) {
    switch (value) {
      case 'large':
        return TextSizes.large;
      case 'medium':
        return TextSizes.medium;
      case 'small':
        return TextSizes.small;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TextSizes self) {
    switch (self) {
      case TextSizes.large:
        return 'large';
      case TextSizes.medium:
        return 'medium';
      case TextSizes.small:
        return 'small';
    }
  }
}

extension TextSizesMapperExtension on TextSizes {
  String toValue() {
    TextSizesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TextSizes>(this) as String;
  }
}

class TextStyleSizesModelMapper extends ClassMapperBase<TextStyleSizesModel> {
  TextStyleSizesModelMapper._();

  static TextStyleSizesModelMapper? _instance;
  static TextStyleSizesModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextStyleSizesModelMapper._());
      TextStyleModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TextStyleSizesModel';

  static TextStyleModel? _$large(TextStyleSizesModel v) => v.large;
  static const Field<TextStyleSizesModel, TextStyleModel> _f$large =
      Field('large', _$large, opt: true);
  static TextStyleModel? _$medium(TextStyleSizesModel v) => v.medium;
  static const Field<TextStyleSizesModel, TextStyleModel> _f$medium =
      Field('medium', _$medium, opt: true);
  static TextStyleModel? _$small(TextStyleSizesModel v) => v.small;
  static const Field<TextStyleSizesModel, TextStyleModel> _f$small =
      Field('small', _$small, opt: true);

  @override
  final MappableFields<TextStyleSizesModel> fields = const {
    #large: _f$large,
    #medium: _f$medium,
    #small: _f$small,
  };

  static TextStyleSizesModel _instantiate(DecodingData data) {
    return TextStyleSizesModel(
        large: data.dec(_f$large),
        medium: data.dec(_f$medium),
        small: data.dec(_f$small));
  }

  @override
  final Function instantiate = _instantiate;

  static TextStyleSizesModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextStyleSizesModel>(map);
  }

  static TextStyleSizesModel fromJson(String json) {
    return ensureInitialized().decodeJson<TextStyleSizesModel>(json);
  }
}

mixin TextStyleSizesModelMappable {
  String toJson() {
    return TextStyleSizesModelMapper.ensureInitialized()
        .encodeJson<TextStyleSizesModel>(this as TextStyleSizesModel);
  }

  Map<String, dynamic> toMap() {
    return TextStyleSizesModelMapper.ensureInitialized()
        .encodeMap<TextStyleSizesModel>(this as TextStyleSizesModel);
  }

  TextStyleSizesModelCopyWith<TextStyleSizesModel, TextStyleSizesModel,
          TextStyleSizesModel>
      get copyWith => _TextStyleSizesModelCopyWithImpl(
          this as TextStyleSizesModel, $identity, $identity);
  @override
  String toString() {
    return TextStyleSizesModelMapper.ensureInitialized()
        .stringifyValue(this as TextStyleSizesModel);
  }

  @override
  bool operator ==(Object other) {
    return TextStyleSizesModelMapper.ensureInitialized()
        .equalsValue(this as TextStyleSizesModel, other);
  }

  @override
  int get hashCode {
    return TextStyleSizesModelMapper.ensureInitialized()
        .hashValue(this as TextStyleSizesModel);
  }
}

extension TextStyleSizesModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextStyleSizesModel, $Out> {
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, $Out>
      get $asTextStyleSizesModel =>
          $base.as((v, t, t2) => _TextStyleSizesModelCopyWithImpl(v, t, t2));
}

abstract class TextStyleSizesModelCopyWith<$R, $In extends TextStyleSizesModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  TextStyleModelCopyWith<$R, TextStyleModel, TextStyleModel>? get large;
  TextStyleModelCopyWith<$R, TextStyleModel, TextStyleModel>? get medium;
  TextStyleModelCopyWith<$R, TextStyleModel, TextStyleModel>? get small;
  $R call(
      {TextStyleModel? large, TextStyleModel? medium, TextStyleModel? small});
  TextStyleSizesModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextStyleSizesModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextStyleSizesModel, $Out>
    implements TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, $Out> {
  _TextStyleSizesModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextStyleSizesModel> $mapper =
      TextStyleSizesModelMapper.ensureInitialized();
  @override
  TextStyleModelCopyWith<$R, TextStyleModel, TextStyleModel>? get large =>
      $value.large?.copyWith.$chain((v) => call(large: v));
  @override
  TextStyleModelCopyWith<$R, TextStyleModel, TextStyleModel>? get medium =>
      $value.medium?.copyWith.$chain((v) => call(medium: v));
  @override
  TextStyleModelCopyWith<$R, TextStyleModel, TextStyleModel>? get small =>
      $value.small?.copyWith.$chain((v) => call(small: v));
  @override
  $R call(
          {Object? large = $none,
          Object? medium = $none,
          Object? small = $none}) =>
      $apply(FieldCopyWithData({
        if (large != $none) #large: large,
        if (medium != $none) #medium: medium,
        if (small != $none) #small: small
      }));
  @override
  TextStyleSizesModel $make(CopyWithData data) => TextStyleSizesModel(
      large: data.get(#large, or: $value.large),
      medium: data.get(#medium, or: $value.medium),
      small: data.get(#small, or: $value.small));

  @override
  TextStyleSizesModelCopyWith<$R2, TextStyleSizesModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TextStyleSizesModelCopyWithImpl($value, $cast, t);
}
