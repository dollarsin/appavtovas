import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/tour_details_response.dart';

class ToursDetailsApi extends BaseGetApi<TourDetailsResponse> {
  ToursDetailsApi({required this.cancelTokenManager, required this.dioClient});

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  final DioClient dioClient;

  @override
  String get getEndpoint => ApiConstants.toursDetailsEndpoint;

  @override
  TourDetailsResponse getResponseToModel(JsonData response) =>
      TourDetailsResponse.fromJson(response);
}
