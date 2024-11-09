import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/dark_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLightTheme = false;
  changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  ThemeData get currentTheme =>
      !isLightTheme ? DarkTheme().theme : ThemeData.dark();
}
