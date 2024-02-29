// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn_view.dart';
import 'package:flutter_full_learn/202/tab_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          bottomAppBarTheme:
              BottomAppBarTheme(shape: CircularNotchedRectangle()),
          tabBarTheme: TabBarTheme(labelColor: Colors.white),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.cyanAccent),
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 5,
          ),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.transparent,
              margin: const EdgeInsets.all(10),
              elevation: 20,
              surfaceTintColor: Colors.deepPurpleAccent),
        ),
        debugShowCheckedModeBanner: false,
        home: const ModelLearnView());
  }
}
