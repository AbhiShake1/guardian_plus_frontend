import 'dart:async';

import '../../api/rest_client.dart';

abstract class ProgressRepository {
  Future<String?> getProgress(String userId);
}

class ProgressRepositoryImpl extends ProgressRepository {
  ProgressRepositoryImpl({required RestClient api}) : _api = api;

  final RestClient _api;

  @override
  Future<String?> getProgress(String userId) async {
    try {
      final res = await _api.getChildProgress(userId: userId);
      return res;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
