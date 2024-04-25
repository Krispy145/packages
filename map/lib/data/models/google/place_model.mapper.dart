// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_model.dart';

class GooglePlaceMapper extends ClassMapperBase<GooglePlace> {
  GooglePlaceMapper._();

  static GooglePlaceMapper? _instance;
  static GooglePlaceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GooglePlaceMapper._());
      PlaceOpeningHoursMapper.ensureInitialized();
      PlaceEditorialSummaryMapper.ensureInitialized();
      PlaceAddressComponentMapper.ensureInitialized();
      PlaceGeometryMapper.ensureInitialized();
      PlaceReviewMapper.ensureInitialized();
      PlacePhotoMapper.ensureInitialized();
      PlacePlusCodeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GooglePlace';

  static String? _$businessStatus(GooglePlace v) => v.businessStatus;
  static const Field<GooglePlace, String> _f$businessStatus = Field(
      'businessStatus', _$businessStatus,
      key: 'business_status', opt: true);
  static String? _$formattedAddress(GooglePlace v) => v.formattedAddress;
  static const Field<GooglePlace, String> _f$formattedAddress = Field(
      'formattedAddress', _$formattedAddress,
      key: 'formatted_address', opt: true);
  static String? _$adrAddress(GooglePlace v) => v.adrAddress;
  static const Field<GooglePlace, String> _f$adrAddress =
      Field('adrAddress', _$adrAddress, key: 'adr_address', opt: true);
  static bool? _$curbsidePickup(GooglePlace v) => v.curbsidePickup;
  static const Field<GooglePlace, bool> _f$curbsidePickup = Field(
      'curbsidePickup', _$curbsidePickup,
      key: 'curbside_pickup', opt: true);
  static PlaceOpeningHours? _$currentOpeningHours(GooglePlace v) =>
      v.currentOpeningHours;
  static const Field<GooglePlace, PlaceOpeningHours> _f$currentOpeningHours =
      Field('currentOpeningHours', _$currentOpeningHours,
          key: 'current_opening_hours', opt: true);
  static List<PlaceOpeningHours>? _$secondaryOpeningHours(GooglePlace v) =>
      v.secondaryOpeningHours;
  static const Field<GooglePlace, List<PlaceOpeningHours>>
      _f$secondaryOpeningHours = Field(
          'secondaryOpeningHours', _$secondaryOpeningHours,
          key: 'secondary_opening_hours', opt: true);
  static bool? _$servesBeer(GooglePlace v) => v.servesBeer;
  static const Field<GooglePlace, bool> _f$servesBeer =
      Field('servesBeer', _$servesBeer, key: 'serves_beer', opt: true);
  static bool? _$servesBreakfast(GooglePlace v) => v.servesBreakfast;
  static const Field<GooglePlace, bool> _f$servesBreakfast = Field(
      'servesBreakfast', _$servesBreakfast,
      key: 'serves_breakfast', opt: true);
  static bool? _$servesBrunch(GooglePlace v) => v.servesBrunch;
  static const Field<GooglePlace, bool> _f$servesBrunch =
      Field('servesBrunch', _$servesBrunch, key: 'serves_brunch', opt: true);
  static bool? _$servesDinner(GooglePlace v) => v.servesDinner;
  static const Field<GooglePlace, bool> _f$servesDinner =
      Field('servesDinner', _$servesDinner, key: 'serves_dinner', opt: true);
  static bool? _$servesLunch(GooglePlace v) => v.servesLunch;
  static const Field<GooglePlace, bool> _f$servesLunch =
      Field('servesLunch', _$servesLunch, key: 'serves_lunch', opt: true);
  static bool? _$servesVegetarianFood(GooglePlace v) => v.servesVegetarianFood;
  static const Field<GooglePlace, bool> _f$servesVegetarianFood = Field(
      'servesVegetarianFood', _$servesVegetarianFood,
      key: 'serves_vegetarian_food', opt: true);
  static bool? _$servesWine(GooglePlace v) => v.servesWine;
  static const Field<GooglePlace, bool> _f$servesWine =
      Field('servesWine', _$servesWine, key: 'serves_wine', opt: true);
  static bool? _$takeout(GooglePlace v) => v.takeout;
  static const Field<GooglePlace, bool> _f$takeout =
      Field('takeout', _$takeout, opt: true);
  static String? _$url(GooglePlace v) => v.url;
  static const Field<GooglePlace, String> _f$url =
      Field('url', _$url, opt: true);
  static double? _$utcOffset(GooglePlace v) => v.utcOffset;
  static const Field<GooglePlace, double> _f$utcOffset =
      Field('utcOffset', _$utcOffset, key: 'utc_offset', opt: true);
  static String? _$vicinity(GooglePlace v) => v.vicinity;
  static const Field<GooglePlace, String> _f$vicinity =
      Field('vicinity', _$vicinity, opt: true);
  static String? _$website(GooglePlace v) => v.website;
  static const Field<GooglePlace, String> _f$website =
      Field('website', _$website, opt: true);
  static bool? _$wheelchairAccessibleEntrance(GooglePlace v) =>
      v.wheelchairAccessibleEntrance;
  static const Field<GooglePlace, bool> _f$wheelchairAccessibleEntrance = Field(
      'wheelchairAccessibleEntrance', _$wheelchairAccessibleEntrance,
      key: 'wheelchair_accessible_entrance', opt: true);
  static bool? _$delivery(GooglePlace v) => v.delivery;
  static const Field<GooglePlace, bool> _f$delivery =
      Field('delivery', _$delivery, opt: true);
  static bool? _$dineIn(GooglePlace v) => v.dineIn;
  static const Field<GooglePlace, bool> _f$dineIn =
      Field('dineIn', _$dineIn, key: 'dine_in', opt: true);
  static PlaceEditorialSummary? _$editorialSummary(GooglePlace v) =>
      v.editorialSummary;
  static const Field<GooglePlace, PlaceEditorialSummary> _f$editorialSummary =
      Field('editorialSummary', _$editorialSummary,
          key: 'editorial_summary', opt: true);
  static String? _$formattedPhoneNumber(GooglePlace v) =>
      v.formattedPhoneNumber;
  static const Field<GooglePlace, String> _f$formattedPhoneNumber = Field(
      'formattedPhoneNumber', _$formattedPhoneNumber,
      key: 'formatted_phone_number', opt: true);
  static String? _$doubleernationalPhoneNumber(GooglePlace v) =>
      v.doubleernationalPhoneNumber;
  static const Field<GooglePlace, String> _f$doubleernationalPhoneNumber =
      Field('doubleernationalPhoneNumber', _$doubleernationalPhoneNumber,
          key: 'doubleernational_phone_number', opt: true);
  static List<PlaceAddressComponent>? _$addressComponents(GooglePlace v) =>
      v.addressComponents;
  static const Field<GooglePlace, List<PlaceAddressComponent>>
      _f$addressComponents = Field('addressComponents', _$addressComponents,
          key: 'address_components', opt: true);
  static PlaceGeometry? _$geometry(GooglePlace v) => v.geometry;
  static const Field<GooglePlace, PlaceGeometry> _f$geometry =
      Field('geometry', _$geometry, opt: true);
  static String? _$icon(GooglePlace v) => v.icon;
  static const Field<GooglePlace, String> _f$icon =
      Field('icon', _$icon, opt: true);
  static String? _$iconBackgroundColor(GooglePlace v) => v.iconBackgroundColor;
  static const Field<GooglePlace, String> _f$iconBackgroundColor = Field(
      'iconBackgroundColor', _$iconBackgroundColor,
      key: 'icon_background_color', opt: true);
  static String? _$iconMaskBaseUri(GooglePlace v) => v.iconMaskBaseUri;
  static const Field<GooglePlace, String> _f$iconMaskBaseUri = Field(
      'iconMaskBaseUri', _$iconMaskBaseUri,
      key: 'icon_mask_base_uri', opt: true);
  static String? _$name(GooglePlace v) => v.name;
  static const Field<GooglePlace, String> _f$name =
      Field('name', _$name, opt: true);
  static PlaceOpeningHours? _$openingHours(GooglePlace v) => v.openingHours;
  static const Field<GooglePlace, PlaceOpeningHours> _f$openingHours =
      Field('openingHours', _$openingHours, key: 'opening_hours', opt: true);
  static bool? _$reservable(GooglePlace v) => v.reservable;
  static const Field<GooglePlace, bool> _f$reservable =
      Field('reservable', _$reservable, opt: true);
  static List<PlaceReview>? _$reviews(GooglePlace v) => v.reviews;
  static const Field<GooglePlace, List<PlaceReview>> _f$reviews =
      Field('reviews', _$reviews, opt: true);
  static List<PlacePhoto>? _$photos(GooglePlace v) => v.photos;
  static const Field<GooglePlace, List<PlacePhoto>> _f$photos =
      Field('photos', _$photos, opt: true);
  static String? _$placeId(GooglePlace v) => v.placeId;
  static const Field<GooglePlace, String> _f$placeId =
      Field('placeId', _$placeId, key: 'place_id', opt: true);
  static PlacePlusCode? _$plusCode(GooglePlace v) => v.plusCode;
  static const Field<GooglePlace, PlacePlusCode> _f$plusCode =
      Field('plusCode', _$plusCode, key: 'plus_code', opt: true);
  static double? _$priceLevel(GooglePlace v) => v.priceLevel;
  static const Field<GooglePlace, double> _f$priceLevel =
      Field('priceLevel', _$priceLevel, key: 'price_level', opt: true);
  static double? _$rating(GooglePlace v) => v.rating;
  static const Field<GooglePlace, double> _f$rating =
      Field('rating', _$rating, opt: true);
  static String? _$reference(GooglePlace v) => v.reference;
  static const Field<GooglePlace, String> _f$reference =
      Field('reference', _$reference, opt: true);
  static List<String>? _$types(GooglePlace v) => v.types;
  static const Field<GooglePlace, List<String>> _f$types =
      Field('types', _$types, opt: true);
  static double? _$userRatingsTotal(GooglePlace v) => v.userRatingsTotal;
  static const Field<GooglePlace, double> _f$userRatingsTotal = Field(
      'userRatingsTotal', _$userRatingsTotal,
      key: 'user_ratings_total', opt: true);

  @override
  final MappableFields<GooglePlace> fields = const {
    #businessStatus: _f$businessStatus,
    #formattedAddress: _f$formattedAddress,
    #adrAddress: _f$adrAddress,
    #curbsidePickup: _f$curbsidePickup,
    #currentOpeningHours: _f$currentOpeningHours,
    #secondaryOpeningHours: _f$secondaryOpeningHours,
    #servesBeer: _f$servesBeer,
    #servesBreakfast: _f$servesBreakfast,
    #servesBrunch: _f$servesBrunch,
    #servesDinner: _f$servesDinner,
    #servesLunch: _f$servesLunch,
    #servesVegetarianFood: _f$servesVegetarianFood,
    #servesWine: _f$servesWine,
    #takeout: _f$takeout,
    #url: _f$url,
    #utcOffset: _f$utcOffset,
    #vicinity: _f$vicinity,
    #website: _f$website,
    #wheelchairAccessibleEntrance: _f$wheelchairAccessibleEntrance,
    #delivery: _f$delivery,
    #dineIn: _f$dineIn,
    #editorialSummary: _f$editorialSummary,
    #formattedPhoneNumber: _f$formattedPhoneNumber,
    #doubleernationalPhoneNumber: _f$doubleernationalPhoneNumber,
    #addressComponents: _f$addressComponents,
    #geometry: _f$geometry,
    #icon: _f$icon,
    #iconBackgroundColor: _f$iconBackgroundColor,
    #iconMaskBaseUri: _f$iconMaskBaseUri,
    #name: _f$name,
    #openingHours: _f$openingHours,
    #reservable: _f$reservable,
    #reviews: _f$reviews,
    #photos: _f$photos,
    #placeId: _f$placeId,
    #plusCode: _f$plusCode,
    #priceLevel: _f$priceLevel,
    #rating: _f$rating,
    #reference: _f$reference,
    #types: _f$types,
    #userRatingsTotal: _f$userRatingsTotal,
  };

  static GooglePlace _instantiate(DecodingData data) {
    return GooglePlace(
        businessStatus: data.dec(_f$businessStatus),
        formattedAddress: data.dec(_f$formattedAddress),
        adrAddress: data.dec(_f$adrAddress),
        curbsidePickup: data.dec(_f$curbsidePickup),
        currentOpeningHours: data.dec(_f$currentOpeningHours),
        secondaryOpeningHours: data.dec(_f$secondaryOpeningHours),
        servesBeer: data.dec(_f$servesBeer),
        servesBreakfast: data.dec(_f$servesBreakfast),
        servesBrunch: data.dec(_f$servesBrunch),
        servesDinner: data.dec(_f$servesDinner),
        servesLunch: data.dec(_f$servesLunch),
        servesVegetarianFood: data.dec(_f$servesVegetarianFood),
        servesWine: data.dec(_f$servesWine),
        takeout: data.dec(_f$takeout),
        url: data.dec(_f$url),
        utcOffset: data.dec(_f$utcOffset),
        vicinity: data.dec(_f$vicinity),
        website: data.dec(_f$website),
        wheelchairAccessibleEntrance: data.dec(_f$wheelchairAccessibleEntrance),
        delivery: data.dec(_f$delivery),
        dineIn: data.dec(_f$dineIn),
        editorialSummary: data.dec(_f$editorialSummary),
        formattedPhoneNumber: data.dec(_f$formattedPhoneNumber),
        doubleernationalPhoneNumber: data.dec(_f$doubleernationalPhoneNumber),
        addressComponents: data.dec(_f$addressComponents),
        geometry: data.dec(_f$geometry),
        icon: data.dec(_f$icon),
        iconBackgroundColor: data.dec(_f$iconBackgroundColor),
        iconMaskBaseUri: data.dec(_f$iconMaskBaseUri),
        name: data.dec(_f$name),
        openingHours: data.dec(_f$openingHours),
        reservable: data.dec(_f$reservable),
        reviews: data.dec(_f$reviews),
        photos: data.dec(_f$photos),
        placeId: data.dec(_f$placeId),
        plusCode: data.dec(_f$plusCode),
        priceLevel: data.dec(_f$priceLevel),
        rating: data.dec(_f$rating),
        reference: data.dec(_f$reference),
        types: data.dec(_f$types),
        userRatingsTotal: data.dec(_f$userRatingsTotal));
  }

  @override
  final Function instantiate = _instantiate;

  static GooglePlace fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GooglePlace>(map);
  }

  static GooglePlace fromJson(String json) {
    return ensureInitialized().decodeJson<GooglePlace>(json);
  }
}

