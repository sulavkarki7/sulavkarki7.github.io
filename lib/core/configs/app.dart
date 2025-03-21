import 'package:flutter/material.dart';
import 'package:pofo_web/core/configs/other/app_typography.dart';
import 'package:pofo_web/core/configs/other/space.dart';

class App {
  // static bool? isLtr;
  // static bool showAds = false;

  static init(BuildContext context) {
    // UI.init(context);
    // AppDimensions.init();
    // AppTheme.init(context);
    // UIProps.init();
    Space.init();
    AppText.init();
    // isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
