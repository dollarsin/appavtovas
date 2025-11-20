import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/payment_model.dart';

class ConfirmPaymentApi with BasePostApi<PaymentModel> {
  ConfirmPaymentApi({
    required this.dioClient,
    required this.cancelTokenManager,
  });

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get postEndpoint => ApiConstants.confirmPaymentEndpoint;

  Future<PaymentModel> confirmPayment({
    required String paymentId,
    required String transactionId,
    Map<String, Object?>? additionalData,
  }) async {
    return post(
      data: {
        'paymentId': paymentId,
        'transactionId': transactionId,
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


