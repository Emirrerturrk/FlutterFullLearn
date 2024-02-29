import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularIndicator()],
      ),
      body: const Center(
        child: Column(
          children: [
            CenterCircularIndicator(),
            LinearProgressIndicator(
              backgroundColor: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}

class CenterCircularIndicator extends StatelessWidget {
  const CenterCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      strokeCap: StrokeCap.square,
      backgroundColor: Colors.white,
    ));
  }
}
