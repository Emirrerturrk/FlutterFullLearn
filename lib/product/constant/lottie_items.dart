enum LottieItems { themeChange }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.themeChange:
        return "lottie_theme_chance";
    }
  }

  String get lottiePath => "assets/lottie/${_path()}.json";
}
