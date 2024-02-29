import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(flex: 6, child: Container(color: Colors.cyanAccent)),
                Expanded(child: Container(color: Colors.pinkAccent)),
                Expanded(child: Container(color: Colors.deepPurpleAccent)),
                Expanded(child: Container(color: Colors.limeAccent)),
              ],
            ),
          ),
          const Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: FlutterLogo()),
                  Expanded(child: FlutterLogo()),
                  Expanded(child: FlutterLogo()),
                  Expanded(child: FlutterLogo()),
                ],
              ))
        ],
      ),
    );
  }
}
