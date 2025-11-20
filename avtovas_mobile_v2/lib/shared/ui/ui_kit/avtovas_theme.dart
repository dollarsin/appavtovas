import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'avtovas_theme.freezed.dart';

@Freezed(copyWith: false)
abstract class AvtovasTheme with _$AvtovasTheme {
  const factory AvtovasTheme({
    required bool isDark,
    required Color black,
    required Color mainAppColor,
    required Color detailsBackgroundColor,
    required Color containerBackgroundColor,
    required Color backgroundOpacityColor,
    required Color dividerColor,
    required Color searchHistoryColor,
    required Color codeFieldColor,
    required Color errorColor,
    required Color transparent,
    required Color defaultIconColor,
    required Color primaryTextColor,
    required Color secondaryTextColor,
    required Color tertiaryTextColor,
    required Color quaternaryTextColor,
    required Color fivefoldTextColor,
    required Color whiteTextColor,
    required Color assistiveTextColor,
    required Color reservationExpiryColor,
    required Color paymentPendingColor,
    required Color paidPaymentColor,
    required String fontFamily,
    required Color itemIcon,
    required Color divider,
    required Color emptyPaymentsHistoryTitle,
    required Brightness statusBarBrightness,
    required Brightness navigationBarBrightness,
    required Color darkShimmerColor,
    required Color switchTrack,
    required Color passengerPlateBackground,
  }) = _AvtovasTheme;
}

final class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    required this.theme,
    required this.themeData,
    required super.child,
    super.key,
  });

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }

  final AvtovasTheme theme;
  final ThemeData themeData;

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return theme != oldWidget.theme && themeData != oldWidget.themeData;
  }
}

extension ThemeExtension on BuildContext {
  AvtovasTheme get theme => ThemeProvider.of(this).theme;

  ThemeData get themeData => ThemeProvider.of(this).themeData;
}
