import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../domain/models/order_details_page_state.dart';
import '../../shared/di/orders_providers.dart';

class OrderDetailsPage extends ConsumerWidget {
  const OrderDetailsPage({required this.orderId, super.key});

  final String orderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(OrdersProviders.orderDetailsPageManagerProvider(orderId));

    return Scaffold(
      appBar: AppBar(title: Text('Order $orderId')),
      body: switch (state) {
        BasePageLoadingState<OrderDetailsPageState>() =>
          const Center(child: CircularProgressIndicator()),
        BasePageErrorState<OrderDetailsPageState>(error: final error) => Center(
            child: Text('Не удалось загрузить заказ: $error'),
          ),
        BasePageDataState<OrderDetailsPageState>(data: final data) =>
          _OrderDetailsBody(data: data),
        _ => const SizedBox.shrink(),
      },
    );
  }
}

class _OrderDetailsBody extends StatelessWidget {
  const _OrderDetailsBody({required this.data});

  final OrderDetailsPageState data;

  @override
  Widget build(BuildContext context) {
    final order = data.order;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Статус: ${order.status}', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Text('Сумма: ${order.totalAmount.toStringAsFixed(2)} ₽'),
        const SizedBox(height: 8),
        Text('Состав заказа: ${order.itemsDescription}'),
        const SizedBox(height: 16),
        Text(
          'Платежи',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        ...order.payments.map(
          (payment) => Card(
            child: ListTile(
              title: Text(payment.method.isEmpty
                  ? 'Оплата'
                  : 'Оплата ${payment.method}'),
              subtitle: Text('Статус: ${payment.status}'),
              trailing: Text('${payment.amount.toStringAsFixed(2)} ₽'),
            ),
          ),
        ),
      ],
    );
  }
}
