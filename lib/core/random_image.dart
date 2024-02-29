import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.height = 250});
  final imageUrl = "https://picsum.photos/200/300";
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, height: 250, fit: BoxFit.cover);
  }
}
