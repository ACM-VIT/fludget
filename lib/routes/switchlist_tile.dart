import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SwitchListTileWidget extends StatefulWidget {
  const SwitchListTileWidget({Key? key}) : super(key: key);

  @override
  _SwitchListTileWidgetState createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget>  {
  bool _flutter = false;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding:EdgeInsets.only(left: 10,right: 10,top: 10) ,
      alignment: Alignment.topCenter,
      child: Card(
        color: Colors.white,
        child: SwitchListTile(
          title: Text('Fludget',style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              fontSize: 20
          ),
          ),
          value: _flutter,
          activeColor: Colors.red,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _flutter = value;
            });
          },
          // secondary: Image.asset("assets/devs.jpg",),
          subtitle: Text('HacktoberFest 2021',style: TextStyle(
            color: Colors.blueGrey[600],
          ),
          ),
          controlAffinity: ListTileControlAffinity.trailing,
        ),
      ),
    );
  }
}



class SwitchListTileDescription  extends StatelessWidget {
  const SwitchListTileDescription ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text(
            'SwitchListTile is a widget that wraps a ListTile and a Switch. It iss usually used as a child of a ListView where the content has a Switch widget. A common usage is for displaying an item in a setting page where the user can toggle a particular setting on and off. '
              ,style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}


class SwitchListTileCode extends CodeString {
  const SwitchListTileCode();
  @override
  String buildCodeString() {
    return """  SwitchListTile(
          title: Text('Fludget',style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              fontSize: 20
          ),
          ),
          value: _flutter,
          activeColor: Colors.red,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _flutter = value;
            });
          },
          subtitle: Text('HacktoberFest 2021',
          style: TextStyle(
            color: Colors.blueGrey[600],
          ),
          ),
          controlAffinity: ListTileControlAffinity.trailing,
        ),
""";
  }
}