import 'dart:async';

import '../../api/rest_client.dart';
import '../models/user_model/user_model.dart';

abstract class AuthRepository {
  Future<UserModel?> login(String userId, String password);

  Future<String?> logout();

  Future<UserModel?> getCurrentUser();
}

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required RestClient api}) : _api = api;

  final RestClient _api;

  @override
  Future<UserModel?> login(String userId, String password) async {
    try {
      final res = await _api.login(userId: userId, password: password);
      return res;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<String?> logout() async {
    return await _api.logout();
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      final res = await _api.currentUser();
      return res;
    } catch (e) {
      return null;
    }
  }
}
