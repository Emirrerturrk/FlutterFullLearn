import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
                child: CustomFoodButton(
              onPressed: () {},
            )),
          )),
        ],
      ),
    );
  }
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtiliy, _PaddingUtility {
  CustomFoodButton({super.key, required this.onPressed});
  final String title = "Food";
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: normalPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: whiteColor),
          ),
        ));
  }
}

mixin class _ColorsUtiliy {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

mixin class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16);
}
