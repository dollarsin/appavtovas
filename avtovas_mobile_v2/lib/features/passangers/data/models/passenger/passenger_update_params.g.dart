// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.8

part of 'passenger_update_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassengerUpdateParams _$PassengerUpdateParamsFromJson(
  Map<String, dynamic> json,
) => _PassengerUpdateParams(
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
  birthDate: _$JsonConverterFromJson<String, DateTime>(
    json['birthdate'],
    const UTCDateTimeConverter().fromJson,
  ),
  citizenshipId: json['citizenship_id'] as String?,
  documentTypeId: json['document_type_id'] as String?,
  documentNumber: json['document_number'] as String?,
  patronymic: json['patronymic'] as String?,
);

Map<String, dynamic> _$PassengerUpdateParamsToJson(
  _PassengerUpdateParams instance,
) => <String, dynamic>{
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'gender': ?_$GenderEnumMap[instance.gender],
  'birthdate': ?_$JsonConverterToJson<String, DateTime>(
    instance.birthDate,
    const UTCDateTimeConverter().toJson,
  ),
  'citizenship_id': ?instance.citizenshipId,
  'document_type_id': ?instance.documentTypeId,
  'document_number': ?instance.documentNumber,
  'patronymic': ?instance.patronymic,
};

const _$GenderEnumMap = {Gender.male: 'Мужской', Gender.female: 'Женский'};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
