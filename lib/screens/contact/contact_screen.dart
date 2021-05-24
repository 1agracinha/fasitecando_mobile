import 'package:fasitecando_mobile/models/usuario.dart';
import 'package:fasitecando_mobile/screens/contact/components/avatar_name_email.dart';
import 'package:fasitecando_mobile/services/api.dart';
import 'package:fasitecando_mobile/widgets/contact_team/card_contact_team/card_contact_team.dart';

import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final String image =
          "https://static1.conquistesuavida.com.br/articles//4/56/84/@/18404-gente-que-da-prioridade-aos-sentimentos-article_gallery_large-2.jpg",
      firstName = "Nome",
      lastName = "Sobrenome",
      email = "ana@example";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        FutureBuilder(
            future: ApiService.listarUsuarios(),
            builder: (context, snapshot) {
              // if (snapshot.hasError) return ErrorPage(snapshot);
              if (snapshot.hasError) throw snapshot.error;
              if (snapshot.connectionState != ConnectionState.done)
                return Center(
                    child: CircularProgressIndicator(
                  backgroundColor: Colors.orangeAccent,
                ));

              return ListView(
                  shrinkWrap: true,
                  children: Usuario.listarUsuarios(snapshot.data)
                      .map<Widget>(
                        (usuario) => CardContactTeam(
                          email: usuario.email,
                          widgetsHeader: AvatarNameEmail(
                            image: usuario.avatar,
                            email: usuario.email,
                            firstName: usuario.nome,
                            lastName: usuario.sobrenome,
                          ),
                          size: 180,
                        ),
                      )
                      .toList());
            })
      ],
      //TODO: listview.builder
    );
  }
}
