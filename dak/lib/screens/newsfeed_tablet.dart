import 'package:flutter/material.dart';
import 'package:dak/components/menu.dart';
import 'package:dak/components/newsfeed_content.dart';
import 'package:dak/components/newsfeed_side.dart';

import '../constants.dart';

class NewsfeedTablet extends StatefulWidget {
  const NewsfeedTablet({Key? key}) : super(key: key);

  @override
  State<NewsfeedTablet> createState() => _NewsfeedTabletState();
}

class _NewsfeedTabletState extends State<NewsfeedTablet> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text("Dak"),
          backgroundColor: bgColor,
        ),
        drawer: Drawer(
          child: Menu(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: NewsfeedContent(),
              ),
              Expanded(
                flex: 3,
                child: NewsfeedSide(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
