import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_state.freezed.dart';

@freezed
class AssessmentState with _$AssessmentState {
  const factory AssessmentState.success({
    required String assessments,
  }) = _Success;

  const factory AssessmentState.loading() = _Loading;

  const factory AssessmentState.initial() = _Initial;

  const factory AssessmentState.verified() = _Verified;

  const factory AssessmentState.failure({required String message}) = _Failure;
}
