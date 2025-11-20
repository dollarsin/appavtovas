import 'dart:async';

import 'package:flutter/material.dart';

typedef CountdownBuilder =
    Widget Function(BuildContext context, Duration? remaining);

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({
    required this.builder,
    required this.countdownTo,
    super.key,
  });

  final CountdownBuilder builder;
  final DateTime countdownTo;

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  static const _tickDuration = Duration(seconds: 1);

  ({Timer timer, Duration remaining})? _countdown;

  @override
  void initState() {
    super.initState();
    _startTimer(widget.countdownTo);
  }

  @override
  void didUpdateWidget(covariant CountdownTimer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.countdownTo != widget.countdownTo) {
      _startTimer(widget.countdownTo);
    }
  }

  @override
  Widget build(BuildContext context) {
    final countdown = _countdown;

    return widget.builder(context, countdown?.remaining);
  }

  void _startTimer(DateTime countdownTo) {
    _countdown?.timer.cancel();
    _countdown = null;

    final remaining = countdownTo.difference(DateTime.now());
    if (remaining.isNegative) {
      return;
    }

    _countdown = (
      remaining: remaining,
      timer: Timer.periodic(_tickDuration, (it) {
        final countdown = _countdown;
        if (countdown == null || it != countdown.timer) {
          it.cancel();
          return;
        }

        final newRemaining = countdown.remaining - _tickDuration;

        if (newRemaining.isNegative) {
          setState(() {
            it.cancel();
            _countdown = null;
          });
          return;
        }

        setState(() {
          _countdown = (timer: it, remaining: newRemaining);
        });
      }),
    );
  }
}
