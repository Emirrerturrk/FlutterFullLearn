import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ProjectCards(
              child: Text(
                "1st Card",
                style: cardTextStyles(),
              ),
            ),
            ProjectCards(
              child: Text(
                "2nd Card",
                style: cardTextStyles(),
              ),
            ),
            ProjectCards(
              child: Text(
                "3rd Card",
                style: cardTextStyles(),
              ),
            ),
            ProjectCards(
              child: Text(
                "4th Card",
                style: cardTextStyles(),
              ),
            ),
            ProjectCards(
              child: Text(
                "5th Card",
                style: cardTextStyles(),
              ),
            ),
            ProjectCards(
              child: Text(
                "6th Card",
                style: cardTextStyles(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle cardTextStyles() =>
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 25);
}

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        width: 200,
        child: Center(child: child),
      ),
    );
  }
}
