// @dart=3.8
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_document_types_list_query_params.freezed.dart';

part 'passenger_document_types_list_query_params.g.dart';

@freezed
abstract class PassengerDocumentTypesListQueryParams
    with _$PassengerDocumentTypesListQueryParams {
  const factory PassengerDocumentTypesListQueryParams({
    @JsonKey(name: 'query', includeIfNull: false) String? query,
  }) = _PassengerDocumentTypesListQueryParams;

  factory PassengerDocumentTypesListQueryParams.fromJson(
    Map<String, dynamic> json,
  ) => _$PassengerDocumentTypesListQueryParamsFromJson(json);
}
