import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/passanger_document/passenger_document_type.dart';

part 'passenger_document_types_list_page_state.freezed.dart';

@freezed
abstract class PassengerDocumentTypesListPageState
    with _$PassengerDocumentTypesListPageState {
  const factory PassengerDocumentTypesListPageState({
    String? query,
    @Default([]) List<PassengerDocumentType> passengerDocumentTypes,
  }) = _PassengerDocumentTypesListPageState;
}
