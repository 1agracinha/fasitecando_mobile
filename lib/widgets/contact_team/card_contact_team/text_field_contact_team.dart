import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:flutter/material.dart';

class TextFieldContactTeam extends StatelessWidget {
  final String hintText;
  final Function validator;
  final TextEditingController controller;

  TextFieldContactTeam({this.hintText, this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(width: 0, color: borderGrey));
    InputDecoration textFieldDecoration = InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400]));

    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        decoration: textFieldDecoration,
        validator: validator,
        controller: controller,
        //TODO: onSaved: ,
      ),
    );
  }
}
