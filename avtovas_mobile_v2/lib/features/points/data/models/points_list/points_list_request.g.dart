// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.8

part of 'points_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PointsListRequest _$PointsListRequestFromJson(Map<String, dynamic> json) =>
    _PointsListRequest(
      type: $enumDecode(_$PointsListTypeEnumMap, json['type']),
      query: json['query'] as String?,
    );

Map<String, dynamic> _$PointsListRequestToJson(_PointsListRequest instance) =>
    <String, dynamic>{
      'type': _$PointsListTypeEnumMap[instance.type]!,
      'query': ?instance.query,
    };

const _$PointsListTypeEnumMap = {
  PointsListType.departure: 'departure',
  PointsListType.destination: 'destination',
};
