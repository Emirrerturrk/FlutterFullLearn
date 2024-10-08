// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                      bottom: _cardHeight / 2, child: RandomImage()),
                  Positioned(
                      height: _cardHeight,
                      width: _cardWidth,
                      bottom: 0,
                      child: _cardCustom())
                ],
              )),
          Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}

class _cardCustom extends StatelessWidget {
  const _cardCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