mixin GooglePlaceMappable {
  String toJson() {
    return GooglePlaceMapper.ensureInitialized()
        .encodeJson<GooglePlace>(this as GooglePlace);
  }

  Map<String, dynamic> toMap() {
    return GooglePlaceMapper.ensureInitialized()
        .encodeMap<GooglePlace>(this as GooglePlace);
  }

  GooglePlaceCopyWith<GooglePlace, GooglePlace, GooglePlace> get copyWith =>
      _GooglePlaceCopyWithImpl(this as GooglePlace, $identity, $identity);
  @override
  String toString() {
    return GooglePlaceMapper.ensureInitialized()
        .stringifyValue(this as GooglePlace);
  }

  @override
  bool operator ==(Object other) {
    return GooglePlaceMapper.ensureInitialized()
        .equalsValue(this as GooglePlace, other);
  }

  @override
  int get hashCode {
    return GooglePlaceMapper.ensureInitialized().hashValue(this as GooglePlace);
  }
}

extension GooglePlaceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GooglePlace, $Out> {
  GooglePlaceCopyWith<$R, GooglePlace, $Out> get $asGooglePlace =>
      $base.as((v, t, t2) => _GooglePlaceCopyWithImpl(v, t, t2));
}

abstract class GooglePlaceCopyWith<$R, $In extends GooglePlace, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PlaceOpeningHoursCopyWith<$R, PlaceOpeningHours, PlaceOpeningHours>?
      get currentOpeningHours;
  ListCopyWith<$R, PlaceOpeningHours,
          PlaceOpeningHoursCopyWith<$R, PlaceOpeningHours, PlaceOpeningHours>>?
      get secondaryOpeningHours;
  PlaceEditorialSummaryCopyWith<$R, PlaceEditorialSummary,
      PlaceEditorialSummary>? get editorialSummary;
  ListCopyWith<
      $R,
      PlaceAddressComponent,
      PlaceAddressComponentCopyWith<$R, PlaceAddressComponent,
          PlaceAddressComponent>>? get addressComponents;
  PlaceGeometryCopyWith<$R, PlaceGeometry, PlaceGeometry>? get geometry;
  PlaceOpeningHoursCopyWith<$R, PlaceOpeningHours, PlaceOpeningHours>?
      get openingHours;
  ListCopyWith<$R, PlaceReview,
      PlaceReviewCopyWith<$R, PlaceReview, PlaceReview>>? get reviews;
  ListCopyWith<$R, PlacePhoto, PlacePhotoCopyWith<$R, PlacePhoto, PlacePhoto>>?
      get photos;
  PlacePlusCodeCopyWith<$R, PlacePlusCode, PlacePlusCode>? get plusCode;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get types;
  $R call(
      {String? businessStatus,
      String? formattedAddress,
      String? adrAddress,
      bool? curbsidePickup,
      PlaceOpeningHours? currentOpeningHours,
      List<PlaceOpeningHours>? secondaryOpeningHours,
      bool? servesBeer,
      bool? servesBreakfast,
      bool? servesBrunch,
      bool? servesDinner,
      bool? servesLunch,
      bool? servesVegetarianFood,
      bool? servesWine,
      bool? takeout,
      String? url,
      double? utcOffset,
      String? vicinity,
      String? website,
      bool? wheelchairAccessibleEntrance,
      bool? delivery,
      bool? dineIn,
      PlaceEditorialSummary? editorialSummary,
      String? formattedPhoneNumber,
      String? doubleernationalPhoneNumber,
      List<PlaceAddressComponent>? addressComponents,
      PlaceGeometry? geometry,
      String? icon,
      String? iconBackgroundColor,
      String? iconMaskBaseUri,
      String? name,
      PlaceOpeningHours? openingHours,
      bool? reservable,
      List<PlaceReview>? reviews,
      List<PlacePhoto>? photos,
      String? placeId,
      PlacePlusCode? plusCode,
      double? priceLevel,
      double? rating,
      String? reference,
      List<String>? types,
      double? userRatingsTotal});
  GooglePlaceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GooglePlaceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GooglePlace, $Out>
    implements GooglePlaceCopyWith<$R, GooglePlace, $Out> {
  _GooglePlaceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GooglePlace> $mapper =
      GooglePlaceMapper.ensureInitialized();
  @override
  PlaceOpeningHoursCopyWith<$R, PlaceOpeningHours, PlaceOpeningHours>?
      get currentOpeningHours => $value.currentOpeningHours?.copyWith
          .$chain((v) => call(currentOpeningHours: v));
  @override
  ListCopyWith<$R, PlaceOpeningHours,
          PlaceOpeningHoursCopyWith<$R, PlaceOpeningHours, PlaceOpeningHours>>?
      get secondaryOpeningHours => $value.secondaryOpeningHours != null
          ? ListCopyWith(
              $value.secondaryOpeningHours!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(secondaryOpeningHours: v))
          : null;
  @override
  PlaceEditorialSummaryCopyWith<$R, PlaceEditorialSummary,
          PlaceEditorialSummary>?
      get editorialSummary => $value.editorialSummary?.copyWith
          .$chain((v) => call(editorialSummary: v));
  @override
  ListCopyWith<
      $R,
      PlaceAddressComponent,
      PlaceAddressComponentCopyWith<$R, PlaceAddressComponent,
          PlaceAddressComponent>>? get addressComponents =>
      $value.addressComponents != null
          ? ListCopyWith($value.addressComponents!,
              (v, t) => v.copyWith.$chain(t), (v) => call(addressComponents: v))
          : null;
  @override
  PlaceGeometryCopyWith<$R, PlaceGeometry, PlaceGeometry>? get geometry =>
      $value.geometry?.copyWith.$chain((v) => call(geometry: v));
  @override
  PlaceOpeningHoursCopyWith<$R, PlaceOpeningHours, PlaceOpeningHours>?
      get openingHours =>
          $value.openingHours?.copyWith.$chain((v) => call(openingHours: v));
  @override
  ListCopyWith<$R, PlaceReview,
          PlaceReviewCopyWith<$R, PlaceReview, PlaceReview>>?
      get reviews => $value.reviews != null
          ? ListCopyWith($value.reviews!, (v, t) => v.copyWith.$chain(t),
              (v) => call(reviews: v))
          : null;
  @override
  ListCopyWith<$R, PlacePhoto, PlacePhotoCopyWith<$R, PlacePhoto, PlacePhoto>>?
      get photos => $value.photos != null
          ? ListCopyWith($value.photos!, (v, t) => v.copyWith.$chain(t),
              (v) => call(photos: v))
          : null;
  @override
  PlacePlusCodeCopyWith<$R, PlacePlusCode, PlacePlusCode>? get plusCode =>
      $value.plusCode?.copyWith.$chain((v) => call(plusCode: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get types =>
      $value.types != null
          ? ListCopyWith($value.types!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(types: v))
          : null;
  @override
  $R call(
          {Object? businessStatus = $none,
          Object? formattedAddress = $none,
          Object? adrAddress = $none,
          Object? curbsidePickup = $none,
          Object? currentOpeningHours = $none,
          Object? secondaryOpeningHours = $none,
          Object? servesBeer = $none,
          Object? servesBreakfast = $none,
          Object? servesBrunch = $none,
          Object? servesDinner = $none,
          Object? servesLunch = $none,
          Object? servesVegetarianFood = $none,
          Object? servesWine = $none,
          Object? takeout = $none,
          Object? url = $none,
          Object? utcOffset = $none,
          Object? vicinity = $none,
          Object? website = $none,
          Object? wheelchairAccessibleEntrance = $none,
          Object? delivery = $none,
          Object? dineIn = $none,
          Object? editorialSummary = $none,
          Object? formattedPhoneNumber = $none,
          Object? doubleernationalPhoneNumber = $none,
          Object? addressComponents = $none,
          Object? geometry = $none,
          Object? icon = $none,
          Object? iconBackgroundColor = $none,
          Object? iconMaskBaseUri = $none,
          Object? name = $none,
          Object? openingHours = $none,
          Object? reservable = $none,
          Object? reviews = $none,
          Object? photos = $none,
          Object? placeId = $none,
          Object? plusCode = $none,
          Object? priceLevel = $none,
          Object? rating = $none,
          Object? reference = $none,
          Object? types = $none,
          Object? userRatingsTotal = $none}) =>
      $apply(FieldCopyWithData({
        if (businessStatus != $none) #businessStatus: businessStatus,
        if (formattedAddress != $none) #formattedAddress: formattedAddress,
        if (adrAddress != $none) #adrAddress: adrAddress,
        if (curbsidePickup != $none) #curbsidePickup: curbsidePickup,
        if (currentOpeningHours != $none)
          #currentOpeningHours: currentOpeningHours,
        if (secondaryOpeningHours != $none)
          #secondaryOpeningHours: secondaryOpeningHours,
        if (servesBeer != $none) #servesBeer: servesBeer,
        if (servesBreakfast != $none) #servesBreakfast: servesBreakfast,
        if (servesBrunch != $none) #servesBrunch: servesBrunch,
        if (servesDinner != $none) #servesDinner: servesDinner,
        if (servesLunch != $none) #servesLunch: servesLunch,
        if (servesVegetarianFood != $none)
          #servesVegetarianFood: servesVegetarianFood,
        if (servesWine != $none) #servesWine: servesWine,
        if (takeout != $none) #takeout: takeout,
        if (url != $none) #url: url,
        if (utcOffset != $none) #utcOffset: utcOffset,
        if (vicinity != $none) #vicinity: vicinity,
        if (website != $none) #website: website,
        if (wheelchairAccessibleEntrance != $none)
          #wheelchairAccessibleEntrance: wheelchairAccessibleEntrance,
        if (delivery != $none) #delivery: delivery,
        if (dineIn != $none) #dineIn: dineIn,
        if (editorialSummary != $none) #editorialSummary: editorialSummary,
        if (formattedPhoneNumber != $none)
          #formattedPhoneNumber: formattedPhoneNumber,
        if (doubleernationalPhoneNumber != $none)
          #doubleernationalPhoneNumber: doubleernationalPhoneNumber,
        if (addressComponents != $none) #addressComponents: addressComponents,
        if (geometry != $none) #geometry: geometry,
        if (icon != $none) #icon: icon,
        if (iconBackgroundColor != $none)
          #iconBackgroundColor: iconBackgroundColor,
        if (iconMaskBaseUri != $none) #iconMaskBaseUri: iconMaskBaseUri,
        if (name != $none) #name: name,
        if (openingHours != $none) #openingHours: openingHours,
        if (reservable != $none) #reservable: reservable,
        if (reviews != $none) #reviews: reviews,
        if (photos != $none) #photos: photos,
        if (placeId != $none) #placeId: placeId,
        if (plusCode != $none) #plusCode: plusCode,
        if (priceLevel != $none) #priceLevel: priceLevel,
        if (rating != $none) #rating: rating,
        if (reference != $none) #reference: reference,
        if (types != $none) #types: types,
        if (userRatingsTotal != $none) #userRatingsTotal: userRatingsTotal
      }));
  @override
  GooglePlace $make(CopyWithData data) => GooglePlace(
      businessStatus: data.get(#businessStatus, or: $value.businessStatus),
      formattedAddress:
          data.get(#formattedAddress, or: $value.formattedAddress),
      adrAddress: data.get(#adrAddress, or: $value.adrAddress),
      curbsidePickup: data.get(#curbsidePickup, or: $value.curbsidePickup),
      currentOpeningHours:
          data.get(#currentOpeningHours, or: $value.currentOpeningHours),
      secondaryOpeningHours:
          data.get(#secondaryOpeningHours, or: $value.secondaryOpeningHours),
      servesBeer: data.get(#servesBeer, or: $value.servesBeer),
      servesBreakfast: data.get(#servesBreakfast, or: $value.servesBreakfast),
      servesBrunch: data.get(#servesBrunch, or: $value.servesBrunch),
      servesDinner: data.get(#servesDinner, or: $value.servesDinner),
      servesLunch: data.get(#servesLunch, or: $value.servesLunch),
      servesVegetarianFood:
          data.get(#servesVegetarianFood, or: $value.servesVegetarianFood),
      servesWine: data.get(#servesWine, or: $value.servesWine),
      takeout: data.get(#takeout, or: $value.takeout),
      url: data.get(#url, or: $value.url),
      utcOffset: data.get(#utcOffset, or: $value.utcOffset),
      vicinity: data.get(#vicinity, or: $value.vicinity),
      website: data.get(#website, or: $value.website),
      wheelchairAccessibleEntrance: data.get(#wheelchairAccessibleEntrance,
          or: $value.wheelchairAccessibleEntrance),
      delivery: data.get(#delivery, or: $value.delivery),
      dineIn: data.get(#dineIn, or: $value.dineIn),
      editorialSummary:
          data.get(#editorialSummary, or: $value.editorialSummary),
      formattedPhoneNumber:
          data.get(#formattedPhoneNumber, or: $value.formattedPhoneNumber),
      doubleernationalPhoneNumber: data.get(#doubleernationalPhoneNumber,
          or: $value.doubleernationalPhoneNumber),
      addressComponents:
          data.get(#addressComponents, or: $value.addressComponents),
      geometry: data.get(#geometry, or: $value.geometry),
      icon: data.get(#icon, or: $value.icon),
      iconBackgroundColor:
          data.get(#iconBackgroundColor, or: $value.iconBackgroundColor),
      iconMaskBaseUri: data.get(#iconMaskBaseUri, or: $value.iconMaskBaseUri),
      name: data.get(#name, or: $value.name),
      openingHours: data.get(#openingHours, or: $value.openingHours),
      reservable: data.get(#reservable, or: $value.reservable),
      reviews: data.get(#reviews, or: $value.reviews),
      photos: data.get(#photos, or: $value.photos),
      placeId: data.get(#placeId, or: $value.placeId),
      plusCode: data.get(#plusCode, or: $value.plusCode),
      priceLevel: data.get(#priceLevel, or: $value.priceLevel),
      rating: data.get(#rating, or: $value.rating),
      reference: data.get(#reference, or: $value.reference),
      types: data.get(#types, or: $value.types),
      userRatingsTotal:
          data.get(#userRatingsTotal, or: $value.userRatingsTotal));

  @override
  GooglePlaceCopyWith<$R2, GooglePlace, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GooglePlaceCopyWithImpl($value, $cast, t);
}
