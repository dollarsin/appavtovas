import 'package:flutter/material.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../shared/ui/ui_kit/widgets/base_shimmer/base_shimmer.dart';

class TripDetailsShimmerContent extends StatelessWidget {
  const TripDetailsShimmerContent({super.key});

  @override
  Widget build(BuildContext context) {
    final headlineMedium = context.themeData.textTheme.headlineMedium?.copyWith(
      fontSize: AppFonts.sizeHeadlineLarge,
      fontWeight: FontWeight.normal,
      color: context.theme.quaternaryTextColor,
    );
    const bigShimmerHeight = 400.0;
    const smallShimmerHeight = 200.0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimensions.medium),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.large,
              ),
              children: [
                Text(context.locale.flight, style: headlineMedium),
                const SizedBox(height: AppDimensions.medium),
                const BaseShimmer(
                  margin: EdgeInsets.zero,
                  shimmerWidth: double.maxFinite,
                  shimmerHeight: bigShimmerHeight,
                ),
                Text(context.locale.carrier, style: headlineMedium),
                const SizedBox(height: AppDimensions.medium),
                const BaseShimmer(
                  margin: EdgeInsets.zero,
                  shimmerWidth: double.maxFinite,
                  shimmerHeight: smallShimmerHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
