// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['userId'] as String?,
      grade: json['grade'] as String?,
      parent: json['parent'] as String?,
      address: json['address'] as String?,
      school: json['school'] as String?,
      phoneNo: json['phoneNo'] as int?,
      isStaff: json['isStaff'] as bool?,
      isSuperuser: json['isSuperuser'] as bool?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'grade': instance.grade,
      'parent': instance.parent,
      'address': instance.address,
      'school': instance.school,
      'phoneNo': instance.phoneNo,
      'isStaff': instance.isStaff,
      'isSuperuser': instance.isSuperuser,
    };
