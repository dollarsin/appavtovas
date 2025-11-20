import 'package:avtovas_mobile/src/common/di/injector.dart';
import 'package:avtovas_mobile/src/core/data/data_sources/interfaces/i_prefs_data_source.dart';
import 'package:avtovas_mobile/src/core/data/data_sources/prefs_data_source.dart';
import 'package:core/avtovas_core.dart';
import 'package:core/data/data_sources/interfaces/i_payment_data_source.dart';
import 'package:core/data/data_sources/payment_data_source.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> initDataSources(FlutterSecureStorage securedStorage) async {
  final prefsInstance = await SharedPreferences.getInstance();

  i
    ..registerSingleton<IAvibusSettingsDataSource>(
      PostgresAvibusSettingsDataSource(),
    )
    ..registerSingleton<IOneCDataSource>(
      OneCDataSource(i.get()),
    )
    ..registerSingleton<ISecuredStorageDataSource>(
      SecuredStorageDataSource(securedStorage),
    )
    ..registerSingleton<IRemoteUserDataSource>(
      PostgresUserDataSource(),
    )
    ..registerSingleton<IPaymentDataSource>(
      PaymentDataSource(),
    )
    ..registerSingleton<ICacheDataSource>(
      CacheDataSource(),
    )
    ..registerSingleton<IYookassaShopsConfigDataSource>(
      PostgresYookassaShopsConfigDataSource(),
    )
    ..registerSingleton<ICallerDataSource>(
      kDebugMode ? TestCallerDataSource() : CallerDataSource(),
    )
    ..registerSingleton<INotificationsDataSource>(
      NotificationsDataSource(),
    )
    ..registerSingleton<IMailerDataSource>(
      MailerDataSource(),
    )
    ..registerSingleton<IPrefsDataSource>(
      PrefsDataSource(prefsInstance),
    );
}
