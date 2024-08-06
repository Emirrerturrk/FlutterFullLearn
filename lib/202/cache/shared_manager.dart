import 'package:shared_preferences/shared_preferences.dart';

class SharedManager {
  SharedPreferences? preferences;

  SharedManager() {
    init();
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future<void> saveString(String key, String value) async {
    await preferences?.setString('counter', value);
  }

  Future<String?> getString(String key) async {
    return preferences?.getString("counter");
  }

  Future<bool> removeItem(String key) async {
    return (await preferences?.remove('counter')) ?? false;
  }
}
