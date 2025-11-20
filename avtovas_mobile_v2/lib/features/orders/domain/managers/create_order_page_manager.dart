import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../data/api/create_order_api.dart';
import '../models/create_order_page_state.dart';
import '../models/create_order_payload.dart';

class CreateOrderPageManager extends BasePageManager<CreateOrderPageState> {
  CreateOrderPageManager({required CreateOrderApi createOrderApi})
      : _createOrderApi = createOrderApi;

  final CreateOrderApi _createOrderApi;

  Future<void> createOrder(CreateOrderPayload payload) async {
    await sendData(
      () => _create(payload),
      (state, error) => BasePageState.error(data: state.data, error: error),
    );
  }

  Future<CreateOrderPageState> _create(CreateOrderPayload payload) async {
    final order = await _createOrderApi.post(data: payload.toJson());
    return CreateOrderPageState(order: order);
  }

  @override
  void dispose() {
    _createOrderApi.cancelPostRequest();
    super.dispose();
  }
}
