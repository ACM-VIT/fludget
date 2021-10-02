import 'package:fludget/routes/button.dart';
import 'package:fludget/routes/column.dart';
import 'package:fludget/routes/gridList.dart';
import 'package:fludget/routes/icon.dart';
import 'package:fludget/routes/image.dart';
import 'package:fludget/routes/row.dart';
import 'package:fludget/routes/stack.dart';
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
        centerTitle: true,
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

    TextStyle subtitleStyle = TextStyle(color: Colors.white70);
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      children: [
        ListTile(
          leading: arrow,
          title: Text(
            "Column Widget",
            style: titleStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ColumnSample();
                },
              ),
            );
          },
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "Row Widget",
            style: titleStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RowSample();
                },
              ),
            );
          },
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "Stack Widget",
            style: titleStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return StackSample();
                },
              ),
            );
          },
        ),
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
            "Icon Widget",
            style: titleStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return IconSample();
                },
              ),
            );
          },
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "Image Widget",
            style: titleStyle,
          ),
          subtitle: Text(
            "Asset Image, Network Image",
            style: subtitleStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ImageSample();
                },
              ),
            );
          },
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "Button Widget",
            style: titleStyle,
          ),
          subtitle: Text(
            "Elevated Button, Text Button, Floating Action Button",
            style: subtitleStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ButtonSample();
                },
              ),
            );
          },
        ),
        ListTile(
          leading: arrow,
          title: Text(
            "GridList Widget",
            style: titleStyle,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return GridListSample();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
