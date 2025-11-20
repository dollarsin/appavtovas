import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/points_list/points_list_response.dart';

class PointsListApi extends BaseGetApi<PointsListResponse> {
  PointsListApi({required this.dioClient, required this.cancelTokenManager});

  @override
  final DioClient dioClient;
  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get getEndpoint => ApiConstants.pointListEndpoint;

  @override
  PointsListResponse getResponseToModel(JsonData response) =>
      PointsListResponse.fromJson(response);
}
