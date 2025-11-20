// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_details_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TourDetailsPoint _$TourDetailsPointFromJson(Map<String, dynamic> json) =>
    _TourDetailsPoint(
      name: json['name'] as String,
      time: const UTCDateTimeConverter().fromJson(json['time'] as String),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$TourDetailsPointToJson(_TourDetailsPoint instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': const UTCDateTimeConverter().toJson(instance.time),
      'address': instance.address,
    };
