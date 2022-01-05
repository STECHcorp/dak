import 'package:flutter/material.dart';
import 'package:dak/components/gallery_example.dart';
import 'package:dak/components/menu.dart';
import 'package:photo_view/photo_view.dart';
import '../constants.dart';
import '../helper/responsive.dart';
import '../screens/desktop.dart';
import '../screens/mobile.dart';
import '../screens/tablet.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

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

    // child: Responsive(
    //   key: const Key('Setting'),
    //   mobile: Mobile(),
    //   tablet: Tablet(),
    //   desktop: Desktop(),
    // ),
  }
}
