import 'package:fludget/routes/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Catalog"),
      ),
      backgroundColor: Colors.grey[900],
      body: getWidgetList(),
    );
  }

  ListView getWidgetList() {
    TextStyle titleStyle = TextStyle(
      color: Colors.white,
    );

    CircleAvatar arrow = CircleAvatar(
      child: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
      ),
      backgroundColor: Colors.orange[900],
    );

    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      children: [
        ListTile(
          leading: arrow,
          title: Text(
            "Text Widget",
            style: titleStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TextSample();
                },
              ),
            );
          },
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "Widget 2",
            style: titleStyle,
          ),
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "Widget 3",
            style: titleStyle,
          ),
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "Widget 4",
            style: titleStyle,
          ),
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "Widget 5",
            style: titleStyle,
          ),
        ),
      ],
    );
  }
}
