import 'dart:io';

import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:fasitecando_mobile/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                  details.exception is SocketException
                      ? Icons.wifi_off
                      : Icons.error,
                  size: 100,
                  color: Colors.red),
              Text("Algo deu de errado. Por favor reinicie o app."),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "Mensagem de erro:\n" + details.exception.toString(),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fasitecando Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: mainBlue,
      ),
      home: Scaffold(body: LoginScreen()),
    );
  }
}
