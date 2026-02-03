import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pofo_web/app/sections/main/widgets/_body.dart';
import 'package:pofo_web/app/sections/main/widgets/_mobile_drawer.dart';
import 'package:pofo_web/app/sections/main/widgets/_navbar_desktop.dart';
import 'package:pofo_web/app/widgets/arrow_on_top.dart';
import 'package:pofo_web/core/color/colors.dart';
import 'package:pofo_web/core/configs/app.dart';
import 'package:pofo_web/core/providers/drawer_provider.dart';
import 'package:pofo_web/core/res/responsive.dart';
import 'package:pofo_web/core/theme/cubit/theme_cubit.dart';

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Responsive(
          desktop: NavbarDesktop(),
          mobile: NavBarTablet(),
          tablet: NavBarTablet(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Stack(
            children: [
              Positioned(
                top: height * 0.2,
                left: -88,
                child: Container(
                  height: height / 3,
                  width: 166,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondaryColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: -100,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 500, sigmaY: 500),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              if (!state.isDarkThemeOn)
                Align(
                  alignment: Alignment.center,
                  // BG01.png
                  child: Image.asset(
                    'assets/imgs/BG1.png',
                    opacity: const AlwaysStoppedAnimation<double>(0.2),
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                )
              else
                (Align(
                  alignment: Alignment.center,
                  // BG01.png
                  child: Image.asset(
                    'assets/imgs/BG01.png',
                    opacity: const AlwaysStoppedAnimation<double>(0.2),
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                )),
              Body(),
              const ArrowOnTop(),
            ],
          );
        },
      ),
    );
  }
}
