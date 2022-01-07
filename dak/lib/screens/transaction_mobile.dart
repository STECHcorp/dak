import 'package:flutter/material.dart';
import 'package:dak/components/menu.dart';
import '../constants.dart';

class TransactionMobile extends StatefulWidget {
  const TransactionMobile({Key? key}) : super(key: key);

  @override
  State<TransactionMobile> createState() => _TransactionMobileState();
}

class _TransactionMobileState extends State<TransactionMobile> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text("Dak"),
          backgroundColor: bgColor,
        ),
        endDrawer: Drawer(
          child: Menu(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Transaction",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
