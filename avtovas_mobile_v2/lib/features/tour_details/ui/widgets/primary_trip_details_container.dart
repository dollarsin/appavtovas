import 'package:flutter/material.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../shared/ui/ui_kit/widgets/expansion_container/expansion_container.dart';
import '../../../../shared/ui/ui_kit/widgets/trip_container/trip_line.dart';
import '../../../../shared/utils/date_time_extension.dart';
import '../../../../shared/utils/duration_format_extension.dart';
import 'details_container.dart';

typedef TourPoint = ({DateTime time, String name, String? address});

final class PrimaryTripDetailsContainer extends StatelessWidget {
  const PrimaryTripDetailsContainer({
    required this.departure,
    required this.destination,
    required this.stopovers,
    super.key,
  });

  final TourPoint departure;
  final TourPoint destination;
  final List<TourPoint> stopovers;

  @override
  Widget build(BuildContext context) {
    final headlineMediumStyle = context.themeData.textTheme.headlineMedium;
    final titleLargeStyle = context.themeData.textTheme.titleLarge;
    final timeInRoad = destination.time.difference(departure.time);
    final subTitleTextTheme = context.themeData.textTheme.titleMedium?.copyWith(
      fontWeight: AppFonts.weightRegular,
      color: context.theme.quaternaryTextColor,
    );
    return Material(
      child: DetailsContainer(
        children: [
          Text(
            context.locale.primaryDetailsMessage,
            style: headlineMediumStyle?.copyWith(
              color: context.theme.quaternaryTextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: CommonDimensions.large),
          TripLine.vertical(
            maxSize: CommonDimensions.verticalTripLineHeight,
            firstPointTitle: departure.time.formatHmdM(context),
            firstPointSubtitle: departure.name,
            firstPointDescription: departure.address,
            secondPointTitle: destination.time.formatHmdM(context),
            secondPointSubtitle: destination.name,
            secondPointDescription: destination.address,
          ),
          const SizedBox(height: CommonDimensions.large),
          Text(
            '${context.locale.onWay}${timeInRoad.formatHm()}',
            style: titleLargeStyle?.copyWith(
              color: context.theme.fivefoldTextColor,
            ),
          ),
          const SizedBox(height: CommonDimensions.large),
          ExpansionContainer(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            sizeBetweenChildren: CommonDimensions.large,
            sizeBetweenElements: CommonDimensions.mediumLarge,
            title: Text(
              context.locale.waypoints,
              style: titleLargeStyle?.copyWith(
                color: context.theme.primaryTextColor,
              ),
            ),
            children: [
              for (final waypoint in stopovers)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${waypoint.time.formatHm()} ${waypoint.name}'),
                    const SizedBox(height: CommonDimensions.extraSmall),
                    if (waypoint.address != null &&
                        waypoint.address!.isNotEmpty)
                      Text('${waypoint.address}', style: subTitleTextTheme),
                  ],
                ),
            ],
          ),
          const SizedBox(height: CommonDimensions.medium),
        ],
      ),
    );
  }
}
