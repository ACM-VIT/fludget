import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[900],
        child: ListView(
          children: <Widget>[
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
            ),
            Divider(color: Colors.orange[900])
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final colour = Colors.orange[900];
    final hoverColour = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: colour),
      title: Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
      hoverColor: hoverColour,
      onTap: () {},
    );
  }
}
