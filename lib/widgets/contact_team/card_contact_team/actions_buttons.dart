import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData actionIcon;
  final Function actionFunction;
  final MaterialColor color;
  final double size;
  ActionButton({this.actionIcon, this.actionFunction, this.color, this.size = 28});
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          actionIcon,
          color: color,
          size: size,
        ),
        onPressed: actionFunction);
  }
}
