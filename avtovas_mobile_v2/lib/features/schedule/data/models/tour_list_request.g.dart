// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TourListRequest _$TourListRequestFromJson(Map<String, dynamic> json) =>
    _TourListRequest(
      pointFrom: json['point_from'] as String,
      pointTo: json['point_to'] as String,
      dateTime: const UTCDateTimeConverter().fromJson(
        json['date_time'] as String,
      ),
    );

Map<String, dynamic> _$TourListRequestToJson(_TourListRequest instance) =>
    <String, dynamic>{
      'point_from': instance.pointFrom,
      'point_to': instance.pointTo,
      'date_time': const UTCDateTimeConverter().toJson(instance.dateTime),
    };
