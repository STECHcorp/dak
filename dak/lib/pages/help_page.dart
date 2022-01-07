import 'package:dak/screens/help_desktop.dart';
import 'package:dak/screens/help_mobile.dart';
import 'package:flutter/material.dart';
import '../helper/responsive.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  get bgColor => null;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      key: const Key('Dashboard'),
      mobile: HelpMobile(),
      tablet: HelpDesktop(),
      desktop: HelpDesktop(),
    );
  }
}
