import 'dart:convert';

import 'package:rxdart/rxdart.dart';

import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../../../shared/service/sequre_storage/secure_storage.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/auth_data.dart';

class AuthRepositoryImpl implements AuthRepository, AsyncLifecycle {
  AuthRepositoryImpl({required SecureStorage secureStorage})
    : _secureStorage = secureStorage;

  final SecureStorage _secureStorage;
  final BehaviorSubject<AuthData?> _authDataSubject =
      BehaviorSubject<AuthData?>();

  @override
  AuthData? get state => _authDataSubject.value;

  @override
  Stream<AuthData?> get stateStream => _authDataSubject.stream;

  @override
  Future<void> clearAuthData() async {
    await _secureStorage.remove('auth_data');
    _authDataSubject.add(null);
  }

  @override
  Future<void> updateAuthData(AuthData authData) async {
    await _secureStorage.saveString('auth_data', jsonEncode(authData.toJson()));
    _authDataSubject.add(authData);
  }

  @override
  Future<void> onDispose() async {}

  @override
  Future<void> onInit() async {
    final authDataRaw = await _secureStorage.getString('auth_data');
    if (authDataRaw != null) {
      final data = jsonDecode(authDataRaw) as Map<String, dynamic>;
      _authDataSubject.add(AuthData.fromJson(data));
    } else {
      _authDataSubject.add(null);
    }
  }
}
