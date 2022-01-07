//profile page
import 'package:flutter/material.dart';
import 'package:dak/components/menu.dart';
import 'package:dak/components/post_list.dart';
import '../constants.dart';

class ProfileDesktop extends StatelessWidget {
  const ProfileDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        color: bgColor,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(margin: EdgeInsets.all(18), child: Menu()),
            ),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
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
                  DefaultTabController(
                      length: 3,
                      child: Column(children: [
                        TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.blue,
                          tabs: [
                            Tab(
                              text: "Posts",
                            ),
                            Tab(
                              text: "Media",
                            ),
                            Tab(
                              text: "Stats",
                            ),
                          ],
                        ),
                        // TabBarView(
                        //   children: [
                        //     Container(
                        //         width: double.infinity, child: PostList()),
                        //     Container(
                        //         width: double.infinity, child: PostList()),
                        //     Container(width: double.infinity, child: PostList())
                        //   ],
                        // ),
                      ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
