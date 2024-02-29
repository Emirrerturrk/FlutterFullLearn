import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 25,
            child: Text('b' * 20),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: const BoxConstraints.expand(height: 100, width: 100),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Text("c" * 250),
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = const BoxDecoration(
    shape: BoxShape.circle,
    gradient: LinearGradient(colors: <Color>[
      Colors.deepOrangeAccent,
      Colors.deepPurpleAccent,
      Colors.cyanAccent
    ], tileMode: TileMode.clamp),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  const ProjectContainerDecoration()
      : super(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
              colors: <Color>[Colors.deepOrangeAccent, Colors.deepPurpleAccent],
              tileMode: TileMode.clamp),
          color: Colors.deepOrange,
        );
}
