// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.8

part of 'tour_list_page_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TourListPageData _$TourListPageDataFromJson(Map<String, dynamic> json) =>
    _TourListPageData(
      departureId: json['departure_id'] as String?,
      departureName: json['departure_name'] as String?,
      destinationId: json['destination_id'] as String?,
      destinationName: json['destination_name'] as String?,
      date: _$JsonConverterFromJson<String, DateTime>(
        json['date'],
        const UTCDateTimeConverter().fromJson,
      ),
    );

Map<String, dynamic> _$TourListPageDataToJson(_TourListPageData instance) =>
    <String, dynamic>{
      'departure_id': ?instance.departureId,
      'departure_name': ?instance.departureName,
      'destination_id': ?instance.destinationId,
      'destination_name': ?instance.destinationName,
      'date': ?_$JsonConverterToJson<String, DateTime>(
        instance.date,
        const UTCDateTimeConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
