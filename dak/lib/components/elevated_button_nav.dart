//click to nav hiddenbutton

import 'package:flutter/material.dart';
import '../constants.dart';

class ElevatedButtonNav extends StatelessWidget {
  final Widget child;
  final Function onPressed;

  const ElevatedButtonNav({
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: child,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      ),
    );
  }
}
