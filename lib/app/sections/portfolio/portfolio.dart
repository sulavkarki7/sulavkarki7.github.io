import 'package:flutter/material.dart';
import 'package:pofo_web/app/sections/portfolio/portfolio_desktop.dart';
import 'package:pofo_web/app/sections/portfolio/portfolio_mobile.dart';
import 'package:pofo_web/core/res/responsive.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
