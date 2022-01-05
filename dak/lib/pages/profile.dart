//profile page
import 'package:dak/helper/responsive.dart';
import 'package:dak/screens/profile_desktop.dart';
import 'package:dak/screens/profile_mobile.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      key: const Key('Dashboard'),
      mobile: ProfileMobile(),
      tablet: ProfileDesktop(),
      desktop: ProfileDesktop(),
    );
  }
}
