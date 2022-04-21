import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
      {String? userId,
      String? grade,
      String? parent,
      String? address,
      String? school,
      int? phoneNo,
      bool? isStaff,
      bool? isSuperuser,
      String? imageUrl}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
