import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guardian_plus/core/models/assessment_model/assessment_model.dart';

part 'assessment_state.freezed.dart';

@freezed
class AssessmentState with _$AssessmentState {
  const factory AssessmentState.success({
    required AssessmentModel assessments,
  }) = _Success;

  const factory AssessmentState.loading() = _Loading;

  const factory AssessmentState.initial() = _Initial;

  const factory AssessmentState.verified() = _Verified;

  const factory AssessmentState.failure({required String message}) = _Failure;
}
