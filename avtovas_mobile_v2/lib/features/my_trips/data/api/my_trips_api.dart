import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../responses/my_trips_response.dart';

class MyTripsApi with BaseGetApi<MyTripsResponse> {
  MyTripsApi({required this.dioClient, required this.cancelTokenManager});

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get getEndpoint => ApiConstants.myTripsEndpoint;

  @override
  MyTripsResponse getResponseToModel(JsonData response) =>
      MyTripsResponse.fromJson(response);
}
