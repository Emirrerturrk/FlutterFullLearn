import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;
  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red), label: "Red"),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.blue), label: "Blue"),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.deepPurple), label: "Purple")
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.redAccent);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blueAccent);
    } else if (value == _MyColors.purple.index) {
      changeBackgroundColor(Colors.deepPurpleAccent);
    }
  }
}

enum _MyColors { red, blue, purple }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 15,
      width: 15,
    );
  }
}
