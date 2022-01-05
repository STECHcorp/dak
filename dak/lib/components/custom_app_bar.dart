import 'package:flutter/material.dart';
import 'package:dak/components/circle_button.dart';
import 'package:dak/components/custom_tab_bar.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final Function() onMenuTap;

  const CustomAppBar({
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      alignment: Alignment.center,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: double.infinity,
              child: CustomTabBar(
                icons: icons,
                selectedIndex: selectedIndex,
                onTap: onTap,
                isBottomIndicator: true,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleButton(
                  icon: Icons.message,
                  iconSize: 20.0,
                  onPressed: () => this.onMenuTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
