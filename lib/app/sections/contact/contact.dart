import 'package:flutter/material.dart';
import 'package:pofo_web/app/sections/contact/contact_desktop.dart';
import 'package:pofo_web/app/sections/contact/contact_mobile.dart';
import 'package:pofo_web/core/res/responsive.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
