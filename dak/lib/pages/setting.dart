import 'package:dak/screens/setting_desktop.dart';
import 'package:dak/screens/setting_mobile.dart';
import 'package:flutter/material.dart';

import '../helper/responsive.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      key: const Key('Dashboard'),
      mobile: SettingMobile(),
      tablet: SettingDesktop(),
      desktop: SettingDesktop(),
    );
  }
}
