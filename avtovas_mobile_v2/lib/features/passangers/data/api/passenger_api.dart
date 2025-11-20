import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/passenger/passenger.dart';

class PassengerApi
    with
        BaseGetApi<Passenger>,
        BasePutApi<void>,
        BasePostApi<void>,
        BaseDeleteApi<void> {
  PassengerApi({required this.cancelTokenManager, required this.dioClient});

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  final DioClient dioClient;

  @override
  String get getEndpoint => ApiConstants.passengersGetOneEndpoint;

  @override
  String get postEndpoint => ApiConstants.passengersCreateEndpoint;

  @override
  String get putEndpoint => ApiConstants.passengersUpdateEndpoint;

  @override
  String get deleteEndpoint => ApiConstants.passengersDeleteEndpoint;

  @override
  Passenger getResponseToModel(JsonData response) {
    return Passenger.fromJson(response);
  }

  @override
  void postResponseToModel(JsonData response) {}

  @override
  void putResponseToModel(JsonData response) {}

  @override
  void deleteResponseToModel(JsonData response) {}
}
