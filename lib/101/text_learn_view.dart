import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key});
  final String name = "Emir";
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("İsmi : $name", style: ProjectStyles.nameStyle),
            Text(keys.welcome)
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle nameStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
