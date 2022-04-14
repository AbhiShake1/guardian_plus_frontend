import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final _pref = SharedPreferences.getInstance();
  static getString(String key) async => (await _pref).getString(key);
  static setString(String key, String value) async =>
      (await _pref).setString(key, value);
  static clear() async => (await _pref).clear();
}
