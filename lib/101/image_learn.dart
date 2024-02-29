import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              width: 300,
              height: 400,
              child: Image.asset(
                "assets/aot.png",
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
