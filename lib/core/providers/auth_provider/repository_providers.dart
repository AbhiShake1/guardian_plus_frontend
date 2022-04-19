import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api/rest_client.dart';
import '../../repositories/auth_repository.dart';

final apiClientRef = Provider<RestClient>((ref) {
  return RestClientImpl();
});

final authRepositoryRef = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(api: ref.watch(apiClientRef));
});
