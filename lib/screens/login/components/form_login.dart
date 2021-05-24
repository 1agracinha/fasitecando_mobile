import 'package:fasitecando_mobile/common/tabbar.dart';
import 'package:fasitecando_mobile/common/main_button.dart';
import 'package:fasitecando_mobile/services/api.dart';
import 'package:fasitecando_mobile/widgets/login_signup/input_decoration_login_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

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
              hintText: "e-mail",
              controller: emailController,
              validator: (email) {
                if (email.isEmpty) {
                  return "Campo Obrigatório!";
                }
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextFieldLoginSignup(
                hintText: "Senha",
                controller: passController,
                validator: (pass) {
                  if (pass.isEmpty) {
                    return "Campo Obrigatório!";
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {
                  // if (formkey.currentState.validate()) {
                  //   ApiService.entrar({
                  //     "email": "eve.holt@reqres.in",
                  //     "password": "cityslicka"
                  //   });
                  Get.to(HomeTabBar());
                  // }
                },
                child: MainButton(
                  text: "entrar",
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.3)
          ],
        ),
      ),
    );
  }
}
