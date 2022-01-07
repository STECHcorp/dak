import 'package:flutter/material.dart';
import 'package:dak/components/gallery_example.dart';
import 'package:dak/components/menu.dart';
import '../constants.dart';
import '../helper/responsive.dart';

class SettingDesktop extends StatelessWidget {
  const SettingDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(margin: EdgeInsets.all(18), child: Menu()),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: bgColor,
                child: GalleryExample(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
