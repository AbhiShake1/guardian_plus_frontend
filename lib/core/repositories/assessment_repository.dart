import 'dart:async';

import '../../api/rest_client.dart';

abstract class AssessmentRepository {
  Future<String?> getAssessments();
}

class AssessmentRepositoryImpl extends AssessmentRepository {
  AssessmentRepositoryImpl({required RestClient api}) : _api = api;

  final RestClient _api;

  @override
  Future<String?> getAssessments() async {
    try {
      final res = await _api.getAssessments();
      return res;
    } catch (e) {
      return '';
    }
  }
}
