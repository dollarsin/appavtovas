import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/localization/localizations_ext.dart';
import '../../../shared/ui/ui_kit/app_bar.dart';
import '../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../shared/ui/ui_kit/widgets/trip_container/trip_container.dart';
import '../data/models/tour.dart';
import '../domain/models/tour_list_page_data.dart';
import '../shared/di/tour_list_providers.dart';
import 'widgets/tours_sort_options_selector.dart';
import 'widgets/trips_search_and_pick_date.dart';

class TourListPage extends StatefulWidget {
  const TourListPage({required this.data, super.key});

  final TourListPageData data;

  @override
  State<TourListPage> createState() => _TourListPageState();
}

class _TourListPageState extends State<TourListPage> {
  late TextEditingController destinationController;
  late TextEditingController departureController;

  @override
  void initState() {
    super.initState();

    destinationController = TextEditingController(
      text:
          widget.data.destinationId != null
              ? widget.data.destinationName
              : null,
    );
    departureController = TextEditingController(
      text: widget.data.departureId != null ? widget.data.departureName : null,
    );
  }

  @override
  void dispose() {
    destinationController.dispose();
    departureController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AvtovasAppBar(title: context.locale.schedule),
      body: Consumer(
        builder: (context, ref, child) {
          final manager = ref.watch(
            TourListProviders.tourListPageManagerProvider(widget.data).notifier,
          );

          final state = ref.watch(
            TourListProviders.tourListPageManagerProvider(widget.data),
          );

          final stateData = ref.watch(
            TourListProviders.tourListPageManagerProvider(
              widget.data,
            ).select((state) => state.requireData),
          );

          if (state.isLoading || stateData.tours.isEmpty) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppDimensions.large),
                  child: TripsSearchAndPickDate(
                    destinationController: destinationController,
                    departureController: departureController,
                    onTripDateChanged:
                        (value) =>
                            manager
                              ..onTripDateChanged(value)
                              ..onSearchTap(),
                    onDepartureSubmitted:
                        (value) =>
                            manager
                              ..onDepartureSubmitted(value)
                              ..onSearchTap(),
                    onDestinationSubmitted:
                        (value) =>
                            manager
                              ..onDestinationSubmitted(value)
                              ..onSearchTap(),
                    initialTripDate: DateTime.now(),
                    tripDate: state.requireData.date,
                  ),
                ),
                const Spacer(),
                if (state.isLoading) const CupertinoActivityIndicator(),
                if (!state.isLoading && stateData.tours.isEmpty)
                  Column(
                    children: [
                      Text(
                        context.locale.routesNotFound,
                        style: context.themeData.textTheme.displayMedium
                            ?.copyWith(color: context.theme.assistiveTextColor),
                      ),
                      Text(
                        context.locale.checkOtherDatesAndStations,
                        style: context.themeData.textTheme.headlineSmall
                            ?.copyWith(
                              color: context.theme.mainAppColor,
                              fontWeight: AppFonts.weightBold,
                            ),
                      ),
                    ],
                  ),
                const Spacer(),
              ],
            );
          }

          return ListView(
            padding: const EdgeInsets.all(AppDimensions.large),
            children: [
              TripsSearchAndPickDate(
                destinationController: destinationController,
                departureController: departureController,
                onTripDateChanged: (value) {
                  manager
                    ..onTripDateChanged(value)
                    ..onSearchTap();
                },
                onDepartureSubmitted: (value) {
                  manager
                    ..onDepartureSubmitted(value)
                    ..onSearchTap();
                },
                onDestinationSubmitted: (value) {
                  manager
                    ..onDestinationSubmitted(value)
                    ..onSearchTap();
                },
                initialTripDate: DateTime.now(),
                tripDate: state.requireData.date,
              ),
              const SizedBox(height: AppDimensions.large),
              ToursSortOptionsSelector(
                selectedOption: stateData.sortOption,
                onSortOptionChanged:
                    (value) => manager.onSortOptionChanged(value),
              ),
              const SizedBox(height: AppDimensions.large),
              for (final tour in stateData.tours)
                TripContainer(
                  onTap: () => manager.onTourTap(tour),
                  integerPrice: tour.baseCoast.ceil(),
                  ticketPrice: context.locale.price(tour.baseCoast.ceil()),
                  freePlaces: tour.freeSeats.toString(),
                  tripNumber: tour.route.number,
                  tripRoot: tour.route.name,
                  departurePlace: tour.departure.name,
                  arrivalPlace: tour.destination.name,
                  timeInRoad: tour.duration.inMinutes.toString(),
                  departureDateTime: tour.departure.time.toIso8601String(),
                  arrivalDateTime: tour.destination.time.toIso8601String(),
                ),
            ],
          );
        },
      ),
    );
  }
}
