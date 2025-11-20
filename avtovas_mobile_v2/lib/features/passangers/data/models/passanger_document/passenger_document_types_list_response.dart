import 'package:freezed_annotation/freezed_annotation.dart';

import 'passenger_document_type.dart';

part 'passenger_document_types_list_response.freezed.dart';

part 'passenger_document_types_list_response.g.dart';

@freezed
abstract class PassengerDocumentTypesListResponse
    with _$PassengerDocumentTypesListResponse {
  const factory PassengerDocumentTypesListResponse({
    @JsonKey(name: 'types')
    @Default([])
    List<PassengerDocumentType> passengersDocuments,
  }) = _PassengerDocumentTypesListResponse;

  factory PassengerDocumentTypesListResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PassengerDocumentTypesListResponseFromJson(json);
}
