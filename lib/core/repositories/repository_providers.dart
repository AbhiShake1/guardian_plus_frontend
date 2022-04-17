import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:guardian_plus/core/constants/endpoints.dart';
import 'package:guardian_plus/core/repositories/assessment_repository.dart';
import 'package:guardian_plus/core/repositories/feedback_repository.dart';
import 'package:guardian_plus/core/repositories/progress_repository.dart';
import 'package:guardian_plus/core/repositories/routine_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../api/rest_client.dart';
import 'auth_repository.dart';
import 'notice_repository.dart';

const _storage = FlutterSecureStorage();

Dio dioInstance(String baseUrl) => Dio()
  ..options.baseUrl = baseUrl
// ..options.followRedirects = false
  ..options.validateStatus = ((status) => status! < 401)
  ..interceptors.addAll([
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
    ),
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['authorization'] =
            'Bearer ${await getAccessToken(_storage)}';
        return handler.next(options);
      },
    ),
  ]);

final apiClientRef = Provider<RestClient>((ref) {
  return RestClient(dioInstance(kbaseUrl));
});

final authRepositoryRef = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(api: ref.watch(apiClientRef));
});

final assessmentRepositoryRef = Provider<AssessmentRepository>((ref) {
  return AssessmentRepositoryImpl(api: ref.watch(apiClientRef));
});

final routineRepositoryRef = Provider<RoutineRepository>((ref) {
  return RoutineRepositoryImpl(api: ref.watch(apiClientRef));
});

final noticeRepositoryRef = Provider<NoticeRepository>((ref) {
  return NoticeRepositoryImpl(api: ref.watch(apiClientRef));
});

final progressRepositoryRef = Provider<ProgressRepository>((ref) {
  return ProgressRepositoryImpl(api: ref.watch(apiClientRef));
});

final feedbackRepositoryRef = Provider<FeedbackRepository>((ref) {
  return FeedbackRepositoryImpl(api: ref.watch(apiClientRef));
});

Future<String?> getAccessToken(FlutterSecureStorage _storage) async {
  String? token;
  final value = await _storage.read(key: 'userModel');
  if (value != null) {
    final result = jsonDecode(value) as Map<String, dynamic>;
    token = result['access_token'].toString();
  }
  return token;
}
