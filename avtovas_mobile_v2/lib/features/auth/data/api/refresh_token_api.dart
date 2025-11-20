import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/refresh_token/refresh_token_response.dart';

class RefreshTokenApi extends BasePostApi<RefreshTokenResponse> {
  RefreshTokenApi({required this.dioClient, required this.cancelTokenManager});

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get postEndpoint => ApiConstants.authRefreshToken;

  @override
  RefreshTokenResponse postResponseToModel(JsonData response) =>
      RefreshTokenResponse.fromJson(response);
}
