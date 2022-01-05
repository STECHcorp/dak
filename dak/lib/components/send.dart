import 'package:flutter/material.dart';
import 'package:dak/components/gradient_button.dart';
import '../constants.dart';

class Send extends StatelessWidget {
  const Send({Key? key}) : super(key: key);
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
          padding: const EdgeInsets.all(25.0),
          child: Form(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: bgColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: lightBgColor,
                                ),
                                child: Text('Send',
                                    style: TextStyle(
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: bgColor,
                                ),
                                child: Text('Receive',
                                    style: TextStyle(
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    child: Container(
                      padding: EdgeInsets.all(6.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: lightBgColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('ABCVCVVCVCVC23123V1',
                              style: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.qr_code_scanner,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: lightBgColor,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Dak Amount',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                  )),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, right: 20.0),
                          child: Row(
                            children: [
                              Text(
                                'Clear all',
                                style: TextStyle(
                                  fontSize: fontSize,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RaisedGradientButton(
                            width: 100.0,
                            height: 40.0,
                            key: Key('button'),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Send',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Colors.white,
                                ),
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
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
