import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/passanger_document/passenger_document_types_list_response.dart';

class PassengerDocumentTypesListApi
    extends BaseGetApi<PassengerDocumentTypesListResponse> {
  PassengerDocumentTypesListApi({
    required this.cancelTokenManager,
    required this.dioClient,
  });

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  final DioClient dioClient;

  @override
  String get getEndpoint => ApiConstants.passengerDocumentTypesListEndpoint;

  @override
  PassengerDocumentTypesListResponse getResponseToModel(JsonData response) =>
      PassengerDocumentTypesListResponse.fromJson(response);
}
