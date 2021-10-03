import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  Widget widgetImplementation;
  final String widgetName;

  RootScreen({
    Key? key,
    required this.widgetImplementation,
    required this.widgetName,
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
        body: TabBarView(children: [
          widget.widgetImplementation,
          Center(
            child: Text('${widget.widgetName} Implementation'),
          )
        ]),
      ),
    );
  }
}
