import 'package:dak/helper/responsive.dart';
import 'package:dak/screens/transaction_desktop.dart';
import 'package:dak/screens/transaction_mobile.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      key: const Key('Dashboard'),
      mobile: TransactionMobile(),
      tablet: TransactionDesktop(),
      desktop: TransactionDesktop(),
    );
  }
}
