import 'package:flutter/material.dart';
import 'package:pofo_web/app/sections/contact/contact.dart';
import 'package:pofo_web/app/sections/home/home.dart';
import 'package:pofo_web/app/sections/portfolio/portfolio.dart';
import 'package:pofo_web/app/sections/services/services.dart';
import 'package:pofo_web/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
