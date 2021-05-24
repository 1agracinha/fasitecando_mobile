import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  MainButton({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 40,
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: mainBlue,
        boxShadow: [
          BoxShadow(
            color: mainBlue,
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Text(
        "$text",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
