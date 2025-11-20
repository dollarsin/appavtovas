extension DurationFormatExtension on Duration {
  String formatHm() {
    final hours = inHours;
    final minutes = inMinutes.remainder(60);

    if (hours > 0) {
      return '$hoursч ${minutes.toString().padLeft(2, '0')}мин';
    } else {
      return '$minutesмин';
    }
  }
}
