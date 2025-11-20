import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'secure_storage.dart';

class SecureStorageImpl implements SecureStorage {
  SecureStorageImpl({required FlutterSecureStorage secureStorage})
    : _secureStorage = secureStorage;

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> clear() async => _secureStorage.deleteAll();

  @override
  Future<String?> getString(String key) => _secureStorage.read(key: key);

  @override
  Future<void> remove(String key) => _secureStorage.delete(key: key);

  @override
  Future<void> saveString(String key, String value) =>
      _secureStorage.write(key: key, value: value);
}
