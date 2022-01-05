import 'package:flutter/material.dart';
import '../constants.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
                Text('Balance',
                    style: TextStyle(
                        fontSize: headingsFonsize,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                // SizedBox(
                //   height: screenWidth * 0.15,
                // ),
                Text('Total',
                    style: TextStyle(fontSize: 13, color: Colors.grey)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('18.00269408',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(
                      width: 5,
                    ),
                    Text('dak'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.price_check_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Spendable',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Row(children: [
                      Text('18.00269408',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(
                        width: 5,
                      ),
                      Text('dak'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ])),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Pending',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Row(children: [
                      Text('0.00',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(
                        width: 5,
                      ),
                      Text('dak'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ])),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.save,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Row(children: [
                      Text('18.00269408',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(
                        width: 5,
                      ),
                      Text('dak'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ])),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
