// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TripPoint _$TripPointFromJson(Map<String, dynamic> json) => _TripPoint(
  id: json['id'] as String,
  name: json['name'] as String,
  region: json['region'] as String,
  district: json['district'] as String?,
);

Map<String, dynamic> _$TripPointToJson(_TripPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region': instance.region,
      'district': instance.district,
    };
