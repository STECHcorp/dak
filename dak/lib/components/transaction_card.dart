import 'package:flutter/material.dart';
import '../constants.dart';

import '../main.dart';

class TransactionCard extends StatelessWidget {
  final String adress;
  final double amount;
  final double usd;
  final bool isSend;

  final fontSize = 15.0;

  const TransactionCard({
    required this.adress,
    required this.amount,
    required this.isSend,
    required this.usd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: lightBgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: isSend ? Colors.green : Colors.purple,
                    ),
                    child: Icon(
                      isSend ? Icons.arrow_back : Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(adress.toString() + "...",
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(isSend ? "SENT" : "RECEIVED",
                          style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                              color: isSend ? Colors.green : Colors.purple)),
                    ],
                  ),
                )),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(amount.toString() + " DAK",
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(usd.toString() + " USD",
                          style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
