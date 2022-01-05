//profile page
import 'package:flutter/material.dart';
import 'package:dak/components/menu.dart';
import 'package:dak/components/post_list.dart';
import '../constants.dart';

class ProfileMobile extends StatelessWidget {
  const ProfileMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text("Profile"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      endDrawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        color: bgColor,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Account Name",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
