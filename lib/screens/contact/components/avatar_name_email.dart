import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:flutter/material.dart';

class AvatarNameEmail extends StatelessWidget {
  final String image, firstName, lastName, email;
  AvatarNameEmail({this.image, this.firstName, this.lastName, this.email});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 30,
          backgroundImage: NetworkImage("$image"),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$firstName $lastName",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(
                  "$email",
                  style: TextStyle(fontSize: 16, color: labelGrey),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
