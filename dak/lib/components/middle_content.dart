import 'package:flutter/material.dart';
import 'package:dak/components/balance.dart';
import 'package:dak/components/download.dart';
import 'package:dak/components/help.dart';
import 'package:dak/components/last_pay.dart';
import 'package:dak/components/gradient_button.dart';
import 'package:dak/components/send.dart';
import 'package:dak/helper/responsive.dart';

class MiddleContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      // padding: const EdgeInsets.only(bottom: 8.0, right: 18.0),
      padding: const EdgeInsets.only(bottom: 5.0, right: 5.0),

      child: Container(
          child: Scrollbar(
        isAlwaysShown: false,
        thickness: 0.1,
        hoverThickness: 0.1,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxHeight: screenHeight * 0.1),
                  child: Container(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 8,
                          child: Container(
                            child: Row(children: [
                              MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.stacked_line_chart,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                hoverColor: Colors.blue,
                              ),
                              Container(
                                constraints: screenWidth < 650
                                    ? BoxConstraints(
                                        maxWidth: screenWidth * 0.3)
                                    : BoxConstraints(maxWidth: screenWidth),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Master Account',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                    Text(
                                      'ABCVCVVCVCVC23123V1',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.copy,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.1,
                                      ),
                                    ],
                                  ),
                                ),
                                hoverColor: Colors.blue,
                              ),
                            ]),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            child: RaisedGradientButton(
                                width: screenWidth < 650
                                    ? screenWidth * 0.15
                                    : 200,
                                key: Key('button'),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.qr_code,
                                      color: Colors.white,
                                    ),
                                    screenWidth >= 650
                                        ? Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Generate QR',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          )
                                        : (Text(
                                            '',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                  ],
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
                      ],
                    ),
                  ),
                ),
                Container(
                    constraints: screenWidth >= 650
                        ? BoxConstraints(maxHeight: screenHeight * 0.5)
                        : BoxConstraints(maxHeight: screenHeight),
                    child: Responsive(
                      key: Key('balance send'),
                      mobile: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Balance(),
                          ),
                          Flexible(
                            flex: 1,
                            child: Send(),
                          ),
                        ],
                      ),
                      tablet: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Balance(),
                          ),
                          Flexible(
                            flex: 1,
                            child: Send(),
                          ),
                        ],
                      ),
                      desktop: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Balance(),
                          ),
                          Flexible(
                            flex: 1,
                            child: Send(),
                          ),
                        ],
                      ),
                    )),
                Container(
                    constraints: screenWidth >= 650
                        ? BoxConstraints(maxHeight: screenHeight * 0.4)
                        : BoxConstraints(maxHeight: screenHeight),
                    child: Responsive(
                      key: Key('help pay download'),
                      mobile: Column(children: [
                        Flexible(
                          flex: 1,
                          child: Column(children: [
                            Flexible(child: Help()),
                            Flexible(
                                child: Row(children: [
                              Flexible(
                                child: LastPay(),
                              ),
                              Flexible(
                                child: LastPay(),
                              ),
                            ]))
                          ]),
                        ),
                        Flexible(flex: 1, child: Download()),
                      ]),
                      tablet: Row(children: [
                        Flexible(
                          flex: 1,
                          child: Column(children: [
                            Flexible(child: Help()),
                            Flexible(
                                child: Row(children: [
                              Flexible(
                                child: LastPay(),
                              ),
                              Flexible(
                                child: LastPay(),
                              ),
                            ]))
                          ]),
                        ),
                        Flexible(flex: 1, child: Download()),
                      ]),
                      desktop: Row(children: [
                        Flexible(
                          flex: 1,
                          child: Column(children: [
                            Flexible(child: Help()),
                            Flexible(
                                child: Row(children: [
                              Flexible(
                                child: LastPay(),
                              ),
                              Flexible(
                                child: LastPay(),
                              ),
                            ]))
                          ]),
                        ),
                        Flexible(flex: 1, child: Download()),
                      ]),
                    )),
              ],
            );
          },
          itemCount: 1,
        ),
      )),
    );
  }
}
