// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TourPoint _$TourPointFromJson(Map<String, dynamic> json) => _TourPoint(
  name: json['name'] as String,
  time: const UTCDateTimeConverter().fromJson(json['time'] as String),
);

Map<String, dynamic> _$TourPointToJson(_TourPoint instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': const UTCDateTimeConverter().toJson(instance.time),
    };
