import 'dart:convert';

import 'package:flutter/material.dart';

class ToggleButtonImplementation extends StatefulWidget {
  const ToggleButtonImplementation({Key? key}) : super(key: key);

  @override
  _ToggleButtonImplementationState createState() => _ToggleButtonImplementationState();
}

class _ToggleButtonImplementationState extends State<ToggleButtonImplementation> {
    List<bool> _isSelected = [false, true, false];
    List<bool> _list=[false];
     List<bool> _third=[false,true];
    bool isButtonDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body:
         Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 50),
            child: Text('I am ToggleButton',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25),),),
             Padding(
        padding: const EdgeInsets.only(top: 20, left: 80),
           child: ToggleButtons(
           children: <Widget>[
            Icon(Icons.bluetooth),
            Icon(Icons.wifi),
            Icon(Icons.flash_on),
    ],
    isSelected: _isSelected,
    onPressed: (int index) {
            setState(() {
              _isSelected[index] = !_isSelected[index];
            });
    },
    color: Colors.grey,
                  selectedColor: Colors.red,
                  fillColor: Colors.lightBlueAccent,
                  borderColor: Colors.lightBlueAccent,
                  selectedBorderColor: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
  ),),
  Padding(
    padding: const EdgeInsets.only(top:25),
    child: Text('Disenabled button',
    style: TextStyle(
      color: Colors.white,
      fontSize: 25),),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 8,left: 80),
    child: ToggleButtons(
      children: [
        Text(' I am disenabled '),
      ], 
      isSelected: _list,
      onPressed: null,
      disabledColor:Colors.grey,
      disabledBorderColor:Colors.amber),
  ),
  Padding(padding: const EdgeInsets.only(top: 25, left: 8),
    child: Text('I am of different border radius!',
    style: TextStyle(
      color: Colors.white,
      fontSize: 25),),),
      Padding(
        padding: const EdgeInsets.only(top:8, left: 80),
        child: ToggleButtons(
          children: [
            Icon(Icons.cake),
            Icon(Icons.drafts)
          ],
        isSelected: _third,
         onPressed: (int index) {
            setState(() {
              _third[index] = !_third[index];
            });
    },
        selectedColor: Colors.pink,
        fillColor: Colors.blue,
        borderColor: Colors.orange,
        selectedBorderColor: Colors.pink,
        borderRadius: BorderRadius.all(Radius.circular(75)),
         ),)
          ],
        ),
    );
  }
}


class ToggleButtonDescription extends StatefulWidget {
  const ToggleButtonDescription({Key? key}) : super(key: key);

  @override
  _ToggleButtonDescriptionState createState() => _ToggleButtonDescriptionState();
}

class _ToggleButtonDescriptionState extends State<ToggleButtonDescription> {
String myStringWithLinebreaks = "ToggleButtons is a widget that creates multiple buttons that you can toggle and arranges them in a row.\n It is responsible for controlling the state of each button i.e selected or unselected.\n It accepts the list of boolean.\nToggleButtons select or unselect the button based on the order of boolean values passed into the list.";

  @override
  Widget build(BuildContext context) {
    return ListTile(
                  title: Text("ToggleButton Widget",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30),),
                  subtitle: 
                    Column(
                      children: LineSplitter.split(myStringWithLinebreaks).map((o) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:10),
                          child: Text("• ",
                             style: TextStyle(
                    color: Colors.white,),),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top:10),
                            child: Text(o,
                             style: TextStyle(
                    color: Colors.white,
                    ),),
                          ),),
                         ]   ); 
                  }).toList()));
  }
}
