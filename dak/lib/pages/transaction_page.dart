import 'package:flutter/material.dart';
import 'package:dak/components/menu.dart';
import 'package:dak/components/transaction.dart';
import '../constants.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(margin: EdgeInsets.all(18), child: Menu()),
            ),
            Expanded(flex: 8, child: Transactions()),
          ],
        ),
      ),
    );

    // child: Responsive(
    //   key: const Key('Setting'),
    //   mobile: Mobile(),
    //   tablet: Tablet(),
    //   desktop: Desktop(),
    // ),
  }
}
