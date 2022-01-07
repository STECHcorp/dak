import 'package:flutter/material.dart';
import 'package:dak/components/menu.dart';
import 'package:dak/components/middle_content.dart';
import '../constants.dart';

class SettingMobile extends StatefulWidget {
  const SettingMobile({Key? key}) : super(key: key);

  @override
  State<SettingMobile> createState() => _SettingMobileState();
}

class _SettingMobileState extends State<SettingMobile> {
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
        endDrawer: Drawer(
          child: Menu(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
