import 'package:flutter/material.dart';
import '../constants.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);
  final fontSize = 15.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: subBgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Help'.toUpperCase(),
                        style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                  ],
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 170.0,
                        child: Text('Why is my crypto send delayed?',
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      MaterialButton(
                        color: lightBgColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) =>
                          //           HelpPage(title: 'Why is my crypto send delayed?')),
                          // );
                        },
                        child: Text("Get Know",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                )),
              ]),
        ),
      ),
    );
  }
}
