// import 'dart:js';
import 'package:fludget/widgets_doc.dart';
import 'package:fludget/themes/theme_switch.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsWidget extends StatefulWidget {
  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  String _docUrl =
      'https://api.flutter.dev/flutter/widgets/widgets-library.html';
  String _repoUrl = "https://github.com/ACM-VIT/fludget";
  PackageInfo? packageInfo;

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  void initState() {
    super.initState();
    this.initAsyncState();
  }

  void initAsyncState() async {
    packageInfo = await PackageInfo.fromPlatform();

    // ignore: invalid_use_of_visible_for_testing_member
    LicenseRegistry.reset();
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(<String>['MIT LICENSE'], '''
MIT License

Copyright (c) 2021 ACM-VIT

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
''');
    });
  }

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
              leading: FlutterLogo(
                size: 24.0,
              ),
              trailing: InkWell(
                child: Icon(
                  Icons.link,
                  size: 24.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                  _launchURL(_docUrl);
                },
              ),
              title: Text("Official Documentation"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WidgetsDoc(url: _docUrl)));
              },
            ),
            ListTile(
              leading: SizedBox(
                  width: 23,
                  height: 23,
                  child: (Theme.of(context).brightness == Brightness.light)
                      ? Image.asset('assets/icon/GitHub-Mark-64px.png')
                      : Image.asset('assets/icon/GitHub-Mark-Light-64px.png')),
              trailing: InkWell(
                child: Icon(
                  Icons.link,
                  size: 24.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                  _launchURL(_repoUrl);
                },
              ),
              title: Text("Fludget Repository"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WidgetsDoc(url: _repoUrl)));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                size: 24.0,
              ),
              title: Text("About"),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: Image.asset(
                    'assets/images/logo.png',
                    width: 50,
                    height: 50,
                  ),
                  applicationName: 'FLUDGET',
                  applicationVersion: packageInfo?.version,
                  applicationLegalese: 'Copyright (c) 2021 ACM-VIT',
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Browse through a variety of widgets used in flutter\nThis application is developed to learn Flutter using Flutter. Different widgets used in flutter can be viewed in this app along with their implementation.",
                      ),
                    ),
                  ],
                );
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
