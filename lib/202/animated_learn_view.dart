import 'package:flutter/material.dart';

class AnimatedLeranView extends StatefulWidget {
  const AnimatedLeranView({super.key});

  @override
  State<AnimatedLeranView> createState() => _AnimatedLeranViewState();
}

class _AnimatedLeranViewState extends State<AnimatedLeranView>
    with TickerProviderStateMixin {
  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  void _changeVisible(params) {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity(params) {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _placeHolderWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _changeVisible(context);
            controller.animateTo(_isVisible ? 1 : 0);
          },
        ),
        body: Column(
          children: [
            ListTile(
              title: AnimatedOpacity(
                  duration: _DurationItems.durationLow,
                  opacity: _isOpacity ? 1 : 0,
                  child: const Text("data")),
              trailing: IconButton(
                  onPressed: () {
                    _changeOpacity(context);
                  },
                  icon: const Icon(Icons.access_time_rounded)),
            ),
            AnimatedDefaultTextStyle(
                style: (_isVisible
                        ? context.textTheme().headlineMedium
                        : context.textTheme().labelLarge) ??
                    TextStyle(),
                duration: _DurationItems.durationLow,
                child: const Text("data")),
            AnimatedIcon(icon: AnimatedIcons.home_menu, progress: controller),
            AnimatedContainer(
              duration: _DurationItems.durationLow,
              height: (MediaQuery.of(context).size.width) * 0.2,
              width: (MediaQuery.of(context).size.height) * 0.2,
              color: Colors.deepPurpleAccent,
            )
          ],
        ));
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: _DurationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
  static const durationMid = Duration(seconds: 2);
  static const durationHigh = Duration(seconds: 3);
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}
