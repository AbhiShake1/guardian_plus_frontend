import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_model.freezed.dart';

part 'assessment_model.g.dart';

@freezed
class AssessmentModel with _$AssessmentModel {
  factory AssessmentModel(
      {int? id, String? subject, String? task, String? deadline}) = _AssessmentModel;

  factory AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentModelFromJson(json);
}
