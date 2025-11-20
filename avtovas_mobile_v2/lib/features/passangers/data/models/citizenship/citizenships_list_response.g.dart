// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citizenships_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitizenshipsListResponse _$CitizenshipsListResponseFromJson(
  Map<String, dynamic> json,
) => _CitizenshipsListResponse(
  citizenships:
      (json['citizenships'] as List<dynamic>?)
          ?.map((e) => Citizenship.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CitizenshipsListResponseToJson(
  _CitizenshipsListResponse instance,
) => <String, dynamic>{'citizenships': instance.citizenships};
