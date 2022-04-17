import 'package:guardian_plus/core/preferences.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final prefRef = FutureProvider.family<dynamic, dynamic>(
    (_, key) async => await Preferences.getString(key));
