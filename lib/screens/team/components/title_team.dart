import 'package:fasitecando_mobile/screens/team/components/details_team.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleTeam extends StatelessWidget {
  String teamName;
  List<String> emails;
  TitleTeam({this.teamName, this.emails});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(DetailsTeam(emails: emails, teamName: teamName,), transition: Transition.rightToLeft);
      },
      child: Container(
        child: Text(
          "$teamName",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
