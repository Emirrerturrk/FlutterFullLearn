import 'package:flutter/material.dart';

class WidghetSizeEnumLearnView extends StatefulWidget {
  const WidghetSizeEnumLearnView({super.key});

  @override
  State<WidghetSizeEnumLearnView> createState() =>
      _WidghetSizeEnumLearnViewState();
}

class _WidghetSizeEnumLearnViewState extends State<WidghetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 50;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}
