import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSize iconSize = IconSize();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icons"),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.games,
                size: IconSize().iconSmall,
                color: IconColors().lightGreenAccent),
            Icon(
              Icons.games,
              size: IconSize().iconBig,
              color: IconColors().lightBlueAccent,
            ),
            Icon(Icons.games,
                size: IconSize().iconBig,
                color: Theme.of(context).colorScheme.error),
          ],
        ),
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 40;
  final double iconBig = 200;
}

class IconColors {
  final Color lightGreenAccent = Colors.lightGreenAccent;
  final Color lightBlueAccent = Colors.lightBlueAccent;
}
