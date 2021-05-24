import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:fasitecando_mobile/widgets/contact_team/card_contact_team/actions_buttons.dart';
import 'package:fasitecando_mobile/widgets/contact_team/card_contact_team/card_background.dart';
import 'package:fasitecando_mobile/widgets/contact_team/card_contact_team/settings_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardContactTeam extends StatefulWidget {
  final String email;
  final double size;
  final Widget widgetsHeader;
  final MaterialColor colorButton;
  final IconData iconButton;
  final Function leftButton, rightButton;

  CardContactTeam(
      {this.email = "example@example.com",
      this.widgetsHeader,
      this.size,
      this.colorButton = Colors.amber,
      this.iconButton = Icons.add_circle_outline,
      this.leftButton,
      this.rightButton});
  @override
  _CardContactTeamState createState() => _CardContactTeamState();
}

//TODO: ajeitar e componentizar
class _CardContactTeamState extends State<CardContactTeam> {
  @override
  Widget build(BuildContext context) {
    var emails = widget.email.toString();
    emails = emails.replaceAll("[", "");
    emails = emails.replaceAll("]", "");

    return CardBackgroundContact(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SettingsButton(),
          ),
          widget.widgetsHeader,
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(
                color: widget.colorButton,
                actionIcon: widget.iconButton,
                actionFunction: widget.leftButton,
              ),
              ActionButton(
                  actionIcon: Icons.send,
                  color: mainBlue,
                  actionFunction: () {
                    launch("mailto:${emails}");
                  }),
              ActionButton(
                color: mainGreen,
                actionIcon: Icons.share,
                actionFunction: widget.rightButton,
              )
            ],
          )
        ],
      ),
    );
  }
}
