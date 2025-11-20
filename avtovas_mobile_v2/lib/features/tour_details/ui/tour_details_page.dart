import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/localization/localizations_ext.dart';
import '../../../shared/ui/ui_kit/app_assets.dart';
import '../../../shared/ui/ui_kit/app_bar.dart';
import '../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../shared/ui/ui_kit/widgets/avtovas_button/avtovas_button.dart';
import '../data/models/tour_details_point.dart';
import '../domain/models/tour_details_page_data.dart';
import '../shared/tour_details_providers.dart';
import 'widgets/expanded_trip_information.dart';
import 'widgets/primary_trip_details_container.dart';
import 'widgets/secondary_trip_details_container.dart';
import 'widgets/trip_details_shimmer_content.dart';

class TourDetailsPage extends ConsumerWidget {
  const TourDetailsPage({required TourDetailsPageData pageData, super.key})
    : _pageData = pageData;

  final TourDetailsPageData _pageData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(
      TourDetailsProviders.tourDetailsPageManagerProvider(_pageData).notifier,
    );

    final headlineMedium = context.themeData.textTheme.headlineMedium?.copyWith(
      fontSize: AppFonts.sizeHeadlineLarge,
      fontWeight: FontWeight.normal,
      color: context.theme.quaternaryTextColor,
    );

    return Scaffold(
      appBar: AvtovasAppBar(title: context.locale.flightInformation),
      body: Consumer(
        builder: (context, ref, child) {
          {
            final hasData = ref.watch(
              TourDetailsProviders.tourDetailsPageManagerProvider(
                _pageData,
              ).select((state) => state.hasData),
            );
            final isLoading = ref.watch(
              TourDetailsProviders.tourDetailsPageManagerProvider(
                _pageData,
              ).select((state) => state.isLoading),
            );

            if (!hasData && isLoading) {
              return const TripDetailsShimmerContent();
            }

            if (!hasData) {
              return const Center(
                // TODO(lmepol): Добавить ui для состояния "Нет данных"
                child: Center(child: Text('No data available')),
              );
            }

            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppDimensions.medium,
              ),
              child: Consumer(
                builder: (context, ref, child) {
                  final data = ref.watch(
                    TourDetailsProviders.tourDetailsPageManagerProvider(
                      _pageData,
                    ).select((state) => state.requireData.data),
                  );
                  return Column(
                    children: [
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppDimensions.large,
                          ),
                          children: [
                            Text(context.locale.flight, style: headlineMedium),
                            const SizedBox(height: AppDimensions.medium),
                            PrimaryTripDetailsContainer(
                              departure: _toTourPoint(data.departure),
                              destination: _toTourPoint(data.destination),
                              stopovers:
                                  data.stopovers.map(_toTourPoint).toList(),
                            ),
                            const SizedBox(height: AppDimensions.medium),
                            Text(context.locale.carrier, style: headlineMedium),
                            const SizedBox(height: AppDimensions.medium),
                            SecondaryTripDetailsContainer(
                              carrierCompany: data.carrier.name,
                              transport: data.carrier.busName,
                            ),
                            const SizedBox(height: AppDimensions.medium),
                            Row(
                              children: [
                                AvtovasButton.icon(
                                  buttonText: context.locale.returnConditions,
                                  svgPath: AppAssets.shareIcon,
                                  buttonColor: context.theme.transparent,
                                  backgroundOpacity: 0,
                                  textStyle: context
                                      .themeData
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: context.theme.primaryTextColor,
                                      ),
                                  onTap: () => manager.onReturnConditionsTap(),
                                ),
                              ],
                            ),
                            const SizedBox(height: AppDimensions.large),
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppDimensions.large,
                        ),
                        child: ExpandedTripInformation(
                          ticketPrice: data.baseCost,
                          freePlaces: data.freeSeats,
                          isSmart: true,
                          canTapOnBuy: data.baseCost != 0,
                          // TODO(lmepol): figure out canTapOnBuy condition
                          //     &&
                          // widget.tripStatus != TripStatus.departed &&
                          // widget.tripStatus != TripStatus.cancelled &&
                          // widget.tripStatus != TripStatus.undefined,
                          onBuyTap: () => manager.onBuyButtonTap(),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }

  ({String? address, String name, DateTime time}) _toTourPoint(
    TourDetailsPoint stopover,
  ) {
    return (
      time: stopover.time,
      name: stopover.name,
      address: stopover.address,
    );
  }
}
