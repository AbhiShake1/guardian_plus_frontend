import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardian_plus/core/providers/auth_provider/repository_providers.dart';
import 'package:guardian_plus/core/repositories/assessment_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../repositories/auth_repository.dart';
import '../auth_provider/auth_state.dart';

final assessmentRef = StateNotifierProvider<AssessmentProvider, AssessmentState>(
  (ref) => AssessmentProvider(ref.watch(authRepositoryRef)),
);

@visibleForTesting
class AssessmentProvider extends StateNotifier<AssessmentState> {
  AssessmentProvider(this._authService) : super(const AssessmentState.initial());

  final AuthRepository _authService;

  Future<bool> getAssessments() async {
    final assessments = await _authService.getAssessments();
    if (assessments != null) {
      state = AssessmentState.success(assessments: assessments);
      return true;
    } else {
      state = const AssessmentState.failure(message: 'Deadline crossed');
      return false;
    }
  }
}
