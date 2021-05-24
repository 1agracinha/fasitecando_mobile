
import 'package:fasitecando_mobile/screens/create/components/form_contact.dart';
import 'package:fasitecando_mobile/screens/create/components/form_team.dart';
import 'package:fasitecando_mobile/screens/create/components/option_create_button.dart';
import 'package:flutter/material.dart';

class CreateContactGroup extends StatefulWidget {
  @override
  _CreateContactGroupState createState() => _CreateContactGroupState();
}

enum FormType { CONTACT, TEAM }

class _CreateContactGroupState extends State<CreateContactGroup> {
  FormType formType = FormType.CONTACT;
  @override
  Widget build(BuildContext context) {
    void toggleFormType(FormType newformType) {
      setState(() {
        formType = newformType;
      });
    }

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          //TODO: alterar form de acordo com a acao dos bottoes
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OptionCreateButton(
                  toggleFormType,
                  contact: true,
                  currentStatus: formType,
                  text: "contato",
                ),
                OptionCreateButton(
                  toggleFormType,
                  contact: false,
                  currentStatus: formType,
                  text: "grupo",
                ),
              ],
            ),
            if (formType == FormType.CONTACT) FormContact() else FormTeam()
          ],
        ),
      ),
    );
  }
}
