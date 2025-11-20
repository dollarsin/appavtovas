// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tour _$TourFromJson(Map<String, dynamic> json) => _Tour(
  id: json['id'] as String,
  departure: TourPoint.fromJson(json['departure'] as Map<String, dynamic>),
  destination: TourPoint.fromJson(json['destination'] as Map<String, dynamic>),
  route: TourRoute.fromJson(json['route'] as Map<String, dynamic>),
  baseCoast: (json['base_cost'] as num).toDouble(),
  freeSeats: (json['free_seats'] as num).toInt(),
);

Map<String, dynamic> _$TourToJson(_Tour instance) => <String, dynamic>{
  'id': instance.id,
  'departure': instance.departure,
  'destination': instance.destination,
  'route': instance.route,
  'base_cost': instance.baseCoast,
  'free_seats': instance.freeSeats,
};
