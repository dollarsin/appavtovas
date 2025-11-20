import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/payment_model.dart';

class PaymentsHistoryApi with BaseGetApi<List<PaymentModel>> {
  PaymentsHistoryApi({
    required this.dioClient,
    required this.cancelTokenManager,
  });

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get getEndpoint => ApiConstants.ordersPaymentsHistoryEndpoint;

  @override
  List<PaymentModel> getResponseToModel(JsonData response) {
    final paymentsJson = response['payments'] as List<dynamic>? ?? [];
    return paymentsJson
        .map(
          (paymentJson) => PaymentModel.fromJson(
            Map<String, dynamic>.from(paymentJson as Map),
          ),
        )
        .toList();
  }
}



