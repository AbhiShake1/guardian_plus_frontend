// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentModel _$$_AssessmentModelFromJson(Map<String, dynamic> json) =>
    _$_AssessmentModel(
      id: json['id'] as int?,
      subject: json['subject'] as String?,
      task: json['task'] as String?,
      deadline: json['deadline'] as String?,
    );

Map<String, dynamic> _$$_AssessmentModelToJson(_$_AssessmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'task': instance.task,
      'deadline': instance.deadline,
    };
