import 'dart:convert';

import 'package:http/http.dart';
import '../core/models/assessment_model/assessment_model.dart';
import '../core/models/notice_model/notice_model.dart';
import '../core/models/user_model/user_model.dart';

part 'rest_client.g.dart';

abstract class RestClient {
  //auth:
  Future<UserModel?> login({
    required String userId,
    required String password,
  });

  Future<UserModel?> currentUser();

  Future<String?> logout();

  Future<String?> updatePassword({required String password});

  //parent
  Future<String?> getChildren();

  Future<String?> getChildSubjects({required String userId});

  Future<String?> getChildProgress({required String userId});

  //assessment
  Future<List<AssessmentModel?>?> getAssessments();

  //notice
  Future<List<NoticeModel?>?> getNotices();

  //child
  Future<String?> getRoutine(String uid);

  //feedback
  Future<String?> postFeedback(String title, String description);
}
