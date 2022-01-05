import 'package:flutter/material.dart';
import '../helper/responsive.dart';
import '../screens/newsfeed_desktop.dart';
import '../screens/newsfeed_mobile.dart';
import '../screens/newsfeed_tablet.dart';

class Newsfeed extends StatelessWidget {
  const Newsfeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Responsive(
        key: const Key('Newsfeed'),
        mobile: NewsfeedMobile(),
        tablet: NewsfeedTablet(),
        desktop: NewsfeedDesktop(),
      ),
    );
  }
}
