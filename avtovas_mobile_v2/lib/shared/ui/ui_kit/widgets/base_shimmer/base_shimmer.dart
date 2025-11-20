import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../app_dimensions.dart';
import '../../avtovas_theme.dart';

final class BaseShimmer extends StatelessWidget {
  const BaseShimmer({
    this.shimmerWidth,
    this.shimmerHeight,
    this.margin,
    this.baseColor,
    this.radius,
    super.key,
  });

  final double? shimmerWidth;
  final double? shimmerHeight;
  final EdgeInsets? margin;
  final Color? baseColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    const elevation = 0.0;

    return Padding(
      padding:
          margin ??
          const EdgeInsets.symmetric(
            horizontal: CommonDimensions.large,
            vertical: CommonDimensions.medium,
          ),
      child: SizedBox(
        height: shimmerHeight ?? CommonDimensions.shimmerButtonHeight,
        child: Shimmer.fromColors(
          baseColor: baseColor ?? context.theme.codeFieldColor,
          highlightColor: context.theme.whiteTextColor,
          child: SizedBox(
            width: shimmerWidth ?? MediaQuery.sizeOf(context).width,
            height: shimmerHeight ?? CommonDimensions.shimmerButtonHeight,
            child: Card(
              elevation: elevation,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(radius ?? CommonDimensions.large),
                ),
              ),
              color: context.theme.quaternaryTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
