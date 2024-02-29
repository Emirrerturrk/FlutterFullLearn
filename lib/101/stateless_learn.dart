import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleTextWidget(
              text: "1",
            ),
            _emptyBox(),
            const TitleTextWidget(
              text: "2",
            ),
            _emptyBox(),
            const TitleTextWidget(
              text: "3",
            ),
            _emptyBox(),
            const TitleTextWidget(
              text: "4",
            ),
            _emptyBox(),
            const TitleTextWidget(
              text: "5",
            ),
            _emptyBox(),
            const TitleTextWidget(
              text: "6",
            ),
            _emptyBox(),
            const _CustomContainer(),
          ],
        ),
      ),
    );
  }

  SizedBox _emptyBox() {
    return const SizedBox(
      height: 25,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.cyanAccent),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
