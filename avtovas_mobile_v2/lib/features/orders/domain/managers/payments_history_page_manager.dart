import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/payments_history_api.dart';
import '../models/payments_history_page_state.dart';

class PaymentsHistoryPageManager
    extends BasePageManager<PaymentsHistoryPageState> implements AsyncLifecycle {
  PaymentsHistoryPageManager({
    required PaymentsHistoryApi paymentsHistoryApi,
    this.orderId,
  })  : _paymentsHistoryApi = paymentsHistoryApi,
        super();

  final PaymentsHistoryApi _paymentsHistoryApi;
  final String? orderId;

  @override
  Future<void> onInit() async {
    await fetchData(_fetchPayments, _handleErrorCallback);
  }

  Future<PaymentsHistoryPageState> _fetchPayments() async {
    final payments = await _paymentsHistoryApi.get(
      queryParameters: orderId == null ? null : {'orderId': orderId},
    );
    return PaymentsHistoryPageState(payments: payments);
  }

  BasePageState<PaymentsHistoryPageState> _handleErrorCallback(
    BasePageState<PaymentsHistoryPageState> state,
    Object error,
  ) {
    return BasePageState.error(data: state.data, error: error);
  }

  @override
  Future<void> onDispose() async {
    _paymentsHistoryApi.cancelGetRequest();
    dispose();
  }
}
