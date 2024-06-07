// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_types_model.dart';

class TextTypeMapper extends EnumMapper<TextType> {
  TextTypeMapper._();

  static TextTypeMapper? _instance;
  static TextTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextTypeMapper._());
    }
    return _instance!;
  }

  static TextType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TextType decode(dynamic value) {
    switch (value) {
      case 'display':
        return TextType.display;
      case 'headline':
        return TextType.headline;
      case 'title':
        return TextType.title;
      case 'body':
        return TextType.body;
      case 'label':
        return TextType.label;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TextType self) {
    switch (self) {
      case TextType.display:
        return 'display';
      case TextType.headline:
        return 'headline';
      case TextType.title:
        return 'title';
      case TextType.body:
        return 'body';
      case TextType.label:
        return 'label';
    }
  }
}

extension TextTypeMapperExtension on TextType {
  String toValue() {
    TextTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TextType>(this) as String;
  }
}

class TextTypesModelMapper extends ClassMapperBase<TextTypesModel> {
  TextTypesModelMapper._();

  static TextTypesModelMapper? _instance;
  static TextTypesModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextTypesModelMapper._());
      TextStyleSizesModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TextTypesModel';

  static TextStyleSizesModel? _$display(TextTypesModel v) => v.display;
  static const Field<TextTypesModel, TextStyleSizesModel> _f$display =
      Field('display', _$display, opt: true);
  static TextStyleSizesModel? _$headline(TextTypesModel v) => v.headline;
  static const Field<TextTypesModel, TextStyleSizesModel> _f$headline =
      Field('headline', _$headline, opt: true);
  static TextStyleSizesModel? _$title(TextTypesModel v) => v.title;
  static const Field<TextTypesModel, TextStyleSizesModel> _f$title =
      Field('title', _$title, opt: true);
  static TextStyleSizesModel? _$body(TextTypesModel v) => v.body;
  static const Field<TextTypesModel, TextStyleSizesModel> _f$body =
      Field('body', _$body, opt: true);
  static TextStyleSizesModel? _$label(TextTypesModel v) => v.label;
  static const Field<TextTypesModel, TextStyleSizesModel> _f$label =
      Field('label', _$label, opt: true);

  @override
  final MappableFields<TextTypesModel> fields = const {
    #display: _f$display,
    #headline: _f$headline,
    #title: _f$title,
    #body: _f$body,
    #label: _f$label,
  };

  static TextTypesModel _instantiate(DecodingData data) {
    return TextTypesModel(
        display: data.dec(_f$display),
        headline: data.dec(_f$headline),
        title: data.dec(_f$title),
        body: data.dec(_f$body),
        label: data.dec(_f$label));
  }

  @override
  final Function instantiate = _instantiate;

  static TextTypesModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextTypesModel>(map);
  }

  static TextTypesModel fromJson(String json) {
    return ensureInitialized().decodeJson<TextTypesModel>(json);
  }
}

mixin TextTypesModelMappable {
  String toJson() {
    return TextTypesModelMapper.ensureInitialized()
        .encodeJson<TextTypesModel>(this as TextTypesModel);
  }

  Map<String, dynamic> toMap() {
    return TextTypesModelMapper.ensureInitialized()
        .encodeMap<TextTypesModel>(this as TextTypesModel);
  }

  TextTypesModelCopyWith<TextTypesModel, TextTypesModel, TextTypesModel>
      get copyWith => _TextTypesModelCopyWithImpl(
          this as TextTypesModel, $identity, $identity);
  @override
  String toString() {
    return TextTypesModelMapper.ensureInitialized()
        .stringifyValue(this as TextTypesModel);
  }

  @override
  bool operator ==(Object other) {
    return TextTypesModelMapper.ensureInitialized()
        .equalsValue(this as TextTypesModel, other);
  }

  @override
  int get hashCode {
    return TextTypesModelMapper.ensureInitialized()
        .hashValue(this as TextTypesModel);
  }
}

extension TextTypesModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextTypesModel, $Out> {
  TextTypesModelCopyWith<$R, TextTypesModel, $Out> get $asTextTypesModel =>
      $base.as((v, t, t2) => _TextTypesModelCopyWithImpl(v, t, t2));
}

abstract class TextTypesModelCopyWith<$R, $In extends TextTypesModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get display;
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get headline;
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get title;
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get body;
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get label;
  $R call(
      {TextStyleSizesModel? display,
      TextStyleSizesModel? headline,
      TextStyleSizesModel? title,
      TextStyleSizesModel? body,
      TextStyleSizesModel? label});
  TextTypesModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextTypesModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextTypesModel, $Out>
    implements TextTypesModelCopyWith<$R, TextTypesModel, $Out> {
  _TextTypesModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextTypesModel> $mapper =
      TextTypesModelMapper.ensureInitialized();
  @override
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get display => $value.display?.copyWith.$chain((v) => call(display: v));
  @override
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get headline =>
          $value.headline?.copyWith.$chain((v) => call(headline: v));
  @override
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get title => $value.title?.copyWith.$chain((v) => call(title: v));
  @override
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get body => $value.body?.copyWith.$chain((v) => call(body: v));
  @override
  TextStyleSizesModelCopyWith<$R, TextStyleSizesModel, TextStyleSizesModel>?
      get label => $value.label?.copyWith.$chain((v) => call(label: v));
  @override
  $R call(
          {Object? display = $none,
          Object? headline = $none,
          Object? title = $none,
          Object? body = $none,
          Object? label = $none}) =>
      $apply(FieldCopyWithData({
        if (display != $none) #display: display,
        if (headline != $none) #headline: headline,
        if (title != $none) #title: title,
        if (body != $none) #body: body,
        if (label != $none) #label: label
      }));
  @override
  TextTypesModel $make(CopyWithData data) => TextTypesModel(
      display: data.get(#display, or: $value.display),
      headline: data.get(#headline, or: $value.headline),
      title: data.get(#title, or: $value.title),
      body: data.get(#body, or: $value.body),
      label: data.get(#label, or: $value.label));

  @override
  TextTypesModelCopyWith<$R2, TextTypesModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TextTypesModelCopyWithImpl($value, $cast, t);
}
