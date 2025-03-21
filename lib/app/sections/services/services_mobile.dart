import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pofo_web/app/sections/services/widgets/service_card.dart';
import 'package:pofo_web/app/utils/services_utils.dart';
import 'package:pofo_web/app/widgets/custom_text_heading.dart';
import 'package:pofo_web/changes/strings.dart';
import 'package:pofo_web/core/configs/other/space.dart';

import 'package:sizer/sizer.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        const CustomSectionHeading(text: '\nWhat I can do?'),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: servicesSubHeading),
        ),
        Space.y(5.w)!,
        CarouselSlider.builder(
          itemCount: servicesUtils.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int i) => Padding(
                padding: EdgeInsets.symmetric(vertical: 0.5.w),
                child: ServiceCard(service: servicesUtils[i]),
              ),
          options: CarouselOptions(
            viewportFraction: 0.6,
            height: 300,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
