import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/order_model.dart';

class OrdersListApi with BaseGetApi<List<OrderModel>> {
  OrdersListApi({
    required this.dioClient,
    required this.cancelTokenManager,
  });

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get getEndpoint => ApiConstants.ordersListEndpoint;

  @override
  List<OrderModel> getResponseToModel(JsonData response) {
    final ordersJson = response['orders'] as List<dynamic>? ?? [];

    return ordersJson
        .map(
          (orderJson) => OrderModel.fromJson(
            Map<String, dynamic>.from(orderJson as Map),
          ),
        )
        .toList();
  }
}



