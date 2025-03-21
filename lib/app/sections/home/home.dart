import 'package:flutter/material.dart';
import 'package:pofo_web/app/sections/home/home_desktop.dart';
import 'package:pofo_web/app/sections/home/home_mobile.dart';
import 'package:pofo_web/app/sections/home/home_tab.dart';
import 'package:pofo_web/core/res/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
