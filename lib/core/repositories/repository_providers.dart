import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:guardian_plus/core/constants/endpoints.dart';
import 'package:guardian_plus/core/repositories/assessment_repository.dart';
import 'package:guardian_plus/core/repositories/feedback_repository.dart';
import 'package:guardian_plus/core/repositories/progress_repository.dart';
import 'package:guardian_plus/core/repositories/routine_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api/rest_client.dart';
import 'auth_repository.dart';
import 'notice_repository.dart';

final apiClientRef = Provider<RestClient>((ref) {
  return RestClientImpl();
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
