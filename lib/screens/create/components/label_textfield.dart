import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:flutter/material.dart';

class LabelTextfield extends StatelessWidget {
  final String textLabel;
  LabelTextfield({this.textLabel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, bottom: 5, top: 15),
      child: Text(
        "$textLabel",
        style: TextStyle(
            color: mainBlue, fontWeight: FontWeight.w600, fontSize: 16),
      ),
    );
  }
}
