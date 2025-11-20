import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../data/models/points_list/trip_point.dart';
import '../../shared/di/select_points_providers.dart';
import 'trips_points_searchable_menu.dart';

class SearchTripVertical extends ConsumerWidget {
  const SearchTripVertical({
    required this.destinationController,
    required this.departureController,
    required this.onDepartureSubmitted,
    required this.onDestinationSubmitted,
    this.departureFocusNode,
    this.destinationFocusNode,
    super.key,
  });

  final FocusNode? departureFocusNode;
  final FocusNode? destinationFocusNode;
  final TextEditingController destinationController;
  final TextEditingController departureController;
  final ValueChanged<TripPoint?> onDepartureSubmitted;
  final ValueChanged<TripPoint?> onDestinationSubmitted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Column(
          children: [
            Consumer(
              builder: (context, ref, child) {
                final manager = ref.watch(
                  SelectPointsProviders
                      .departureTripPointsStateProvider
                      .notifier,
                );
                final isLoading = ref.watch(
                  SelectPointsProviders.departureTripPointsStateProvider.select(
                    (state) => state.isLoading,
                  ),
                );

                final items = ref.watch(
                  SelectPointsProviders.departureTripPointsStateProvider.select(
                    (state) => state.data?.points ?? [],
                  ),
                );

                return TripPointsSearchableMenu(
                  controller: departureController,
                  items: items,
                  isLoading: isLoading,
                  onSubmitted: (value) {
                    departureFocusNode?.nextFocus();
                  },
                  onItemTap: (value) {
                    onDepartureSubmitted(value);
                  },
                  focusNode: departureFocusNode,
                  onChanged: (query) {
                    onDepartureSubmitted(null);
                    manager.onQueryUpdate(query);
                  },
                  hintText: context.locale.from,
                );
              },
            ),
            const SizedBox(height: CommonDimensions.large),
            Consumer(
              builder: (context, ref, child) {
                final manager = ref.watch(
                  SelectPointsProviders
                      .destinationTripPointsStateProvider
                      .notifier,
                );
                final isLoading = ref.watch(
                  SelectPointsProviders.destinationTripPointsStateProvider
                      .select((state) => state.isLoading),
                );

                final items = ref.watch(
                  SelectPointsProviders.destinationTripPointsStateProvider
                      .select((state) => state.data?.points ?? []),
                );

                return TripPointsSearchableMenu(
                  controller: destinationController,
                  items: items,
                  isLoading: isLoading,
                  onSubmitted: (value) {
                    destinationFocusNode?.nextFocus();
                  },
                  onItemTap: (value) {
                    onDestinationSubmitted(value);
                  },
                  focusNode: destinationFocusNode,
                  onChanged: (query) {
                    onDestinationSubmitted(null);
                    manager.onQueryUpdate(query);
                  },
                  hintText: context.locale.to,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
