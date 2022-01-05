import 'package:flutter/material.dart';
import 'package:dak/components/gradient_button.dart';
import '../constants.dart';

class Download extends StatelessWidget {
  const Download({Key? key}) : super(key: key);
  final fontSize = 15.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/download.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: subBgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    child: RaisedGradientButton(
                        width: 40.0,
                        height: 40.0,
                        key: Key('button'),
                        child: Icon(
                          Icons.phone_in_talk_outlined,
                          color: Colors.white,
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.green,
                            Colors.blue,
                            Colors.purple,
                          ],
                        ),
                        onPressed: () {}),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coming soon'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'The easiest wallet app',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: MaterialButton(
                          padding: EdgeInsets.only(
                              top: 12.0, left: 20.0, right: 20.0, bottom: 12.0),
                          color: lightBgColor,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.get_app_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Download on the',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'App Store',
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          hoverColor: Colors.blue,
                        ),
                      ),
                      Container(
                        child: MaterialButton(
                          padding: EdgeInsets.only(
                              top: 12.0, left: 20.0, right: 20.0, bottom: 12.0),
                          color: lightBgColor,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.get_app_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Get it on',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'Google Play',
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          hoverColor: Colors.blue,
                        ),
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
