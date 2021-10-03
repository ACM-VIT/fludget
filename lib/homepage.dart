import 'package:fludget/routes/button.dart';
import 'package:fludget/routes/column.dart';
import 'package:fludget/routes/icon.dart';
import 'package:fludget/routes/image.dart';
import 'package:fludget/routes/row.dart';
import 'package:fludget/routes/settings.dart';
import 'package:fludget/routes/stack.dart';
import 'package:fludget/routes/text.dart';
import 'package:fludget/routes/gridList.dart';
import 'package:flutter/material.dart';
import 'package:fludget/routes/dialogBox.dart';

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
    final itemMap = {
      'Column Widget': {ColumnSample(): ''},
      'Row Widget': {RowSample(): ''},
      'Stack Widget': {StackSample(): ''},
      'Text Widget': {TextSample(): ''},
      'Icon Widget': {IconSample(): ''},
      'Image Widget': {ImageSample(): 'Asset Image, Network Image'},
      'Button Widget': {
        ButtonSample(): 'Elevated Button, Text Button, Floating Action Button'
      },
      'GridList Widget': {GridListSample(): ''},
      'DialogBox Widget': {DialogBox(): ''},
      'Settings Widget': {SettingSample(): 'Account and Notification Settings'}
      //Make Sure to add new Widgets to the ListView like:
//       'Widget Title' : { WidgetClass(): 'Widget Subtitle' }
    };

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
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      itemCount: itemMap.length,
      itemBuilder: (ctx, index) => ListTile(
        leading: arrow,
        title: Text(
          itemMap.keys.toList()[index],
          style: titleStyle,
        ),
        subtitle: Text(
          itemMap.values.toList()[index].values.toList()[0],
          style: subtitleStyle,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return itemMap.values.toList()[index].keys.toList()[0];
              },
            ),
          );
        },
      ),
    );
  }
}
