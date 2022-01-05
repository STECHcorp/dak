//   Widget menu(BuildContext context) {
//     return Column(children: <Widget>[
//       Builder(builder: (context) {
//         return const Text(
//           "Dashboard",
//           style: TextStyle(
//               color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
//         );
//       }),
//     ]);
//   }

//   Widget dashboardItem(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 100,
//       padding: const EdgeInsets.all(20.0),
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end:
//               Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
//           colors: <Color>[
//             Color(0xffee0000),
//             Color(0xffeeee00)
//           ], // red to yellow
//           tileMode: TileMode.repeated, // repeats the gradient over the canvas
//         ),
//       ),
//     );
//   }

//   Widget dashboardContent(BuildContext context) {
//     return Container(
//         color: bgColor,
//         child: Container(
//             padding: const EdgeInsets.all(20.0),
//             child: GridView.count(
//               crossAxisCount: 2,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//               children: <Widget>[
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   child: const Text("YOUR PROFIT"),
//                   color: Colors.teal[100],
//                 )
//               ],
//             )));
//   }
// }
