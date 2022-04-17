import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardian_plus/core/preferences.dart';
import 'package:guardian_plus/core/providers/auth_provider/repository_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../repositories/auth_repository.dart';
import 'auth_state.dart';

final authRef = StateNotifierProvider<AuthProvider, AuthState>(
  (ref) => AuthProvider(ref.watch(authRepositoryRef)),
);

@visibleForTesting
class AuthProvider extends StateNotifier<AuthState> {
  AuthProvider(this._authService) : super(const AuthState.initial());

  final AuthRepository _authService;

  Future<bool> login({required String userId, required String password}) async {
    state = const AuthState.loading();
    final loginDetails = await _authService.login(userId, password);
    if (loginDetails != null) {
      state = AuthState.success(userModel: loginDetails);
      return true;
    } else {
      state = const AuthState.failure(message: 'Failed to save login details');
      return false;
    }
  }

  Future<bool> getCurrentUser() async {
    final user = await _authService.getCurrentUser();
    if (user != null) {
      state = AuthState.success(userModel: user);
      return true;
    } else {
      state = const AuthState.failure(message: 'Failed to save login details');
      return false;
    }
  }

  Future<bool> logout() async {
    state = const AuthState.loading();
    await _authService.logout();
    await Preferences.clear();
    state = const AuthState.initial();
    return true;
  }
}
