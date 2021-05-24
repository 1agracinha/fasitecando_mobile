import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:fasitecando_mobile/screens/contact/components/avatar_name_email.dart';
import 'package:fasitecando_mobile/widgets/contact_team/card_contact_team/card_contact_team.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsTeam extends StatelessWidget {
  String teamName;
  List<String> emails;
  DetailsTeam({this.emails, this.teamName});

  final String image =
          "https://static1.conquistesuavida.com.br/articles//4/56/84/@/18404-gente-que-da-prioridade-aos-sentimentos-article_gallery_large-2.jpg",
      firstName = "Nome",
      lastName = "Sobrenome",
      email = "ana@example";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "$teamName",
              style: TextStyle(color: mainBlue),
            ),
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 10),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.settings)))
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: Text(
                  "Membros do time $teamName",
                  style: TextStyle(color: labelGrey),
                ),
              ),
            ),
            //Adaptar isso à lista de contatos
            Flexible(
              child: ListView.builder(
                  itemCount: emails.length,
                  itemBuilder: (context, i) {
                    return CardContactTeam(
                      email: "oxe@gmail.com",
                      widgetsHeader: AvatarNameEmail(
                        image: image,
                        email: emails[i],
                        firstName: firstName,
                        lastName: lastName,
                      ),
                      colorButton: Colors.red,
                      iconButton: Icons.cancel_rounded,
                      size: 180,
                      leftButton: () {
                        _settingModalBottomSheet(context);
                      },
                    );
                  }),
            )
          ],
        ));
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                title: new Text(
                  'Deseja, realmente, remover esse contato do grupo?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Wrap(
                children: [
                  ListTile(
                    title: Center(
                        child: new Text(
                      'sim, remover',
                      style: TextStyle(color: Colors.redAccent),
                    )),
                    onTap: () => {},
                  ),
                  ListTile(
                    title: Center(child: new Text('cancelar')),
                    onTap: () => {Get.back()},
                  ),
                ],
              )
            ],
          ),
        );
      });
}
