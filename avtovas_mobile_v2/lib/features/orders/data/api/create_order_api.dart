import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/order_details_model.dart';

class CreateOrderApi with BasePostApi<OrderDetailsModel> {
  CreateOrderApi({
    required this.dioClient,
    required this.cancelTokenManager,
  });

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get postEndpoint => ApiConstants.createOrderEndpoint;

  @override
  OrderDetailsModel postResponseToModel(JsonData response) {
    final orderJson =
        Map<String, dynamic>.from(response['order'] as Map? ?? response);
    return OrderDetailsModel.fromJson(orderJson);
  }
}



