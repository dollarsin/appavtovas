import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../domain/models/orders_page_state.dart';
import '../../shared/di/orders_providers.dart';

class OrdersListPage extends ConsumerWidget {
  const OrdersListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(OrdersProviders.ordersListPageManagerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      body: switch (state) {
        BasePageLoadingState<OrdersPageState>() =>
          const Center(child: CircularProgressIndicator()),
        BasePageErrorState<OrdersPageState>(error: final error) => Center(
            child: Text('Failed to load orders: $error'),
          ),
        BasePageDataState<OrdersPageState>(data: final data) =>
          _OrdersListView(data: data),
        _ => const SizedBox.shrink(),
      },
    );
  }
}

class _OrdersListView extends StatelessWidget {
  const _OrdersListView({required this.data});

  final OrdersPageState data;

  @override
  Widget build(BuildContext context) {
    if (data.orders.isEmpty) {
      return const Center(child: Text('Нет активных заказов'));
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) {
        final order = data.orders[index];
        return ListTile(
          title: Text('Заказ #${order.id}'),
          subtitle: Text('Статус: ${order.status}'),
          trailing: Text('${order.totalAmount.toStringAsFixed(2)} ₽'),
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: data.orders.length,
    );
  }
}
