// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyTripModel _$MyTripModelFromJson(Map<String, dynamic> json) => _MyTripModel(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
);

Map<String, dynamic> _$MyTripModelToJson(_MyTripModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
