import 'package:flutter/material.dart';
import 'package:dak/components/custom_app_bar.dart';
import 'package:dak/components/menu.dart';
import 'package:dak/components/newsfeed_content.dart';
import 'package:dak/components/newsfeed_side.dart';
import '../constants.dart';

class NewsfeedDesktop extends StatefulWidget {
  const NewsfeedDesktop({Key? key}) : super(key: key);

  @override
  State<NewsfeedDesktop> createState() => _NewsfeedDesktopState();
}

class _NewsfeedDesktopState extends State<NewsfeedDesktop> {
  int _selectedIndexTop = 0;
  final List<IconData> _icons = const [
    Icons.facebook,
    Icons.task_alt_outlined,
    Icons.brightness_1_outlined,
    Icons.video_collection_outlined
  ];

  static List<Widget> _widgetOptionsTop = <Widget>[
    Text('Fb'),
    Text('TikTok'),
    Text('Twitter'),
    Text('Youtube'),
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _widgetOptionsTop.length,
      child: Scaffold(
        body: Container(
          color: bgColor,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(margin: EdgeInsets.all(18), child: Menu()),
              ),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Container(
                        child: CustomAppBar(
                          icons: _icons,
                          selectedIndex: _selectedIndexTop,
                          onTap: _onItemTappedTop,
                          onMenuTap: () {},
                        ),
                      ),
                      Flexible(child: NewsfeedContent())
                    ],
                  )),
              Expanded(
                flex: 2,
                child: NewsfeedSide(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTappedTop(int index) {
    setState(() {
      _selectedIndexTop = index;
    });
  }
}
