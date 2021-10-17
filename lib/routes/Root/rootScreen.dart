// import 'dart:js';

import 'package:fludget/Models/widgetModel.dart';
import 'package:fludget/codeString.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:syntax_highlighter/syntax_highlighter.dart';

class RootScreen extends StatefulWidget {
  final WidgetModel item;

  RootScreen(this.item, {Key? key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    final SyntaxHighlighterStyle style =
        Theme.of(context).brightness == Brightness.dark
            ? SyntaxHighlighterStyle.darkThemeStyle()
            : SyntaxHighlighterStyle.lightThemeStyle();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(widget.item.name),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Implementation'),
              Tab(text: 'Description'),
              Tab(
                text: "Code",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            widget.item.implementation,
            buildDescription(
                widget.item.description, widget.item.link, context),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'monospace', fontSize: 15),
                      children: <TextSpan>[
                        DartSyntaxHighlighter(style)
                            .format(code_string[widget.item.codeStringName]!),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget buildDescription(
    Widget widgetDescription, String link, BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).backgroundColor,
    body: widgetDescription,
    floatingActionButton: FloatingActionButton(
      onPressed: () => _launchURL(link),
      child: Icon(Icons.link, color: Colors.white),
      backgroundColor: Theme.of(context).primaryColor,
    ),
  );
}
