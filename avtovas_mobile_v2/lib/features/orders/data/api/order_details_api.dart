import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/order_details_model.dart';

class OrderDetailsApi with BaseGetApi<OrderDetailsModel> {
  OrderDetailsApi({
    required this.dioClient,
    required this.cancelTokenManager,
  });

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get getEndpoint => ApiConstants.orderDetailsEndpoint;

  Future<OrderDetailsModel> getOrderDetails(String orderId) async {
    return get(
      queryParameters: {'orderId': orderId},
    );
  }

  @override
  OrderDetailsModel getResponseToModel(JsonData response) {
    final orderJson =
        Map<String, dynamic>.from(response['order'] as Map? ?? response);
    return OrderDetailsModel.fromJson(orderJson);
  }
}



