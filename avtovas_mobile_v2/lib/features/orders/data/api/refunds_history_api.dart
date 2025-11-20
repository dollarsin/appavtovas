import '../../../../shared/service/network/api/api_constants.dart';
import '../../../../shared/service/network/api/base_api.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../models/payment_model.dart';

class RefundsHistoryApi with BaseGetApi<List<PaymentModel>> {
  RefundsHistoryApi({
    required this.dioClient,
    required this.cancelTokenManager,
  });

  @override
  final DioClient dioClient;

  @override
  final CancelTokenManager cancelTokenManager;

  @override
  String get getEndpoint => ApiConstants.refundsHistoryEndpoint;

  Future<List<PaymentModel>> getRefundsHistory({
    String? orderId,
  }) async {
    return get(
      queryParameters: orderId != null ? {'orderId': orderId} : null,
    );
  }

  @override
  List<PaymentModel> getResponseToModel(JsonData response) {
    final refundsJson = response['refunds'] as List<dynamic>? ?? [];
    return refundsJson
        .map(
          (refundJson) => PaymentModel.fromJson(
            Map<String, dynamic>.from(refundJson as Map),
          ),
        )
        .toList();
  }
}



