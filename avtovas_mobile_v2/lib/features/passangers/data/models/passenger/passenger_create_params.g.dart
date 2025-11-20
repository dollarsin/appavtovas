// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_create_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassengerCreateParams _$PassengerCreateParamsFromJson(
  Map<String, dynamic> json,
) => _PassengerCreateParams(
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
  birthDate: const UTCDateTimeConverter().fromJson(json['birthdate'] as String),
  citizenshipId: json['citizenship_id'] as String,
  documentTypeId: json['document_type_id'] as String,
  documentNumber: json['document_number'] as String,
  patronymic: json['patronymic'] as String?,
);

Map<String, dynamic> _$PassengerCreateParamsToJson(
  _PassengerCreateParams instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'gender': _$GenderEnumMap[instance.gender]!,
  'birthdate': const UTCDateTimeConverter().toJson(instance.birthDate),
  'citizenship_id': instance.citizenshipId,
  'document_type_id': instance.documentTypeId,
  'document_number': instance.documentNumber,
  'patronymic': instance.patronymic,
};

const _$GenderEnumMap = {Gender.male: 'Мужской', Gender.female: 'Женский'};
