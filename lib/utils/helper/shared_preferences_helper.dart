import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static Future<void> setValues(String key, String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(key, value);
  }

  static Future<String> getValues(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString(key) ?? "";
    return token;
  }
}
