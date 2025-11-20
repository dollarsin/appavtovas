import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/order_details_api.dart';
import '../models/order_details_page_state.dart';

class OrderDetailsPageManager extends BasePageManager<OrderDetailsPageState>
    implements AsyncLifecycle {
  OrderDetailsPageManager({
    required OrderDetailsApi orderDetailsApi,
    required this.orderId,
  })  : _orderDetailsApi = orderDetailsApi,
        super();

  final OrderDetailsApi _orderDetailsApi;
  final String orderId;

  @override
  Future<void> onInit() async {
    await fetchData(_fetchDetails, _handleErrorCallback);
  }

  Future<OrderDetailsPageState> _fetchDetails() async {
    final order = await _orderDetailsApi.getOrderDetails(orderId);
    return OrderDetailsPageState(order: order);
  }

  BasePageState<OrderDetailsPageState> _handleErrorCallback(
    BasePageState<OrderDetailsPageState> state,
    Object error,
  ) {
    return BasePageState.error(data: state.data, error: error);
  }

  @override
  Future<void> onDispose() async {
    _orderDetailsApi.cancelGetRequest();
    dispose();
  }
}
