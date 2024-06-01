// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'menu_bar_model.dart';

class MenuBarModelMapper extends ClassMapperBase<MenuBarModel> {
  MenuBarModelMapper._();

  static MenuBarModelMapper? _instance;
  static MenuBarModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MenuBarModelMapper._());
      MenuStyleModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MenuBarModel';

  static MenuStyleModel? _$style(MenuBarModel v) => v.style;
  static const Field<MenuBarModel, MenuStyleModel> _f$style =
      Field('style', _$style, opt: true);

  @override
  final MappableFields<MenuBarModel> fields = const {
    #style: _f$style,
  };

  static MenuBarModel _instantiate(DecodingData data) {
    return MenuBarModel(style: data.dec(_f$style));
  }

  @override
  final Function instantiate = _instantiate;

  static MenuBarModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MenuBarModel>(map);
  }

  static MenuBarModel fromJson(String json) {
    return ensureInitialized().decodeJson<MenuBarModel>(json);
  }
}

mixin MenuBarModelMappable {
  String toJson() {
    return MenuBarModelMapper.ensureInitialized()
        .encodeJson<MenuBarModel>(this as MenuBarModel);
  }

  Map<String, dynamic> toMap() {
    return MenuBarModelMapper.ensureInitialized()
        .encodeMap<MenuBarModel>(this as MenuBarModel);
  }

  MenuBarModelCopyWith<MenuBarModel, MenuBarModel, MenuBarModel> get copyWith =>
      _MenuBarModelCopyWithImpl(this as MenuBarModel, $identity, $identity);
  @override
  String toString() {
    return MenuBarModelMapper.ensureInitialized()
        .stringifyValue(this as MenuBarModel);
  }

  @override
  bool operator ==(Object other) {
    return MenuBarModelMapper.ensureInitialized()
        .equalsValue(this as MenuBarModel, other);
  }

  @override
  int get hashCode {
    return MenuBarModelMapper.ensureInitialized()
        .hashValue(this as MenuBarModel);
  }
}

extension MenuBarModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MenuBarModel, $Out> {
  MenuBarModelCopyWith<$R, MenuBarModel, $Out> get $asMenuBarModel =>
      $base.as((v, t, t2) => _MenuBarModelCopyWithImpl(v, t, t2));
}

abstract class MenuBarModelCopyWith<$R, $In extends MenuBarModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MenuStyleModelCopyWith<$R, MenuStyleModel, MenuStyleModel>? get style;
  $R call({MenuStyleModel? style});
  MenuBarModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MenuBarModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MenuBarModel, $Out>
    implements MenuBarModelCopyWith<$R, MenuBarModel, $Out> {
  _MenuBarModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MenuBarModel> $mapper =
      MenuBarModelMapper.ensureInitialized();
  @override
  MenuStyleModelCopyWith<$R, MenuStyleModel, MenuStyleModel>? get style =>
      $value.style?.copyWith.$chain((v) => call(style: v));
  @override
  $R call({Object? style = $none}) =>
      $apply(FieldCopyWithData({if (style != $none) #style: style}));
  @override
  MenuBarModel $make(CopyWithData data) =>
      MenuBarModel(style: data.get(#style, or: $value.style));

  @override
  MenuBarModelCopyWith<$R2, MenuBarModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MenuBarModelCopyWithImpl($value, $cast, t);
}
