import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appbarsample extends StatefulWidget {
  const appbarsample({Key? key}) : super(key: key);

  @override
  _appbarsampleState createState() => _appbarsampleState();
}

class _appbarsampleState extends State<appbarsample> {
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

class appbardescription extends StatefulWidget {
  const appbardescription({Key? key}) : super(key: key);

  @override
  _appbardescriptionState createState() => _appbardescriptionState();
}

class _appbardescriptionState extends State<appbardescription> {
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
