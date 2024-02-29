import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 150,
          ),
          Container(
            color: Colors.white,
            height: 100,
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 25,
            bottom: 100,
            child: Container(color: Colors.lightGreenAccent),
          ),
        ],
      ),
    );
  }
}
