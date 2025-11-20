import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/verify_code/verify_code_response.dart';

class VerifyCodeApi extends BasePostApi<VerifyCodeResponse> {
  VerifyCodeApi({required this.dioClient, required this.cancelTokenManager});

  @override
  final DioClient dioClient;
  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get postEndpoint => ApiConstants.authVerifyCode;

  @override
  VerifyCodeResponse postResponseToModel(JsonData response) =>
      VerifyCodeResponse.fromJson(response);
}
