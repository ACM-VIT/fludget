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
      body: Center(
        child: Switch(value: _isOn, onChanged: _toggleSwitch),
      ),
    );
  }
}

class SwitchDescription extends StatelessWidget {
  const SwitchDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Switch Widget in Flutter",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
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
