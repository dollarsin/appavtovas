// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PointsListResponse _$PointsListResponseFromJson(Map<String, dynamic> json) =>
    _PointsListResponse(
      tripPoints: (json['points'] as List<dynamic>)
          .map((e) => TripPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PointsListResponseToJson(_PointsListResponse instance) =>
    <String, dynamic>{'points': instance.tripPoints};
