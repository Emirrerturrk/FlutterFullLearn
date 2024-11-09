import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/constant/durations.dart';
import 'package:flutter_full_learn/product/constant/lottie_items.dart';
import 'package:flutter_full_learn/product/global/theme_notifier.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: DurationsItem.durationNormal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                await controller.animateTo(isLight ? 0.5 : 1);
                isLight = !isLight;

                Future.microtask(context.read<ThemeNotifier>().changeTheme());
              },
              child: Lottie.asset(LottieItems.themeChange.lottiePath,
                  repeat: false, controller: controller))
        ],
      ),
      body: const LoadingLottie(),
    );
  }
}

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({
    super.key,
  });
  final _loadingLottie =
      "https://lottie.host/69f08f86-8e83-415a-b0c9-c95b3cb9253c/zvy3hK5LrM.json";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.network(_loadingLottie),
    );
  }
}
