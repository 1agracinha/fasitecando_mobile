import 'package:fasitecando_mobile/colors/colors.dart';
import 'package:fasitecando_mobile/screens/contact/contact_screen.dart';
import 'package:fasitecando_mobile/screens/create/create.dart';
import 'package:fasitecando_mobile/screens/team/team_screen.dart';
import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: backgroundGrey,
        appBar: PreferredSize(
          preferredSize: Size(0, MediaQuery.of(context).size.height * 0.08),
          child: AppBar(
            bottom: TabBar(
              labelColor: mainBlue,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: labelGrey,
              indicatorWeight: 4.0,
              tabs: [
                Tab(child: Text("criar")),
                Tab(child: Text("contatos")),
                Tab(child: Text("grupos"))
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              CreateContactGroup(),
              ContactScreen(),
              TeamScreen()
              //TODO: paginas
            ],
          ),
        ),
      ),
    );
  }
}
