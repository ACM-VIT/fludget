// import 'dart:js';
import 'package:fludget/widgets_doc.dart';
import 'package:fludget/themes/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  
  String _url = 'https://api.flutter.dev/flutter/widgets/widgets-library.html';
  void _launchURL() async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  
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
              trailing: InkWell(child: Icon(Icons.link,
                size: 24.0,), onTap: () {
                Navigator.pop(context);
                _launchURL();
              },),
              title: Text("Official Documentation"),
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
