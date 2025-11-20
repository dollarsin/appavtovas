import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../riverpod/async_queue_observer.dart';
import '../service/sequre_storage/secure_storage_impl.dart';
import 'app_providers.dart';
import 'service_providers.dart';

// TODO(lmepol): переосмыслить начальную загрузку данных
class AppStartupLocator {
  AppStartupLocator._();

  static final initQueue = AsyncQueueObserver(
    initTasksQueue: [
      {authRepositoryProvider},
    ],
  );

  static const flutterSecureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  static final secureStorage = SecureStorageImpl(
    secureStorage: flutterSecureStorage,
  );

  static final authRepositoryProvider = AuthRepositoryImpl(
    secureStorage: secureStorage,
  );

  static final List<Override> overrides = [
    ServiceProviders.flutterSecureStorageProvider.overrideWithValue(
      flutterSecureStorage,
    ),
    ServiceProviders.secureStorageProvider.overrideWithValue(secureStorage),
    AppProviders.authRepositoryProvider.overrideWithValue(
      authRepositoryProvider,
    ),
  ];
}
