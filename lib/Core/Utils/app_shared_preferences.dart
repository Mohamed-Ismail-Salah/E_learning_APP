import 'package:shared_preferences/shared_preferences.dart';

class TokenStorage {
  static const String _tokenKey = 'token';

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }


  Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_tokenKey);
  }
}
class  PermissionsStorage {
  static const String _permissionsKey = 'permissions';

  Future<void> savePermissionsKey(String  permissions) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_permissionsKey, permissions);
  }

  Future<String?> getPermissionsKey() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_permissionsKey);
  }


  Future<void> removePermissionsKey() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_permissionsKey);
  }
}