import 'package:flutter/material.dart';
import 'package:dak/models/navigation_item.dart';
import 'package:dak/provider/navigation_provider.dart';
import 'package:provider/provider.dart';
import '../constants.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: subBgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Dak".toUpperCase(),
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3)),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(context,
                        item: NavigationItem.dashboard,
                        text: "Dashboard",
                        icon: Icons.home),
                    const SizedBox(height: 16),
                    buildMenuItem(context,
                        item: NavigationItem.transaction,
                        text: "Transaction",
                        icon: Icons.account_balance_wallet),
                    const SizedBox(height: 16),
                    buildMenuItem(context,
                        item: NavigationItem.newsfeed,
                        text: "Newsfeed",
                        icon: Icons.dashboard_sharp),
                    const SizedBox(height: 16),
                    buildMenuItem(context,
                        item: NavigationItem.settings,
                        text: "Setting",
                        icon: Icons.settings),
                    const SizedBox(height: 16),
                    buildMenuItem(context,
                        item: NavigationItem.help,
                        text: "Help",
                        icon: Icons.help),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: buildMenuItem(context,
                    item: NavigationItem.logout,
                    text: "Logout",
                    icon: Icons.login),
              ),
            ]),
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    // final color = isSelected ? Colors.white : lightBgColor;
    final color = Colors.white;

    return Material(
      borderRadius: BorderRadius.circular(10.0),
      color: lightBgColor,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: Colors.blue,
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color, fontSize: 16)),
        onTap: () => selectItem(context, item),
      ),
    );
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }
}
