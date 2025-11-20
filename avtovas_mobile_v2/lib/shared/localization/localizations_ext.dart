import 'package:flutter/material.dart';

import 'flutter_gen/avtovas_localizations.dart';

extension LocalizationsExt on BuildContext {
  AvtovasLocalization get locale => AvtovasLocalization.of(this);
}
