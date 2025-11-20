import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_dimensions.dart';
import '../vector_image/avtovas_vector_image.dart';

final class AvtovasVectorButton extends StatelessWidget {
  const AvtovasVectorButton({
    required this.onTap,
    required this.svgAssetPath,
    this.innerPadding,
    this.cornerRadius,
    this.iconColor,
    super.key,
  });

  final VoidCallback? onTap;
  final String svgAssetPath;
  final EdgeInsets? innerPadding;
  final double? cornerRadius;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        borderRadius: BorderRadius.all(
          Radius.circular(cornerRadius ?? CommonDimensions.extraLarge),
        ),
        child: Container(
          padding: innerPadding ?? const EdgeInsets.all(CommonDimensions.large),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(cornerRadius ?? CommonDimensions.extraLarge),
            ),
          ),
          child: AvtovasVectorImage(
            svgAssetPath: svgAssetPath,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
