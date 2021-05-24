import 'package:fasitecando_mobile/common/main_button.dart';
import 'package:fasitecando_mobile/widgets/login_signup/input_decoration_login_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

class FormSignup extends StatefulWidget {
  @override
  _FormSignupState createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController passConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(top: 40),
      child: Form(
        key: formkey,
        child: Column(
          children: [
            TextFieldLoginSignup(
                controller: emailController,
                hintText: "e-mail",
                validator: (email) {
                  if (email.isEmpty) {
                    return "Campo Obrigatório!";
                  } else if (!GetUtils.isEmail(email)) {
                  return "E-mail inválido!";
                }
                }),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextFieldLoginSignup(
                  controller: passController,
                  hintText: "senha",
                  validator: (pass) {
                    if (pass.isEmpty) {
                      return "Campo Obrigatório!";
                    }
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextFieldLoginSignup(
                  controller: passController,
                  hintText: "confirmar senha",
                  validator: (pass) {
                    if (pass.isEmpty) {
                      return "Campo Obrigatório!";
                    }
                  }),
            ),
            Container(
               margin: EdgeInsets.only(top: 20),
              child: TextButton(
                  onPressed: () {
                    formkey.currentState.validate();
                  },
                  child: MainButton(
                    text: "cadastrar",
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
