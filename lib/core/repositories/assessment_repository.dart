import 'dart:async';

import 'package:guardian_plus/core/models/assessment_model/assessment_model.dart';

import '../../api/rest_client.dart';

abstract class AssessmentRepository {
  Future<List<AssessmentModel?>?> getAssessments();
}

class AssessmentRepositoryImpl extends AssessmentRepository {
  AssessmentRepositoryImpl({required RestClient api}) : _api = api;

  final RestClient _api;

  @override
  Future<List<AssessmentModel?>?> getAssessments() async {
    try {
      final res = await _api.getAssessments();
      return res;
    } catch (e) {
      return null;
    }
  }
}
