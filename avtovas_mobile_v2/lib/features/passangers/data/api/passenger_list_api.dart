import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/passenger/passenger_list_response.dart';

class PassengerListApi with BaseGetApi<PassengerListResponse> {
  PassengerListApi({required this.cancelTokenManager, required this.dioClient});

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  final DioClient dioClient;

  @override
  String get getEndpoint => ApiConstants.passengersGetAllEndpoint;

  @override
  PassengerListResponse getResponseToModel(JsonData response) =>
      PassengerListResponse.fromJson(response);
}
