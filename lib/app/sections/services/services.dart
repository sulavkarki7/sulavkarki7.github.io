import 'package:flutter/material.dart';

import 'package:pofo_web/app/sections/services/services_desktop.dart';
import 'package:pofo_web/app/sections/services/services_mobile.dart';
import 'package:pofo_web/core/res/responsive.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
