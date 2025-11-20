// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_document_types_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassengerDocumentTypesListResponse
_$PassengerDocumentTypesListResponseFromJson(Map<String, dynamic> json) =>
    _PassengerDocumentTypesListResponse(
      passengersDocuments:
          (json['types'] as List<dynamic>?)
              ?.map(
                (e) =>
                    PassengerDocumentType.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PassengerDocumentTypesListResponseToJson(
  _PassengerDocumentTypesListResponse instance,
) => <String, dynamic>{'types': instance.passengersDocuments};
