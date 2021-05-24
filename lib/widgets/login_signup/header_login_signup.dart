import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderLoginSignup extends StatelessWidget {
  final String currentPage, sidePage;
  final Widget routeSidePage;
  HeaderLoginSignup({this.currentPage, this.sidePage, this.routeSidePage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.10),
            child: Text(
              "$currentPage",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: mainBlue),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.10),
            child: TextButton(
                onPressed: () {
                  Get.to(routeSidePage,
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 300));
                },
                child: Text(
                  "$sidePage",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600, color: mainBlue),
                )),
          )
        ],
      ),
    );
  }
}
