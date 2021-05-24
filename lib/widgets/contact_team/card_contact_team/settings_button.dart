import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:flutter/material.dart';

class SettingsButton extends StatefulWidget {
  @override
  _SettingsButtonState createState() => _SettingsButtonState();
}


//TODO: fazer funcionar os botoes
class _SettingsButtonState extends State<SettingsButton> {
  String _selected;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      
      child: Icon(
        Icons.settings,
        color: labelGrey,
      ),
      elevation: 2,
      onSelected: (value) => setState(() => _selected = value),
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      itemBuilder: (context) {
        return ["Editar", "Excluir"]
            .map((value) => PopupMenuItem(
                value: value,
                child: Container(
                  child: Center(
                    child: Text(
                      '$value',
                      style: TextStyle(color: mainBlue),
                    ),
                  ),
                )))
            .toList();
      },
    );
  }
}
