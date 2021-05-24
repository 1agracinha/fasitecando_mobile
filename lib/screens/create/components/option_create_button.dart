import 'package:fasitecando_mobile/screens/create/create.dart';
import 'package:flutter/material.dart';

import 'package:fasitecando_mobile/colors/colors.dart';

class OptionCreateButton extends StatelessWidget {
  final Function(FormType) toggleFormType;
  final bool contact;
  final FormType currentStatus;
  final String text;

  OptionCreateButton(this.toggleFormType,
      {this.contact = true, this.currentStatus, this.text});

  final List<BoxShadow> shadows = [
    BoxShadow(color: Colors.grey[300], offset: Offset(0, 2), blurRadius: 2),
  ];

  final BorderRadius radius = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    final bool isSelected = (contact && currentStatus == FormType.CONTACT) ||
        (!contact && currentStatus == FormType.TEAM);
    return TextButton(
      onPressed: () {
        // setState(() {
        //   contact = !contact;
        // });
        if (contact == true) {
          toggleFormType(FormType.CONTACT);
        } else {
          toggleFormType(FormType.TEAM);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: radius,
          color: isSelected ? mainBlue : Colors.white,
          boxShadow: shadows,
        ),
        child: Text(
          "$text",
          style: TextStyle(
              color: isSelected ? Colors.white : mainBlue, fontSize: 16),
        ),
      ),
    );
  }
}
