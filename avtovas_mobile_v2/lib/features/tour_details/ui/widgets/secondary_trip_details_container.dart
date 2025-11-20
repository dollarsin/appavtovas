import 'package:flutter/material.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import 'details_container.dart';

final class SecondaryTripDetailsContainer extends StatelessWidget {
  const SecondaryTripDetailsContainer({
    required this.carrierCompany,
    required this.transport,
    super.key,
  });
  final String carrierCompany;
  final String transport;

  @override
  Widget build(BuildContext context) {
    final fivefoldTextStyle = context.themeData.textTheme.bodyLarge?.copyWith(
      color: context.theme.fivefoldTextColor,
    );

    const separator = SizedBox(height: CommonDimensions.medium);

    return DetailsContainer(
      children: <Widget>[
        Text(carrierCompany),
        separator,
        Text(context.locale.carrier, style: fivefoldTextStyle),
        separator,
        Text(transport),
        separator,
        Text(context.locale.secondaryDetailsMessage, style: fivefoldTextStyle),
      ],
    );
  }
}
