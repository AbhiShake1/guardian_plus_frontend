import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_model.freezed.dart';

part 'notice_model.g.dart';

@freezed
class NoticeModel with _$NoticeModel {
  factory NoticeModel(
      {required String title,
      required String description,
      required String startDate,
      required String endDate}) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeModelFromJson(json);
}
