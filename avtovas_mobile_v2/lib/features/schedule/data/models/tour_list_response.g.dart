// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TourListResponse _$TourListResponseFromJson(Map<String, dynamic> json) =>
    _TourListResponse(
      tours: (json['tours'] as List<dynamic>)
          .map((e) => Tour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TourListResponseToJson(_TourListResponse instance) =>
    <String, dynamic>{'tours': instance.tours};
