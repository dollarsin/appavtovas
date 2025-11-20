// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassengerListResponse _$PassengerListResponseFromJson(
  Map<String, dynamic> json,
) => _PassengerListResponse(
  passengers:
      (json['passengers'] as List<dynamic>?)
          ?.map((e) => Passenger.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PassengerListResponseToJson(
  _PassengerListResponse instance,
) => <String, dynamic>{'passengers': instance.passengers};
