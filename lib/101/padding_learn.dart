import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          children: [
            ContainersWithPadding(),
            ContainersWithPadding(),
            ContainersWithPadding(),
            ContainersWithPadding(),
            ContainersWithPadding(),
            ContainersWithPadding(),
          ],
        ),
      ),
    );
  }
}

class ContainersWithPadding extends StatelessWidget {
  const ContainersWithPadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: ProjectPadding.pagePaddingVertical,
      child: _ContainerForPadding(),
    );
  }
}

class _ContainerForPadding extends StatelessWidget {
  const _ContainerForPadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.cyanAccent,
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 12);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 100);
}
