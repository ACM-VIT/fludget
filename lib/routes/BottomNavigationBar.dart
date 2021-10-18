import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class BottomNavigationBarImplementation extends StatefulWidget {
  const BottomNavigationBarImplementation({Key? key}) : super(key: key);
  @override
  _BottomNavigationBarImplementationState createState() => _BottomNavigationBarImplementationState();
}

class _BottomNavigationBarImplementationState extends State<BottomNavigationBarImplementation> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}



class BottomNavigationBarDescription extends StatelessWidget {
  const BottomNavigationBarDescription({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '''A material widget that's displayed at the bottom of an app for selecting among a small number of views, typically between three and five.The Bottom Navigation bar has become popular in the last few years for navigation between different UI. The bottom navigation bar in Flutter can contain multiple items such as text labels, icons, or both.\nThe length of items must be at least two and each item's icon and title/label must not be null.''',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class BottomNavigationBarCode extends CodeString {
  const BottomNavigationBarCode();
  @override
  String buildCodeString() {
    return """BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purpleAccent[800],
        onTap: _onItemTapped,
      )""";
  }
}
