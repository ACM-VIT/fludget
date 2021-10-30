import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarSample extends StatefulWidget {
  const AppBarSample({Key? key}) : super(key: key);

  @override
  _AppBarSampleState createState() => _AppBarSampleState();
}

class _AppBarSampleState extends State<AppBarSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.info_sharp),
        title: Text("AppBar Widget Demo"),
        actions: [
          Icon(Icons.edit),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8),
            child: Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}

class AppBarDescription extends StatefulWidget {
  const AppBarDescription({Key? key}) : super(key: key);

  @override
  _AppBarDescriptionState createState() => _AppBarDescriptionState();
}

class _AppBarDescriptionState extends State<AppBarDescription> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Text(
                "An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. App bars typically expose one or more common actions with IconButtons which are optionally followed by a PopupMenuButton for less common operations",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ))));
  }
}

class AppBarCode extends CodeString {
  const AppBarCode();
  @override
  String buildCodeString() {
    return """AppBar(
        leading: Icon(Icons.info_sharp),
        title: Text("AppBar Widget Demo"),
        actions: [
          Icon(Icons.edit),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8),
            child: Icon(Icons.delete),
          )
        ],
      ),""";
  }
}
