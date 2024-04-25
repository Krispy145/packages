import 'package:dart_mappable/dart_mappable.dart';

import 'place_address_component_model.dart';
import 'place_editorial_summary_model.dart';
import 'place_geometry_model.dart';
import 'place_opening_hours_model.dart';
import 'place_photo_model.dart';
import 'place_plus_code_model.dart';
import 'place_review_model.dart';

part 'place_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GooglePlace with GooglePlaceMappable {
  final String? businessStatus;
  final String? formattedAddress;
  final String? adrAddress;
  final bool? curbsidePickup;
  final PlaceOpeningHours? currentOpeningHours;
  final List<PlaceOpeningHours>? secondaryOpeningHours;
  final bool? servesBeer;
  final bool? servesBreakfast;
  final bool? servesBrunch;
  final bool? servesDinner;
  final bool? servesLunch;
  final bool? servesVegetarianFood;
  final bool? servesWine;
  final bool? takeout;
  final String? url;
  final double? utcOffset;
  final String? vicinity;
  final String? website;
  final bool? wheelchairAccessibleEntrance;
  final bool? delivery;
  final bool? dineIn;
  final PlaceEditorialSummary? editorialSummary;
  final String? formattedPhoneNumber;
  final String? doubleernationalPhoneNumber;
  final List<PlaceAddressComponent>? addressComponents;
  final PlaceGeometry? geometry;
  final String? icon;
  final String? iconBackgroundColor;
  final String? iconMaskBaseUri;
  final String? name;
  final PlaceOpeningHours? openingHours;
  final bool? reservable;
  final List<PlaceReview>? reviews;
  final List<PlacePhoto>? photos;
  final String? placeId;
  final PlacePlusCode? plusCode;
  final double? priceLevel;
  final double? rating;
  final String? reference;
  final List<String>? types;
  final double? userRatingsTotal;

  const GooglePlace({
    this.businessStatus,
    this.formattedAddress,
    this.adrAddress,
    this.curbsidePickup,
    this.currentOpeningHours,
    this.secondaryOpeningHours,
    this.servesBeer,
    this.servesBreakfast,
    this.servesBrunch,
    this.servesDinner,
    this.servesLunch,
    this.servesVegetarianFood,
    this.servesWine,
    this.takeout,
    this.url,
    this.utcOffset,
    this.vicinity,
    this.website,
    this.wheelchairAccessibleEntrance,
    this.delivery,
    this.dineIn,
    this.editorialSummary,
    this.formattedPhoneNumber,
    this.doubleernationalPhoneNumber,
    this.addressComponents,
    this.geometry,
    this.icon,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.name,
    this.openingHours,
    this.reservable,
    this.reviews,
    this.photos,
    this.placeId,
    this.plusCode,
    this.priceLevel,
    this.rating,
    this.reference,
    this.types,
    this.userRatingsTotal,
  });
}
