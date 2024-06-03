// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dropdown_model.dart';

class DropdownModelMapper extends ClassMapperBase<DropdownModel> {
  DropdownModelMapper._();

  static DropdownModelMapper? _instance;
  static DropdownModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DropdownModelMapper._());
      InputDecorationModelMapper.ensureInitialized();
      MenuStyleModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DropdownModel';

  static String? _$textStyle_textStyleString(DropdownModel v) =>
      v.textStyle_textStyleString;
  static const Field<DropdownModel, String> _f$textStyle_textStyleString =
      Field('textStyle_textStyleString', _$textStyle_textStyleString,
          key: 'text_style_text_style_string', opt: true);
  static InputDecorationModel? _$inputDecoration_inputDecoration(
          DropdownModel v) =>
      v.inputDecoration_inputDecoration;
  static const Field<DropdownModel, InputDecorationModel>
      _f$inputDecoration_inputDecoration = Field(
          'inputDecoration_inputDecoration', _$inputDecoration_inputDecoration,
          key: 'input_decoration_input_decoration', opt: true);
  static MenuStyleModel? _$menuStyle_menu(DropdownModel v) => v.menuStyle_menu;
  static const Field<DropdownModel, MenuStyleModel> _f$menuStyle_menu = Field(
      'menuStyle_menu', _$menuStyle_menu,
      key: 'menu_style_menu', opt: true);

  @override
  final MappableFields<DropdownModel> fields = const {
    #textStyle_textStyleString: _f$textStyle_textStyleString,
    #inputDecoration_inputDecoration: _f$inputDecoration_inputDecoration,
    #menuStyle_menu: _f$menuStyle_menu,
  };

  static DropdownModel _instantiate(DecodingData data) {
    return DropdownModel(
        textStyle_textStyleString: data.dec(_f$textStyle_textStyleString),
        inputDecoration_inputDecoration:
            data.dec(_f$inputDecoration_inputDecoration),
        menuStyle_menu: data.dec(_f$menuStyle_menu));
  }

  @override
  final Function instantiate = _instantiate;

  static DropdownModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DropdownModel>(map);
  }

  static DropdownModel fromJson(String json) {
    return ensureInitialized().decodeJson<DropdownModel>(json);
  }
}

mixin DropdownModelMappable {
  String toJson() {
    return DropdownModelMapper.ensureInitialized()
        .encodeJson<DropdownModel>(this as DropdownModel);
  }

  Map<String, dynamic> toMap() {
    return DropdownModelMapper.ensureInitialized()
        .encodeMap<DropdownModel>(this as DropdownModel);
  }

  DropdownModelCopyWith<DropdownModel, DropdownModel, DropdownModel>
      get copyWith => _DropdownModelCopyWithImpl(
          this as DropdownModel, $identity, $identity);
  @override
  String toString() {
    return DropdownModelMapper.ensureInitialized()
        .stringifyValue(this as DropdownModel);
  }

  @override
  bool operator ==(Object other) {
    return DropdownModelMapper.ensureInitialized()
        .equalsValue(this as DropdownModel, other);
  }

  @override
  int get hashCode {
    return DropdownModelMapper.ensureInitialized()
        .hashValue(this as DropdownModel);
  }
}

extension DropdownModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DropdownModel, $Out> {
  DropdownModelCopyWith<$R, DropdownModel, $Out> get $asDropdownModel =>
      $base.as((v, t, t2) => _DropdownModelCopyWithImpl(v, t, t2));
}

abstract class DropdownModelCopyWith<$R, $In extends DropdownModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  InputDecorationModelCopyWith<$R, InputDecorationModel, InputDecorationModel>?
      get inputDecoration_inputDecoration;
  MenuStyleModelCopyWith<$R, MenuStyleModel, MenuStyleModel>?
      get menuStyle_menu;
  $R call(
      {String? textStyle_textStyleString,
      InputDecorationModel? inputDecoration_inputDecoration,
      MenuStyleModel? menuStyle_menu});
  DropdownModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DropdownModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DropdownModel, $Out>
    implements DropdownModelCopyWith<$R, DropdownModel, $Out> {
  _DropdownModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DropdownModel> $mapper =
      DropdownModelMapper.ensureInitialized();
  @override
  InputDecorationModelCopyWith<$R, InputDecorationModel, InputDecorationModel>?
      get inputDecoration_inputDecoration =>
          $value.inputDecoration_inputDecoration?.copyWith
              .$chain((v) => call(inputDecoration_inputDecoration: v));
  @override
  MenuStyleModelCopyWith<$R, MenuStyleModel, MenuStyleModel>?
      get menuStyle_menu => $value.menuStyle_menu?.copyWith
          .$chain((v) => call(menuStyle_menu: v));
  @override
  $R call(
          {Object? textStyle_textStyleString = $none,
          Object? inputDecoration_inputDecoration = $none,
          Object? menuStyle_menu = $none}) =>
      $apply(FieldCopyWithData({
        if (textStyle_textStyleString != $none)
          #textStyle_textStyleString: textStyle_textStyleString,
        if (inputDecoration_inputDecoration != $none)
          #inputDecoration_inputDecoration: inputDecoration_inputDecoration,
        if (menuStyle_menu != $none) #menuStyle_menu: menuStyle_menu
      }));
  @override
  DropdownModel $make(CopyWithData data) => DropdownModel(
      textStyle_textStyleString: data.get(#textStyle_textStyleString,
          or: $value.textStyle_textStyleString),
      inputDecoration_inputDecoration: data.get(
          #inputDecoration_inputDecoration,
          or: $value.inputDecoration_inputDecoration),
      menuStyle_menu: data.get(#menuStyle_menu, or: $value.menuStyle_menu));

  @override
  DropdownModelCopyWith<$R2, DropdownModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DropdownModelCopyWithImpl($value, $cast, t);
}
