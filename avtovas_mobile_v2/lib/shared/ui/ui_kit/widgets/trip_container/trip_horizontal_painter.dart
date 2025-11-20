import 'package:flutter/material.dart';

class TripHorizontalPainter extends CustomPainter {
  const TripHorizontalPainter({
    required this.lineHeader,
    required this.textStyle,
    required this.lineColor,
  });

  final String lineHeader;
  final TextStyle? textStyle;
  final Color lineColor;

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = lineColor
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;
    final textPainter = TextPainter(
      text: TextSpan(text: lineHeader, style: textStyle),
      textDirection: TextDirection.ltr,
    )..layout();
    final center = Offset(size.width / 2, size.height / 2);
    const radius = 8.0;
    canvas
      ..drawCircle(Offset(0 + radius * 2, center.dy), radius, paint)
      ..drawCircle(Offset(size.width - radius * 2, center.dy), radius, paint)
      ..drawLine(
        Offset(radius * 3, center.dy),
        Offset(size.width - radius * 3, center.dy),
        paint,
      );
    textPainter.paint(
      canvas,
      center - Offset(textPainter.width / 2, radius + textPainter.height),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
