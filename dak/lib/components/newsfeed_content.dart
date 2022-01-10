import 'package:dak/constants.dart';
import 'package:flutter/material.dart';

import 'package:dak/components/post_list.dart';

class NewsfeedContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: bgColorE5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [PostList()]),
      ),
    );
  }
}
