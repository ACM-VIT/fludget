import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class ListTileSample extends StatefulWidget {
  const ListTileSample({Key? key}) : super(key: key);

  @override
  _ListTileSampleState createState() => _ListTileSampleState();
}

class _ListTileSampleState extends State<ListTileSample> {
  showAlertDialog(BuildContext context, String str) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(str),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 200,
              // color: Colors.white,
              child: ListTile(
                enabled: true,
                onTap: () {
                  showAlertDialog(context, "You have tapped the list Tile");
                },
                onLongPress: () {
                  showAlertDialog(
                      context, "You have Long Pressed the list Tile");
                },
                trailing: Icon(Icons.drag_indicator_sharp),
                subtitle: Text("this is the subtitle"),
                title: Text("This is the title"),
                // focusColor: Colors.white,
                // tileColor: Colors.white,
                leading: Icon(Icons.supervised_user_circle),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 200,
              //color: ,
              child: InkWell(
                onTap: () {},
                onLongPress: () {},
                child: ListTile(
                  enabled: false,
                  onTap: () {},
                  onLongPress: () {},
                  trailing: Icon(Icons.drag_indicator_sharp),
                  subtitle: Text("this is the subtitle"),
                  title: Text("This list tile is disabled"),
                  // focusColor: Colors.white,
                  // tileColor: Colors.white,
                  leading: Icon(Icons.supervised_user_circle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListTileDescription extends StatefulWidget {
  const ListTileDescription({Key? key}) : super(key: key);

  @override
  _ListTileDescriptionState createState() => _ListTileDescriptionState();
}

class _ListTileDescriptionState extends State<ListTileDescription> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "A list tile contains one to three lines of text optionally flanked by icons or other widgets, such as check boxes. The icons (or other widgets) for the tile are defined with the leading and trailing parameters. The first line of text is not optional and is specified with title. The value of subtitle, which is optional, will occupy the space allocated for an additional line of text, or two lines if isThreeLine is true",
        ),
      ),
    );
  }
}

class ListTileCode extends CodeString {
  const ListTileCode();
  @override
  String buildCodeString() {
    return """ ListTile(
                enabled: true,
                onTap: () {
                  showAlertDialog(context, "You have tapped the list Tile");
                },
                onLongPress: () {
                  showAlertDialog(
                      context, "You have Long Pressed the list Tile");
                },
                trailing: Icon(Icons.drag_indicator_sharp),
                subtitle: Text("this is the subtitle"),
                title: Text("This is the title"),
                // focusColor: Colors.white,
                // tileColor: Colors.white,
                leading: Icon(Icons.supervised_user_circle),
              ),
""";
  }
}
