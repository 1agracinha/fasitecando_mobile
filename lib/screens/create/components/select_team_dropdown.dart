import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:flutter/material.dart';

class SelectTeamDropdown extends StatefulWidget {
  @override
  _SelectTeamDropdownState createState() => _SelectTeamDropdownState();
}

class _SelectTeamDropdownState extends State<SelectTeamDropdown> {
  var dropdownValue = "Controladoria";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: DropdownButton<String>(
        value: dropdownValue,
        isExpanded: true,
        icon: Icon(Icons.arrow_drop_down_circle, color: mainOrange),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.grey),
        underline: Container(
          height: 1,
          color: borderGrey,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
            
          });
        },

        items: <String>[
          'Recursos Humanos',
          'Controladoria',
          'Administrativo',
          'Faturamento'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
