// import 'dart:js';

import 'package:fludget/themes/theme_switch.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: ListView(
          children: <Widget>[
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
            ),
            Divider(color: Theme.of(context).primaryColor),
            ThemeSwitch(),
            ListTile(
              leading: FlutterLogo(size: 24.0,),
              title: Text("Flutter Widgets"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                WidgetsDoc()));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {

    return ListTile(
      leading: Icon(icon),
      title: Text(text, style: TextStyle(fontSize: 20)),
      onTap: () {},
    );
  }
}
