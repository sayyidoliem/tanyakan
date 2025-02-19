import 'package:shared_preferences/shared_preferences.dart';

class UserStorage {
  static Future<void> saveUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('user_name', name);
  }

  static Future<String?> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_name');
  }

  static Future<void> saveUserAvatar(String avatar) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('user_avatar', avatar);
  }

  static Future<String?> getUserAvatar() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_avatar');
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}

class SettingsStorage {
  static Future<void> saveSupabaseToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('supabase_token', token);
  }

  static Future<String?> getSupabaseToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('supabase_token');
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}