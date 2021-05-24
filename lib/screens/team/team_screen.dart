import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:fasitecando_mobile/models/team_model.dart';
import 'package:fasitecando_mobile/screens/team/components/title_team.dart';
import 'package:fasitecando_mobile/widgets/contact_team/card_contact_team/card_contact_team.dart';
import 'package:flutter/material.dart';


class TeamScreen extends StatelessWidget {
  //RECEBER LISTA DE CONTATOS E NAO DE EMAIL
  @override
  Widget build(BuildContext context) {
    List<TeamModel> teams = [
      TeamModel(
          name: "Controladoria",
          emails: ["email@email.com", "ana@Example.com"]),
      TeamModel(
          name: "Recursos Humanos",
          emails: ["email@email.com", "jose@Example.com"]),
      TeamModel(
          name: "Administrativo",
          emails: ["email@email.com", "maria@Example.com"]),
          
    ];

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Center(
            child: Text(
              "Clique sobre o nome para visualizar detalhes",
              style: TextStyle(color: labelGrey),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
              itemCount: teams.length,
              itemBuilder: (context, i) {
                return CardContactTeam(
                  email: "${teams[i].emails}",
                  widgetsHeader: TitleTeam(teamName: "${teams[i].name}", emails: teams[i].emails,),
                  size: 80,
                  iconButton: Icons.people,
                );
              }),
        )
      ],
    );
  }
}
