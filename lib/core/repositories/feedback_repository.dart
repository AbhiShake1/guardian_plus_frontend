import 'dart:async';

import '../../api/rest_client.dart';

abstract class FeedbackRepository {
  Future<bool> postFeedback(String title, String description);
}

class FeedbackRepositoryImpl extends FeedbackRepository {
  FeedbackRepositoryImpl({required RestClient api}) : _api = api;

  final RestClient _api;

  @override
  Future<bool> postFeedback(String title, String description) async {
    try {
      await _api.postFeedback(title, description);
      return true;
    } catch (e) {
      return false;
    }
  }
}
