import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/domain/repositories/auth_repository.dart';
import '../navigation/navigation_manager.dart';

class AppProviders {
  const AppProviders._();

  static final authRepositoryProvider = Provider<AuthRepository>(
    (ref) => throw UnimplementedError(),
  );

  static final appNavigationManagerProvider = Provider<NavigationManager>(
    (ref) => NavigationManagerImpl(
      authRepository: ref.watch(authRepositoryProvider),
    ),
  );
}
