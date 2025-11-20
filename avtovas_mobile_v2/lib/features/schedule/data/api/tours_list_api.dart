import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/tour_list_response.dart';

class TourListApi extends BaseGetApi<TourListResponse> {
  TourListApi({required this.cancelTokenManager, required this.dioClient});

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  final DioClient dioClient;

  @override
  String get getEndpoint => ApiConstants.toursListEndpoint;

  @override
  TourListResponse getResponseToModel(JsonData response) =>
      TourListResponse.fromJson(response);
}
