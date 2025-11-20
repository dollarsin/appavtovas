import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/orders_list_api.dart';
import '../models/orders_page_state.dart';

class OrdersListPageManager extends BasePageManager<OrdersPageState>
    implements AsyncLifecycle {
  OrdersListPageManager({required OrdersListApi ordersListApi})
      : _ordersListApi = ordersListApi,
        super();

  final OrdersListApi _ordersListApi;

  @override
  Future<void> onInit() async {
    await fetchData(_loadOrders, _handleErrorCallback);
  }

  Future<OrdersPageState> _loadOrders() async {
    final orders = await _ordersListApi.get();
    return OrdersPageState(orders: orders);
  }

  BasePageState<OrdersPageState> _handleErrorCallback(
    BasePageState<OrdersPageState> state,
    Object error,
  ) {
    return BasePageState.error(data: state.data, error: error);
  }

  @override
  Future<void> onDispose() async {
    _ordersListApi.cancelGetRequest();
    dispose();
  }
}
