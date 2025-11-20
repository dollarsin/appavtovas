// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_trips_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyTripsResponse _$MyTripsResponseFromJson(Map<String, dynamic> json) =>
    _MyTripsResponse(
      trips:
          (json['trips'] as List<dynamic>?)
              ?.map((e) => MyTripModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MyTripsResponseToJson(_MyTripsResponse instance) =>
    <String, dynamic>{'trips': instance.trips};
