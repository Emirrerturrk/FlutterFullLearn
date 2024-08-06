import 'package:flutter/material.dart';

class DarkTheme {
  final _darkColor = _DarkColor();
  late ThemeData theme;
  DarkTheme() {
    theme = ThemeData(
        bottomAppBarTheme:
            const BottomAppBarTheme(shape: CircularNotchedRectangle()),
        tabBarTheme: const TabBarTheme(labelColor: Colors.white),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.cyanAccent),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)))),
        cardTheme: CardTheme(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.transparent,
            margin: const EdgeInsets.all(10),
            elevation: 20,
            surfaceTintColor: Colors.deepPurpleAccent),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurpleAccent));
  }
}

class _DarkColor {
  final Color _black = Colors.black;
}
