import 'package:flutter/material.dart';

import '../../../../localization/localizations_ext.dart';
import '../../avtovas_theme.dart';

final class CollapsedTripInformation extends StatelessWidget {
  const CollapsedTripInformation({
    required this.ticketPrice,
    required this.departureTime,
    required this.departureDate,
    super.key,
  });

  final String ticketPrice;
  final String departureTime;
  final String departureDate;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$departureDate ${context.locale.inside} $departureTime, $ticketPrice',
      style: context.themeData.textTheme.bodyLarge,
    );
  }
}
