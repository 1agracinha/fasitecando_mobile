import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:fasitecando_mobile/screens/login/components/form_login.dart';
import 'package:fasitecando_mobile/screens/signup/signup_screen.dart';
import 'package:fasitecando_mobile/widgets/login_signup/header_login_signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderLoginSignup(
                  currentPage: "Entrar",
                  sidePage: "Cadastrar",
                  routeSidePage: SignupScreen(),
                ),
                Image.asset(
                  "assets/logo.png",
                  height: 100,
                  width: 100,
                ),
                FormLogin(),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
