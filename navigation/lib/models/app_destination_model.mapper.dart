// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'app_destination_model.dart';

class AppDestinationModelMapper extends ClassMapperBase<AppDestinationModel> {
  AppDestinationModelMapper._();

  static AppDestinationModelMapper? _instance;
  static AppDestinationModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppDestinationModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AppDestinationModel';

  static String _$routeName(AppDestinationModel v) => v.routeName;
  static const Field<AppDestinationModel, String> _f$routeName =
      Field('routeName', _$routeName, key: 'route_name');
  static Map<String, String>? _$arguments(AppDestinationModel v) => v.arguments;
  static const Field<AppDestinationModel, Map<String, String>> _f$arguments =
      Field('arguments', _$arguments, opt: true);

  @override
  final MappableFields<AppDestinationModel> fields = const {
    #routeName: _f$routeName,
    #arguments: _f$arguments,
  };

  static AppDestinationModel _instantiate(DecodingData data) {
    return AppDestinationModel(
        routeName: data.dec(_f$routeName), arguments: data.dec(_f$arguments));
  }

  @override
  final Function instantiate = _instantiate;

  static AppDestinationModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppDestinationModel>(map);
  }

  static AppDestinationModel fromJson(String json) {
    return ensureInitialized().decodeJson<AppDestinationModel>(json);
  }
}

mixin AppDestinationModelMappable {
  String toJson() {
    return AppDestinationModelMapper.ensureInitialized()
        .encodeJson<AppDestinationModel>(this as AppDestinationModel);
  }

  Map<String, dynamic> toMap() {
    return AppDestinationModelMapper.ensureInitialized()
        .encodeMap<AppDestinationModel>(this as AppDestinationModel);
  }

  AppDestinationModelCopyWith<AppDestinationModel, AppDestinationModel,
          AppDestinationModel>
      get copyWith => _AppDestinationModelCopyWithImpl(
          this as AppDestinationModel, $identity, $identity);
  @override
  String toString() {
    return AppDestinationModelMapper.ensureInitialized()
        .stringifyValue(this as AppDestinationModel);
  }

  @override
  bool operator ==(Object other) {
    return AppDestinationModelMapper.ensureInitialized()
        .equalsValue(this as AppDestinationModel, other);
  }

  @override
  int get hashCode {
    return AppDestinationModelMapper.ensureInitialized()
        .hashValue(this as AppDestinationModel);
  }
}

extension AppDestinationModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AppDestinationModel, $Out> {
  AppDestinationModelCopyWith<$R, AppDestinationModel, $Out>
      get $asAppDestinationModel =>
          $base.as((v, t, t2) => _AppDestinationModelCopyWithImpl(v, t, t2));
}

abstract class AppDestinationModelCopyWith<$R, $In extends AppDestinationModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get arguments;
  $R call({String? routeName, Map<String, String>? arguments});
  AppDestinationModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AppDestinationModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppDestinationModel, $Out>
    implements AppDestinationModelCopyWith<$R, AppDestinationModel, $Out> {
  _AppDestinationModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppDestinationModel> $mapper =
      AppDestinationModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get arguments => $value.arguments != null
          ? MapCopyWith(
              $value.arguments!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(arguments: v))
          : null;
  @override
  $R call({String? routeName, Object? arguments = $none}) =>
      $apply(FieldCopyWithData({
        if (routeName != null) #routeName: routeName,
        if (arguments != $none) #arguments: arguments
      }));
  @override
  AppDestinationModel $make(CopyWithData data) => AppDestinationModel(
      routeName: data.get(#routeName, or: $value.routeName),
      arguments: data.get(#arguments, or: $value.arguments));

  @override
  AppDestinationModelCopyWith<$R2, AppDestinationModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AppDestinationModelCopyWithImpl($value, $cast, t);
}
