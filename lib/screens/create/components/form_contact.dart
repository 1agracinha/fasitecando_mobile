
import 'package:fasitecando_mobile/common/main_button.dart';
import 'package:fasitecando_mobile/screens/create/components/label_textfield.dart';
import 'package:fasitecando_mobile/screens/create/components/select_team_dropdown.dart';
import 'package:fasitecando_mobile/widgets/contact_team/card_contact_team/text_field_contact_team.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormContact extends StatefulWidget {
  @override
  _FormContactState createState() => _FormContactState();
}

class _FormContactState extends State<FormContact> {
  final TextEditingController avatarController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelTextfield(textLabel: "Avatar"),
              TextFieldContactTeam(
                hintText: "Cole aqui o link da imagem de perfil",
                controller: avatarController,
              ),
              LabelTextfield(textLabel: "Nome"),
              TextFieldContactTeam(
                hintText: "Nome do contato",
                controller: nameController,
                validator: (name) {
                  if (name.isEmpty)
                    return "Campo Obrigatório";
                  else
                    return null;
                },
              ),
              LabelTextfield(textLabel: "Email"),
              TextFieldContactTeam(
                hintText: "Email do contato",
                controller: emailController,
                validator: (email) {
                  if (email.isEmpty)
                    return "Campo Obrigatório!";
                  else if (!GetUtils.isEmail(email))
                    return "E-mail inválido!";
                  else
                    return null;
                },
              ),
              LabelTextfield(
                  textLabel:
                      "Gostaria de adicionar esse contato a algum grupo?"),
              SelectTeamDropdown(),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  formKey.currentState.validate();
                  print("oxe");
                },
                child: MainButton(text: "Salvar"),
              )
            ],
          )),
    );
  }
}
