import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/user_model/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.success({
    required UserModel? userModel,
  }) = _Success;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.initial() = _Initial;

  const factory AuthState.verified() = _Verified;

  const factory AuthState.failure({required String message}) = _Failure;
}
