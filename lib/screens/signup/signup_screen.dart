import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:fasitecando_mobile/screens/login/login_screen.dart';
import 'package:fasitecando_mobile/screens/signup/components/form_signup.dart';
import 'package:fasitecando_mobile/widgets/login_signup/header_login_signup.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
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
                  currentPage: "Cadastrar",
                  sidePage: "Entrar",
                  routeSidePage: LoginScreen(),
                ),
                Image.asset(
                  "assets/logo.png",
                  height: 100,
                  width: 100,
                ),
                FormSignup()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
