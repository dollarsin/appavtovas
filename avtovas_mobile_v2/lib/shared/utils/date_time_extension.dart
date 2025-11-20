import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../localization/localizations_ext.dart';

extension DateTimeExtension on DateTime {
  String yMMMdFormat([String? localeName]) =>
      DateFormat.yMMMd(localeName).format(this);

  /// formatDME - dd MM , EEE (10 авг.,ср)
  String formatDME(BuildContext context) {
    return DateFormat('dd MMM, EEE', context.locale.localeName).format(this);
  }

  /// formatDME - dd MM , EEE (10 авг.,ср)
  String formatHmdM(BuildContext context) {
    final formattedTime = DateFormat('HH:mm').format(this);
    final formattedDate = DateFormat(
      'dd MMMM',
      context.locale.localeName,
    ).format(this);
    return '$formattedTime, $formattedDate';
  }

  String formatHm() {
    return DateFormat.Hm().format(this);
  }

  // requestDateFormat - YYYY-MM-DD (2023-08-10)
  String requestDateFormat() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String ticketDateFormat() {
    return DateFormat('yyyy-MM-dd HH:mm').format(this);
  }

  String viewDateFormat() {
    return DateFormat('dd-MM-yyyy').format(this);
  }

  String dayMonth(BuildContext context) {
    return DateFormat('dd MMM', context.locale.localeName).format(this);
  }

  DateTime leaveDateOnly() {
    return DateTime(year, month, day);
  }

  bool isSame(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
