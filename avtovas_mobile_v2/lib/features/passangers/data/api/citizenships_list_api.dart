import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/citizenship/citizenships_list_response.dart';

class CitizenshipsListApi extends BaseGetApi<CitizenshipsListResponse> {
  CitizenshipsListApi({
    required this.cancelTokenManager,
    required this.dioClient,
  });

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  final DioClient dioClient;

  @override
  String get getEndpoint => ApiConstants.citizenshipsListEndpoint;

  @override
  CitizenshipsListResponse getResponseToModel(JsonData response) =>
      CitizenshipsListResponse.fromJson(response);
}
