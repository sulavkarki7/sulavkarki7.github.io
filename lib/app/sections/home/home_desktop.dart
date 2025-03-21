import 'package:pofo_web/app/sections/home/widgets/animation_text.dart';
import 'package:pofo_web/app/widgets/color_change_btn.dart';
import 'package:pofo_web/changes/img.dart';
import 'package:pofo_web/changes/links.dart';
import 'package:pofo_web/changes/strings.dart';
import 'package:pofo_web/core/animations/entrance_fader.dart';
import 'package:pofo_web/core/animations/zoom_animations.dart';
import 'package:pofo_web/core/configs/other/space.dart';
import 'package:pofo_web/core/res/responsive_size.dart';
import 'package:pofo_web/core/theme/app_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SizedBox(
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h),
              width: 55.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        hellotag,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(StaticImage.hi, height: 40),
                      ),
                    ],
                  ),
                  Space.y(0.5.w)!,
                  Text(
                    yourname,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "A ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        animatedTexts: desktopList,
                      ),
                    ],
                  ),
                  Space.y(1.5.w)!,
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Text(
                      miniDescription,
                      style: TextStyle(
                        fontSize: isFontSize(context, 20),
                        fontWeight: FontWeight.w400,
                        color: theme.textColor.withOpacity(0.6),
                      ),
                    ),
                  ),
                  Space.y(3.w)!,
                  ColorChageButton(
                    text: 'download cv',
                    onTap: () {
                      html.window.open(resume, "pdf");
                    },
                  ),
                ],
              ),
            ),

            const ZoomAnimations(),
          ],
        ),
      ),
    );
  }
}
