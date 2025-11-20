import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../domain/models/create_order_page_state.dart';
import '../../domain/models/create_order_payload.dart';
import '../../shared/di/orders_providers.dart';

class CreateOrderPage extends ConsumerWidget {
  const CreateOrderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(OrdersProviders.createOrderPageManagerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Создание заказа')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                final payload = CreateOrderPayload(
                  departurePointId: 'point_a',
                  destinationPointId: 'point_b',
                  passengerId: 'passenger_1',
                  travelDate: DateTime.now().add(const Duration(days: 1)),
                  paymentMethod: 'card',
                );

                ref
                    .read(
                      OrdersProviders.createOrderPageManagerProvider.notifier,
                    )
                    .createOrder(payload);
              },
              child: const Text('Создать тестовый заказ'),
            ),
            const SizedBox(height: 24),
            switch (state) {
              BasePageLoadingState<CreateOrderPageState>() =>
                const CircularProgressIndicator(),
              BasePageErrorState<CreateOrderPageState>(error: final error) =>
                Text('Ошибка: $error'),
              BasePageDataState<CreateOrderPageState>(data: final data) =>
                data.order == null
                    ? const Text('Заказ еще не создан')
                    : Text('Создан заказ ${data.order!.id}'),
              _ => const Text('Готов к созданию заказа'),
            },
          ],
        ),
      ),
    );
  }
}


