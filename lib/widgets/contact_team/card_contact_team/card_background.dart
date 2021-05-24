import 'package:flutter/material.dart';

class CardBackgroundContact extends StatelessWidget {
  final double size;
  final Widget widget;
  CardBackgroundContact({this.widget, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: double.infinity,
        padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400].withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: widget);
  }
}
