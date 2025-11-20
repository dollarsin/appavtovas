import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../service/sequre_storage/secure_storage.dart';
import '../service/sequre_storage/secure_storage_impl.dart';

class ServiceProviders {
  const ServiceProviders._();

  static final flutterSecureStorageProvider = Provider<FlutterSecureStorage>((
    ref,
  ) {
    return const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
    );
  });

  static final secureStorageProvider = Provider<SecureStorage>((ref) {
    return SecureStorageImpl(
      secureStorage: ref.watch(flutterSecureStorageProvider),
    );
  });
}
