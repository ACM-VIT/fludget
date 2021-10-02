import 'package:fludget/routes/button.dart';
import 'package:fludget/routes/column.dart';
import 'package:fludget/routes/dialogBox.dart';
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
  Icon myIcon = Icon(Icons.search);
  Widget mySearchBar = Text(
    "Widget Catalog",
    style: TextStyle(
        color: Colors.limeAccent,
        backgroundColor: Colors.black,
        fontWeight: FontWeight.bold),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Catalog"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (this.myIcon.icon == Icons.search) {
                  this.myIcon = Icon(Icons.cancel);
                  this.mySearchBar = TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here",
                        hintStyle: TextStyle(color: Colors.yellowAccent)),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  );
                } else {
                  this.myIcon = Icon(Icons.search);
                  this.mySearchBar = Text(
                    "Widget Catalog",
                    style: TextStyle(
                        color: Colors.limeAccent,
                        backgroundColor: Colors.black,
                        fontWeight: FontWeight.bold),
                  );
                }
              });
            },
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
      color: Colors.amber[400], backgroundColor: Colors.black
    );

    CircleAvatar arrow = CircleAvatar(
      child: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
      ),
      backgroundColor: Colors.limeAccent[400],
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
          subtitle: Padding(
            padding: const EdgeInsets.fromLTRB(0.00, 3.0, 0.00, 0.0),
            child: Text(
              "Elevated Button, Text Button, Floating Action Button",
              style: subtitleStyle,
            ),
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
            "Dialog Widget",
            style: titleStyle,
          ),
          subtitle: Text(
            "shows Dialog",
            style: subtitleStyle,
          ),

          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DialogBox();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
