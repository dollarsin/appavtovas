// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TourDetailsResponse _$TourDetailsResponseFromJson(Map<String, dynamic> json) =>
    _TourDetailsResponse(
      id: json['id'] as String,
      departure: TourDetailsPoint.fromJson(
        json['departure'] as Map<String, dynamic>,
      ),
      destination: TourDetailsPoint.fromJson(
        json['destination'] as Map<String, dynamic>,
      ),
      route: TourDetailsRoute.fromJson(json['route'] as Map<String, dynamic>),
      baseCost: (json['base_cost'] as num).toDouble(),
      freeSeats: (json['free_seats'] as num).toInt(),
      carrier: TourDetailsCarrier.fromJson(
        json['carrier'] as Map<String, dynamic>,
      ),
      stopovers:
          (json['stopovers'] as List<dynamic>?)
              ?.map((e) => TourDetailsPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TourDetailsResponseToJson(
  _TourDetailsResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'departure': instance.departure,
  'destination': instance.destination,
  'route': instance.route,
  'base_cost': instance.baseCost,
  'free_seats': instance.freeSeats,
  'carrier': instance.carrier,
  'stopovers': instance.stopovers,
};
