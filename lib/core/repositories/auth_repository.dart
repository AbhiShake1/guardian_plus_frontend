import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../api/rest_client.dart';
import '../models/user_model/user_model.dart';

abstract class AuthRepository {
  Future<UserModel?> login(String userId, String password);

  Future<bool> saveLoginDetails(UserModel userModel);

  Future<String?> logout();

  Future<UserModel?> getCurrentUser();
}

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required RestClient api}) : _api = api;

  final _storage = const FlutterSecureStorage();
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
  Future<bool> saveLoginDetails(UserModel userModel) async {
    try {
      // Write value
      await _storage.write(key: 'userModel', value: jsonEncode(userModel));
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
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
