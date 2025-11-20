// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_document_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassengerDocumentType _$PassengerDocumentTypeFromJson(
  Map<String, dynamic> json,
) => _PassengerDocumentType(
  id: json['id'] as String,
  name: json['name'] as String,
  mask: json['mask'] as String,
  hint: json['hint'] as String,
);

Map<String, dynamic> _$PassengerDocumentTypeToJson(
  _PassengerDocumentType instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'mask': instance.mask,
  'hint': instance.hint,
};
