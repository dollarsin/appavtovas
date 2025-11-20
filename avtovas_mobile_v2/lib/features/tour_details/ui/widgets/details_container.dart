import 'package:flutter/material.dart';

import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';

final class DetailsContainer extends StatelessWidget {
  const DetailsContainer({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(CommonDimensions.large),
      decoration: BoxDecoration(
        color: context.theme.containerBackgroundColor,
        border: Border.all(color: context.theme.dividerColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(CommonDimensions.large),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
