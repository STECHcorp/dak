import 'package:flutter/material.dart';

import 'package:dak/components/post_list.dart';

class NewsfeedTabVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
      child: Container(
          child: Scrollbar(
        isAlwaysShown: false,
        thickness: 0.1,
        hoverThickness: 0.1,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              PostList(page: "video"),
            ]);
          },
          itemCount: 1,
        ),
      )),
    );
  }
}
