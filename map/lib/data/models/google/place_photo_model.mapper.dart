// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_photo_model.dart';

class PlacePhotoMapper extends ClassMapperBase<PlacePhoto> {
  PlacePhotoMapper._();

  static PlacePhotoMapper? _instance;
  static PlacePhotoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlacePhotoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlacePhoto';

  static double _$width(PlacePhoto v) => v.width;
  static const Field<PlacePhoto, double> _f$width = Field('width', _$width);
  static double _$height(PlacePhoto v) => v.height;
  static const Field<PlacePhoto, double> _f$height = Field('height', _$height);
  static List<String> _$htmlAttributions(PlacePhoto v) => v.htmlAttributions;
  static const Field<PlacePhoto, List<String>> _f$htmlAttributions =
      Field('htmlAttributions', _$htmlAttributions, key: 'html_attributions');
  static String _$photoReference(PlacePhoto v) => v.photoReference;
  static const Field<PlacePhoto, String> _f$photoReference =
      Field('photoReference', _$photoReference, key: 'photo_reference');

  @override
  final MappableFields<PlacePhoto> fields = const {
    #width: _f$width,
    #height: _f$height,
    #htmlAttributions: _f$htmlAttributions,
    #photoReference: _f$photoReference,
  };

  static PlacePhoto _instantiate(DecodingData data) {
    return PlacePhoto(
        width: data.dec(_f$width),
        height: data.dec(_f$height),
        htmlAttributions: data.dec(_f$htmlAttributions),
        photoReference: data.dec(_f$photoReference));
  }

  @override
  final Function instantiate = _instantiate;

  static PlacePhoto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlacePhoto>(map);
  }

  static PlacePhoto fromJson(String json) {
    return ensureInitialized().decodeJson<PlacePhoto>(json);
  }
}

mixin PlacePhotoMappable {
  String toJson() {
    return PlacePhotoMapper.ensureInitialized()
        .encodeJson<PlacePhoto>(this as PlacePhoto);
  }

  Map<String, dynamic> toMap() {
    return PlacePhotoMapper.ensureInitialized()
        .encodeMap<PlacePhoto>(this as PlacePhoto);
  }

  PlacePhotoCopyWith<PlacePhoto, PlacePhoto, PlacePhoto> get copyWith =>
      _PlacePhotoCopyWithImpl(this as PlacePhoto, $identity, $identity);
  @override
  String toString() {
    return PlacePhotoMapper.ensureInitialized()
        .stringifyValue(this as PlacePhoto);
  }

  @override
  bool operator ==(Object other) {
    return PlacePhotoMapper.ensureInitialized()
        .equalsValue(this as PlacePhoto, other);
  }

  @override
  int get hashCode {
    return PlacePhotoMapper.ensureInitialized().hashValue(this as PlacePhoto);
  }
}

extension PlacePhotoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlacePhoto, $Out> {
  PlacePhotoCopyWith<$R, PlacePhoto, $Out> get $asPlacePhoto =>
      $base.as((v, t, t2) => _PlacePhotoCopyWithImpl(v, t, t2));
}

abstract class PlacePhotoCopyWith<$R, $In extends PlacePhoto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get htmlAttributions;
  $R call(
      {double? width,
      double? height,
      List<String>? htmlAttributions,
      String? photoReference});
  PlacePhotoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlacePhotoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlacePhoto, $Out>
    implements PlacePhotoCopyWith<$R, PlacePhoto, $Out> {
  _PlacePhotoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlacePhoto> $mapper =
      PlacePhotoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get htmlAttributions => ListCopyWith(
          $value.htmlAttributions,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(htmlAttributions: v));
  @override
  $R call(
          {double? width,
          double? height,
          List<String>? htmlAttributions,
          String? photoReference}) =>
      $apply(FieldCopyWithData({
        if (width != null) #width: width,
        if (height != null) #height: height,
        if (htmlAttributions != null) #htmlAttributions: htmlAttributions,
        if (photoReference != null) #photoReference: photoReference
      }));
  @override
  PlacePhoto $make(CopyWithData data) => PlacePhoto(
      width: data.get(#width, or: $value.width),
      height: data.get(#height, or: $value.height),
      htmlAttributions:
          data.get(#htmlAttributions, or: $value.htmlAttributions),
      photoReference: data.get(#photoReference, or: $value.photoReference));

  @override
  PlacePhotoCopyWith<$R2, PlacePhoto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlacePhotoCopyWithImpl($value, $cast, t);
}
