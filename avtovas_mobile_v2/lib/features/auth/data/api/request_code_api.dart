import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/request_code/request_code_response.dart';

class RequestCodeApi extends BasePostApi<RequestCodeResponse> {
  RequestCodeApi({required this.dioClient, required this.cancelTokenManager});

  @override
  final DioClient dioClient;
  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get postEndpoint => ApiConstants.authRequestCode;

  @override
  RequestCodeResponse postResponseToModel(JsonData response) =>
      RequestCodeResponse.fromJson(response);
}
