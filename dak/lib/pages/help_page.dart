import 'package:flutter/material.dart';
import 'package:dak/components/iframe_html.dart';
import 'package:dak/components/menu.dart';
import 'package:dak/utils/test.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  get bgColor => null;

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
                color: Colors.white,
                child: Text(
                  "Help",
                ),
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
