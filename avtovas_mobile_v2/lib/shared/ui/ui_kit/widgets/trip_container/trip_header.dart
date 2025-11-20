import 'package:flutter/material.dart';

import '../../../../localization/localizations_ext.dart';
import '../../app_assets.dart';
import '../../app_dimensions.dart';
import '../../avtovas_platform.dart';
import '../../avtovas_theme.dart';
import '../vector_image/avtovas_vector_image.dart';

final class TripHeader extends StatelessWidget {
  const TripHeader({
    required this.tripNumber,
    required this.tripRoot,
    super.key,
  });
  final String tripNumber;
  final String tripRoot;

  @override
  Widget build(BuildContext context) {
    final textTitleSmall = context.themeData.textTheme.titleSmall;

    return Row(
      children: [
        const AvtovasVectorImage(
          svgAssetPath: AppAssets.microBusIcon,
          width: CommonDimensions.extraLarge,
          height: CommonDimensions.extraLarge,
        ),
        const SizedBox(width: CommonDimensions.large),
        if (AvtovasPlatform.isWeb) ...[
          Text(context.locale.tripNumber(tripNumber), style: textTitleSmall),
          const SizedBox(width: CommonDimensions.medium),
          const _HeaderPoint(),
          const SizedBox(width: CommonDimensions.medium),
          Flexible(child: Text(tripRoot, style: textTitleSmall)),
        ] else
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.locale.tripNumber(tripNumber),
                  style: textTitleSmall,
                ),
                Row(
                  children: [
                    const _HeaderPoint(),
                    const SizedBox(width: CommonDimensions.small),
                    Flexible(child: Text(tripRoot, style: textTitleSmall)),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}

final class _HeaderPoint extends StatelessWidget {
  const _HeaderPoint();

  @override
  Widget build(BuildContext context) {
    final mainAppColor = context.theme.mainAppColor;

    return Container(
      width: CommonDimensions.large - CommonDimensions.small,
      height: CommonDimensions.large - CommonDimensions.small,
      padding: const EdgeInsets.all(CommonDimensions.pointPadding),
      decoration: BoxDecoration(
        border: Border.all(color: mainAppColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(CommonDimensions.extraLarge),
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: mainAppColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(CommonDimensions.extraLarge),
          ),
        ),
      ),
    );
  }
}
