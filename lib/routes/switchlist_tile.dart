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
  bool _switched = false;
  bool ss =false;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding:EdgeInsets.only(left: 10,right: 10,top: 10) ,
      alignment: Alignment.topCenter,
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
          color: Colors.grey,
          offset: const Offset(
            1.0,
            1.0,
          ), //Offset
          blurRadius: 1.0,
          spreadRadius: 1.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: const Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ),],

              ),
              child: SwitchListTile(
                title: Text('Fludget',style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                    fontSize: 20
                ),
                ),
                value: ss,
                selectedTileColor: Colors.cyanAccent,
                activeColor: Colors.greenAccent,
                inactiveTrackColor: Colors.yellowAccent,
                onChanged: (bool value) {
                  setState(() {
                    ss = value;
                  });
                },
                secondary: Icon(Icons.flutter_dash),
                subtitle: Text('HacktoberFest 2021',style: TextStyle(
                  color: Colors.blueGrey[600],
                ),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
            Container(
              height:10,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ), //Offset
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),],

              ),
              child: SwitchListTile(
                title: Text('Tap Here',style: TextStyle(
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
                secondary: Image.asset("assets/images/meme.png",width: 60,),
                subtitle: Text('HacktoberFest 2021',style: TextStyle(
                  color: Colors.blueGrey[600],
                ),
                ),
                activeThumbImage: NetworkImage("https://yt3.ggpht.com/ytc/AKedOLT-J2PfenC8ygtqUrmpllUa2sQ-tUrvcRIfxpSU=s900-c-k-c0x00ffffff-no-rj"),
                controlAffinity: ListTileControlAffinity.trailing,
                inactiveThumbImage: NetworkImage("https://i.pinimg.com/564x/ce/15/58/ce15584f4a9aaf701630a8902c6302c2.jpg"),
              ),
            ),
            Container(
              height:10,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ), //Offset
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),],

              ),
              child: SwitchListTile(

                title: Text('Allow BluetTooth',style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                    fontSize: 20
                ),
                ),
                value: _switched,
                activeColor: Colors.lightBlue,
                inactiveTrackColor: Colors.blueGrey,
                onChanged: (bool value) {
                  setState(() {
                   _switched= value;
                  });
                },
                secondary: Icon(Icons.bluetooth,color: Colors.blue,),
                subtitle: Text('Enable Swithch to Access bluetooth',style: TextStyle(
                  color: Colors.blueGrey[600],
                ),
                ),
                activeThumbImage: NetworkImage("https://www.pngmart.com/files/15/Happy-Face-Emoji-PNG-File.png"),
                controlAffinity: ListTileControlAffinity.trailing,
                inactiveThumbImage: NetworkImage("https://www.pngmart.com/files/1/Sad-Emoji-PNG-HD.png"),
              ),
            ),

          ],
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
    return """   SwitchListTile(

                title: Text('Allow BluetTooth',style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                    fontSize: 20
                ),
                ),
                value: _switched,
                activeColor: Colors.lightBlue,
                inactiveTrackColor: Colors.blueGrey,
                onChanged: (bool value) {
                  setState(() {
                   _switched= value;
                  });
                },
                secondary: Icon(Icons.bluetooth,color: Colors.blue,),
                subtitle: Text('Enable Swithch to Access bluetooth',style: TextStyle(
                  color: Colors.blueGrey[600],
                ),
                ),
                activeThumbImage: NetworkImage("https://www.pngmart.com/files/15/Happy-Face-Emoji-PNG-File.png"),
                controlAffinity: ListTileControlAffinity.trailing,
                inactiveThumbImage: NetworkImage("https://www.pngmart.com/files/1/Sad-Emoji-PNG-HD.png"),
              ),
""";
  }
}