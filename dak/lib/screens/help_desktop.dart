import 'package:flutter/material.dart';
import 'package:dak/components/iframe_html.dart';
import 'package:dak/components/menu.dart';
import 'package:dak/utils/test.dart';

class HelpDesktop extends StatelessWidget {
  const HelpDesktop({Key? key}) : super(key: key);

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
  }
}
