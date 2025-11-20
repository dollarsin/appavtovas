import '../../../../shared/utils/state_readable.dart';
import '../../data/models/auth_data.dart';

abstract class AuthRepository implements StateReadable<AuthData?> {
  Future<void> updateAuthData(AuthData authData);

  Future<void> clearAuthData();
}
