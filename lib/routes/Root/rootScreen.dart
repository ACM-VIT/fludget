import 'package:fludget/Models/widgetModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RootScreen extends StatefulWidget {
  final WidgetModel item;

  RootScreen(this.item, {Key? key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _launchURL(widget.item.link),
          child: Icon(Icons.link),
        ),
        appBar: AppBar(
          backgroundColor: Colors.orange[900],
          title: Text(widget.item.name),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Implementation'),
              Tab(text: 'Description'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            widget.item.implementation,
            buildDescription(widget.item.description),
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

Widget buildDescription(Widget widgetDescription) {
  return Scaffold(
    backgroundColor: Colors.grey[900],
    body: widgetDescription,
  );
}
