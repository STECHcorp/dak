// import 'package:flutter/material.dart';
// import 'package:flutter_application/components/menu.dart';

// import '../constants.dart';

// class MyTabbedPage extends StatefulWidget {
//   @override
//   _MyTabbedPageState createState() => new _MyTabbedPageState();
// }

// class _MyTabbedPageState extends State<MyTabbedPage>
//     with SingleTickerProviderStateMixin {
//   final List<Tab> myTabs = <Tab>[
//     new Tab(text: 'Posts'),
//     new Tab(text: 'Media'),
//     new Tab(text: 'Stat'),
//   ];

//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = new TabController(vsync: this, length: myTabs.length);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new TabBarView(
//         controller: _tabController,
//         children: myTabs.map((Tab tab) {
//           return new Center(
//             child: Container(
//               color: bgColor,
//               width: double.infinity,
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     flex: 10,
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         CircleAvatar(
//                           radius: 80.0,
//                           backgroundImage: AssetImage('images/avatar.png'),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "Account Name",
//                           style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         TabBar(
//                           controller: _tabController,
//                           tabs: myTabs,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         onPressed: () => _tabController
//             .animateTo((_tabController.index + 1) % 2), // Switch tabs
//         child: new Icon(Icons.swap_horiz),
//       ),
//     );
//   }
// }
