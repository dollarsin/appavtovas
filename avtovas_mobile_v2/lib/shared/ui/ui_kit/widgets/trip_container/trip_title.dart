import 'package:flutter/material.dart';

import '../../avtovas_theme.dart';

final class TripTitle extends StatelessWidget {
  const TripTitle({
    required this.departurePlace,
    required this.arrivalPlace,
    super.key,
  });

  final String departurePlace;
  final String arrivalPlace;

  @override
  Widget build(BuildContext context) {
    final textHeadlineLarge = context.themeData.textTheme.headlineLarge
        ?.copyWith(
          color: context.theme.mainAppColor,
          fontWeight: FontWeight.bold,
        );

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '$departurePlace - ', style: textHeadlineLarge),
          TextSpan(text: arrivalPlace, style: textHeadlineLarge),
        ],
      ),
    );
  }
}
