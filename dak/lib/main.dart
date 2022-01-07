import 'package:dak/constants.dart';
import 'package:dak/pages/update_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dak/pages/help_page.dart';
import 'package:dak/pages/login.dart';
import 'package:dak/pages/newsfeed.dart';
import 'package:dak/pages/setting.dart';
import 'package:dak/pages/transaction_page.dart';
import 'package:provider/provider.dart';
import './models/navigation_item.dart';
import './provider/navigation_provider.dart';
import './pages/dash_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final String title = 'Dak';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: fontFamily,
            primaryColor: Colors.white,
            textTheme: TextTheme(
              bodyText1: TextStyle(
                fontSize: bodyFontSize,
              ),
              bodyText2: TextStyle(
                fontSize: bodyFontSize,
              ),
            ).apply(
              bodyColor: textColorSub,
              displayColor: Colors.white,
            )),
        home: MainPage(),
      ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.dashboard:
        return Dashboard();
      case NavigationItem.transaction:
        return TransactionPage();
      case NavigationItem.newsfeed:
        return Newsfeed();
      case NavigationItem.help:
        return HelpPage();
      case NavigationItem.logout:
        return Login();
      case NavigationItem.settings:
        return Setting();
      case NavigationItem.updatePassword:
        return UpdatePassword();
      default:
        return Dashboard();
    }
  }
}
