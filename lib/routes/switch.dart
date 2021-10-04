import 'package:flutter/material.dart';

class SwitchSample extends StatefulWidget {
  const SwitchSample({Key? key}) : super(key: key);
  @override
  _SwitchSampleState createState() => _SwitchSampleState();
}

class _SwitchSampleState extends State<SwitchSample> {
  bool _isOn = false;
  void _toggleSwitch(bool newValue) {
    setState(() {
      _isOn = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tap on the switch to toggle",
              style: TextStyle(color: Colors.white),
            ),
            Switch(value: _isOn, onChanged: _toggleSwitch),
          ],
        ),
      ),
    );
  }
}

class SwitchDescription extends StatelessWidget {
  const SwitchDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Switch",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            """Switch widget in Flutter s used to show a toggle state like ON and OFF.
It has two major arguments:

=> bool value:  Used to show current state of the switch. true for ON and false for OFF.

=> void Function onChange(bool):  Function used to change the state of the switch when user taps on the widget. It gives one parameter which is the new value for the switch.""",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            """
            Switch(
              value: _isOn, 
               onChanged: (bool val)
               {
                setState((){
                  _isOn = val;
                });  
               },
            )
            """,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
