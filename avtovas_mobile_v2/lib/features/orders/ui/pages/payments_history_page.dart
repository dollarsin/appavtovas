import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../domain/models/payments_history_page_state.dart';
import '../../shared/di/orders_providers.dart';

class PaymentsHistoryPage extends ConsumerWidget {
  const PaymentsHistoryPage({super.key, this.orderId});

  final String? orderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      OrdersProviders.paymentsHistoryPageManagerProvider(orderId),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('История платежей')),
      body: switch (state) {
        BasePageLoadingState<PaymentsHistoryPageState>() =>
          const Center(child: CircularProgressIndicator()),
        BasePageErrorState<PaymentsHistoryPageState>(error: final error) =>
          Center(child: Text('Ошибка загрузки: $error')),
        BasePageDataState<PaymentsHistoryPageState>(data: final data) =>
          _PaymentsList(data: data),
        _ => const SizedBox.shrink(),
      },
    );
  }
}

class _PaymentsList extends StatelessWidget {
  const _PaymentsList({required this.data});

  final PaymentsHistoryPageState data;

  @override
  Widget build(BuildContext context) {
    if (data.payments.isEmpty) {
      return const Center(child: Text('Платежи не найдены'));
    }

    return ListView.builder(
      itemCount: data.payments.length,
      itemBuilder: (context, index) {
        final payment = data.payments[index];
        return ListTile(
          title: Text('${payment.amount.toStringAsFixed(2)} ₽'),
          subtitle: Text('Статус: ${payment.status}'),
          trailing: Text(payment.method.isEmpty ? '-' : payment.method),
        );
      },
    );
  }
}
