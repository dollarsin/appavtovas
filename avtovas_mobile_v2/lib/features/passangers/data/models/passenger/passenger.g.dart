// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Passenger _$PassengerFromJson(Map<String, dynamic> json) => _Passenger(
  id: json['id'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
  birthDate: const UTCDateTimeConverter().fromJson(json['birthdate'] as String),
  citizenship: Citizenship.fromJson(
    json['citizenship'] as Map<String, dynamic>,
  ),
  documentType: PassengerDocumentType.fromJson(
    json['document_type'] as Map<String, dynamic>,
  ),
  documentNumber: json['document_number'] as String,
  patronymic: json['patronymic'] as String?,
);

Map<String, dynamic> _$PassengerToJson(_Passenger instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'gender': _$GenderEnumMap[instance.gender]!,
      'birthdate': const UTCDateTimeConverter().toJson(instance.birthDate),
      'citizenship': instance.citizenship,
      'document_type': instance.documentType,
      'document_number': instance.documentNumber,
      'patronymic': instance.patronymic,
    };

const _$GenderEnumMap = {Gender.male: 'Мужской', Gender.female: 'Женский'};
