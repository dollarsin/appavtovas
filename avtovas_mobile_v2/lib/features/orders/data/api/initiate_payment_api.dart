import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/payment_model.dart';

class InitiatePaymentApi with BasePostApi<PaymentModel> {
  InitiatePaymentApi({
    required this.dioClient,
    required this.cancelTokenManager,
  });

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get postEndpoint => ApiConstants.initiatePaymentEndpoint;

  Future<PaymentModel> initiatePayment({
    required String orderId,
    required String paymentMethod,
    Map<String, Object?>? additionalData,
  }) async {
    return post(
      data: {
        'orderId': orderId,
        'paymentMethod': paymentMethod,
        if (additionalData != null) ...additionalData,
      },
    );
  }

  @override
  PaymentModel postResponseToModel(JsonData response) {
    final paymentJson =
        Map<String, dynamic>.from(response['payment'] as Map? ?? response);
    return PaymentModel.fromJson(paymentJson);
  }
}



