import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pofo_web/app/sections/home/widgets/animation_text.dart';
import 'package:pofo_web/app/widgets/color_change_btn.dart';
import 'package:pofo_web/changes/img.dart';
import 'package:pofo_web/changes/links.dart';
import 'package:pofo_web/changes/strings.dart';
import 'package:pofo_web/core/animations/entrance_fader.dart';
import 'package:pofo_web/core/animations/zoom_animations.dart';
import 'package:pofo_web/core/animations/zoom_animations_mobile.dart';
import 'package:pofo_web/core/configs/other/app_typography.dart';
import 'package:pofo_web/core/configs/other/space.dart';
import 'package:pofo_web/core/res/responsive_size.dart';

import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  // get mobileList => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                hellotag,
                style: AppText.h3!.copyWith(fontSize: isFontSize(context, 16)),
              ),
              // Space.x!,
              Image.asset(StaticImage.hi, height: 16),
            ],
          ),
          // Space.y(1.w)!,
          Text(
            yourname,
            style: TextStyle(
              fontSize: isFontSize(context, 28),
              fontWeight: FontWeight.w600,
            ),
          ),
          Space.y(1.w)!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "A ",
                style: TextStyle(
                  fontSize: isFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: mobileList,
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ],
          ),

          Space.y(2.w)!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorChageButton(
                text: 'download cv',
                onTap: () {
                  html.window.open(resume, "pdf");
                },
              ),

              const EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: ZoomAnimationsMobile(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
