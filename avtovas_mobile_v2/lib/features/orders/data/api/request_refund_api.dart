import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/payment_model.dart';

class RequestRefundApi with BasePostApi<PaymentModel> {
  RequestRefundApi({
    required this.dioClient,
    required this.cancelTokenManager,
  });

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get postEndpoint => ApiConstants.requestRefundEndpoint;

  Future<PaymentModel> requestRefund({
    required String orderId,
    required String paymentId,
    String? reason,
    Map<String, Object?>? additionalData,
  }) async {
    return post(
      data: {
        'orderId': orderId,
        'paymentId': paymentId,
        if (reason != null) 'reason': reason,
        if (additionalData != null) ...additionalData,
      },
    );
  }

  @override
  PaymentModel postResponseToModel(JsonData response) {
    final refundJson =
        Map<String, dynamic>.from(response['refund'] as Map? ?? response);
    return PaymentModel.fromJson(refundJson);
  }
}



