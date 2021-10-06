import 'package:flutter/material.dart';

class ToggleButtonImplementation extends StatefulWidget {
  const ToggleButtonImplementation({Key? key}) : super(key: key);

  @override
  _ToggleButtonImplementationState createState() => _ToggleButtonImplementationState();
}

class _ToggleButtonImplementationState extends State<ToggleButtonImplementation> {
    List<bool> _isSelected = [false, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.only(top: 250, left: 120),
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
  ),
      ),
    );
  }
}


class ToggleButtonDescription extends StatelessWidget {
  const ToggleButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ToggleButton Description Here',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
