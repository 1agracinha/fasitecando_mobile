import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  dynamic snapshot;
  ErrorPage([this.snapshot]);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 32),
            child: Image.asset('assets/cat_error.png')),
        Container(
          margin: EdgeInsets.only(top: 40),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              "${(snapshot.error)}",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.w900),
            ),
          ),
        )
      ],
    );
  }
}
