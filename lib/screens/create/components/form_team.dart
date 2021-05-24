
import 'package:fasitecando_mobile/common/main_button.dart';
import 'package:fasitecando_mobile/screens/create/components/label_textfield.dart';
import 'package:fasitecando_mobile/widgets/contact_team/card_contact_team/text_field_contact_team.dart';
import 'package:flutter/material.dart';

class FormTeam extends StatefulWidget {
  @override
  _FormTeamState createState() => _FormTeamState();
}

class _FormTeamState extends State<FormTeam> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelTextfield(textLabel: "Qual será o nome do grupo?"),
              TextFieldContactTeam(
                hintText: "ex: Recursos Humanos",
                controller: nameController,
                validator: (name) {
                  if (name.isEmpty)
                    return "Campo Obrigatório";
                  else
                    return null;
                },
              ),
              LabelTextfield(
                  textLabel:
                      "Gostaria de adicionar uma descrição a esse grupo?"),
              Container(
                child: TextFieldContactTeam(
                  hintText:
                      "ex: Lista de funcionários do setor de RH atualizada no dia 29/03/2021",
                  controller: descriptionController,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                  onTap: () {
                    formKey.currentState.validate();
                  },
                  child: MainButton(text: "Salvar"))
            ],
          )),
    );
  }
}
