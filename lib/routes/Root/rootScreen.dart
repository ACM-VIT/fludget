import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  final Widget widgetImplementation;
  final Widget widgetDescription;
  final String widgetName;

  RootScreen({
    Key? key,
    required this.widgetImplementation,
    required this.widgetName,
    required this.widgetDescription,
  }) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.widgetName),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Implementation'),
              Tab(text: 'Description'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            widget.widgetImplementation,
            buildWidgetDescription(widget.widgetDescription),
          ],
        ),
      ),
    );
  }
}

Widget buildWidgetDescription(Widget widgetDescription) {
  return Scaffold(
    backgroundColor: Colors.grey[900],
    body: widgetDescription,
  );
}
