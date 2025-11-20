import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/di/network_module_providers.dart';
import '../../../../shared/service/network/dio_client.dart';
import '../../data/api/confirm_payment_api.dart';
import '../../data/api/create_order_api.dart';
import '../../data/api/initiate_payment_api.dart';
import '../../data/api/order_details_api.dart';
import '../../data/api/orders_list_api.dart';
import '../../data/api/payments_history_api.dart';
import '../../data/api/refunds_history_api.dart';
import '../../data/api/request_refund_api.dart';
import '../../domain/managers/create_order_page_manager.dart';
import '../../domain/managers/order_details_page_manager.dart';
import '../../domain/managers/orders_list_page_manager.dart';
import '../../domain/managers/payments_history_page_manager.dart';
import '../../domain/models/create_order_page_state.dart';
import '../../domain/models/order_details_page_state.dart';
import '../../domain/models/orders_page_state.dart';
import '../../domain/models/payments_history_page_state.dart';

class OrdersProviders {
  const OrdersProviders._();

  static final _cancelTokenManagerProvider = Provider.autoDispose(
    (ref) => ref.watch(NetworkModuleProviders.cancelTokenManagerProvider),
  );

  static final _dioClientProvider = Provider.autoDispose(
    (ref) => ref.watch(NetworkModuleProviders.appDioClientProvider),
  );

  static CancelTokenManager _cancelTokenManager(Ref ref) =>
      ref.watch(_cancelTokenManagerProvider);

  static DioClient _dioClient(Ref ref) => ref.watch(_dioClientProvider);

  static final ordersListApiProvider = Provider.autoDispose(
    (ref) => OrdersListApi(
      dioClient: _dioClient(ref),
      cancelTokenManager: _cancelTokenManager(ref),
    ),
  );

  static final orderDetailsApiProvider = Provider.autoDispose(
    (ref) => OrderDetailsApi(
      dioClient: _dioClient(ref),
      cancelTokenManager: _cancelTokenManager(ref),
    ),
  );

  static final createOrderApiProvider = Provider.autoDispose(
    (ref) => CreateOrderApi(
      dioClient: _dioClient(ref),
      cancelTokenManager: _cancelTokenManager(ref),
    ),
  );

  static final paymentsHistoryApiProvider = Provider.autoDispose(
    (ref) => PaymentsHistoryApi(
      dioClient: _dioClient(ref),
      cancelTokenManager: _cancelTokenManager(ref),
    ),
  );

  static final initiatePaymentApiProvider = Provider.autoDispose(
    (ref) => InitiatePaymentApi(
      dioClient: _dioClient(ref),
      cancelTokenManager: _cancelTokenManager(ref),
    ),
  );

  static final confirmPaymentApiProvider = Provider.autoDispose(
    (ref) => ConfirmPaymentApi(
      dioClient: _dioClient(ref),
      cancelTokenManager: _cancelTokenManager(ref),
    ),
  );

  static final requestRefundApiProvider = Provider.autoDispose(
    (ref) => RequestRefundApi(
      dioClient: _dioClient(ref),
      cancelTokenManager: _cancelTokenManager(ref),
    ),
  );

  static final refundsHistoryApiProvider = Provider.autoDispose(
    (ref) => RefundsHistoryApi(
      dioClient: _dioClient(ref),
      cancelTokenManager: _cancelTokenManager(ref),
    ),
  );

  static final ordersListPageManagerProvider =
      StateNotifierProvider.autoDispose<OrdersListPageManager,
          BasePageState<OrdersPageState>>((ref) {
    final manager = OrdersListPageManager(
      ordersListApi: ref.watch(ordersListApiProvider),
    )..onInit();

    ref.onDispose(manager.dispose);
    return manager;
  });

  static final orderDetailsPageManagerProvider =
      StateNotifierProvider.autoDispose
          .family<OrderDetailsPageManager, BasePageState<OrderDetailsPageState>,
              String>((ref, orderId) {
    final manager = OrderDetailsPageManager(
      orderDetailsApi: ref.watch(orderDetailsApiProvider),
      orderId: orderId,
    )..onInit();

    ref.onDispose(manager.dispose);
    return manager;
  });

  static final createOrderPageManagerProvider =
      StateNotifierProvider.autoDispose<CreateOrderPageManager,
          BasePageState<CreateOrderPageState>>((ref) {
    final manager = CreateOrderPageManager(
      createOrderApi: ref.watch(createOrderApiProvider),
    );

    ref.onDispose(manager.dispose);
    return manager;
  });

  static final paymentsHistoryPageManagerProvider =
      StateNotifierProvider.autoDispose
          .family<PaymentsHistoryPageManager,
              BasePageState<PaymentsHistoryPageState>, String?>((ref, orderId) {
    final manager = PaymentsHistoryPageManager(
      paymentsHistoryApi: ref.watch(paymentsHistoryApiProvider),
      orderId: orderId,
    )..onInit();

    ref.onDispose(manager.dispose);
    return manager;
  });
}
