import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pofo_web/app/utils/navbar_utils.dart';
import 'package:pofo_web/app/widgets/navbar_actions_buttons.dart';
import 'package:pofo_web/app/widgets/navbar_logo.dart';
import 'package:pofo_web/core/apis/links.dart';
import 'package:pofo_web/core/configs/other/space.dart';
import 'package:pofo_web/core/providers/drawer_provider.dart';
import 'package:pofo_web/core/res/responsive.dart';
import 'package:pofo_web/core/theme/app_theme.dart';
import 'package:pofo_web/core/theme/cubit/theme_cubit.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width / 8,
            vertical: 10,
          ),
          color: theme.navBarColor,
          child: Row(
            children: [
              const NavBarLogo(),
              Space.xm!,
              ...NavBarUtils.names.asMap().entries.map(
                (e) => NavBarActionButton(label: e.value, index: e.key),
              ),
              // Space.x!,
              InkWell(
                onTap: () {
                  context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
                },
                child: Image.network(
                  state.isDarkThemeOn ? IconUrls.darkIcon : IconUrls.lightIcon,
                  height: 30,
                  width: 30,
                  color: state.isDarkThemeOn ? Colors.black : Colors.white,
                ),
              ),
              // Space.x!,
            ],
          ),
        );
      },
    );
  }
}

class NavBarTablet extends StatelessWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.navBarColor,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isTablet(context) ? 10.w : 10,
        vertical: 10,
      ),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          Space.xm!,
          const NavBarLogo(),
          // Space.x1!,
        ],
      ),
    );
  }
}
