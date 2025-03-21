import 'package:flutter/material.dart';
import 'package:pofo_web/changes/links.dart';
import 'package:pofo_web/core/util/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Developed by "),
            InkWell(
              onTap: () => openURL(gitHub),
              child: Row(
                //  MainAxisSize:MainAxisSize.min,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    // 💙
                    " Sulav Karki ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite_border_rounded, size: 18),
                ],
              ),
            ),
            const Text(" © 2025"),
          ],
        ),
      ),
    );
  }
}
