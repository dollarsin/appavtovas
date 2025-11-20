import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../domain/models/states/my_trips_page_state.dart';
import '../shared/di/my_trips_providers.dart';

class MyTripsPage extends ConsumerWidget {
  const MyTripsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(MyTripsProviders.pageStateManagerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('My Trips')),
      body: Consumer(
        builder: (context, ref, child) {
          final isLoading = ref.watch(
            MyTripsProviders.pageStateManagerProvider.select(
              (state) => state.isLoading,
            ),
          );
          final hasData = ref.watch(
            MyTripsProviders.pageStateManagerProvider.select(
              (state) => state.hasData,
            ),
          );

          final error = ref.watch(
            MyTripsProviders.pageStateManagerProvider.select(
              (state) => switch (state) {
                final BasePageErrorState<MyTripsPageState> errorState =>
                  errorState.error,
                _ => null,
              },
            ),
          );

          return Center(
            child: Text(
              'is loading: $isLoading, has data: $hasData, error: $error',
            ),
          );
        },
      ),
    );
  }
}
