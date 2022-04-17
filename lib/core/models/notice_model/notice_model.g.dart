// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeModel _$$_NoticeModelFromJson(Map<String, dynamic> json) =>
    _$_NoticeModel(
      title: json['title'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
    );

Map<String, dynamic> _$$_NoticeModelToJson(_$_NoticeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
