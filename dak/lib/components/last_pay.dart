import 'package:flutter/material.dart';
import '../constants.dart';

class LastPay extends StatelessWidget {
  const LastPay({Key? key}) : super(key: key);
  final fontSize = 15.0;
  final dak = 0.3481;
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.wallet_membership,
                      color: Colors.white,
                    ),
                    Text('Last pay'.toUpperCase(),
                        style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ],
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(dak.toString(),
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Dak'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                )),
              ]),
        ),
      ),
    );
  }
}
