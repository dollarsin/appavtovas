import 'package:flutter/material.dart';

import '../../../../shared/ui/ui_kit/app_dimensions.dart';

final class TicketingContainer extends StatelessWidget {
  const TicketingContainer({
    required this.child,
    this.backgroundColor,
    this.margin,
    this.padding,
    super.key,
  });

  final Widget child;
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor ?? const Color(0xFFF8F8F8),
          borderRadius: const BorderRadius.all(
            Radius.circular(CommonDimensions.large),
          ),
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(CommonDimensions.large),
          child: child,
        ),
      ),
    );
  }
}
