import 'package:flutter/material.dart';

class CheckboxListTileWidget extends StatefulWidget {
  const CheckboxListTileWidget({Key? key}) : super(key: key);

  @override
  _CheckboxListTileWidgetState createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  bool? _isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(children: [
        CheckboxListTile(
          activeColor: Colors.blue,
          checkColor: Colors.white,
          tileColor: Colors.grey[700],
          title: const Text(
            'Flutter Awesome',
            style: TextStyle(color: Colors.white),
          ),
          onChanged: (bool? newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
          secondary: const FlutterLogo(),
          value: _isSelected,
          subtitle: Text(
            "I Love Flutter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        CheckboxListTile(
          activeColor: Colors.grey,
          checkColor: Colors.black,
          tileColor: Colors.grey[800],
          title: const Text(
            'Flutter Awesome',
            style: TextStyle(color: Colors.white),
          ),
          onChanged: (bool? newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
          secondary: const FlutterLogo(),
          value: _isSelected,
          subtitle: Text(
            "I Love Flutter",
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}

class CheckboxListTileWidgetDescription extends StatelessWidget {
  const CheckboxListTileWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              "CheckboxListTile Widget \n",
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    height: 1.2,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'CheckboxListTile is a built-in widget in flutter. We can say it a combination of CheckBox with a ListTile.'
                          'Its properties such as value, activeColor, and checkColor are similar to the CheckBox widget, and title, subtitle, contentPadding, etc are similar to the ListTile widget.'
                          'We can tap anywhere on the CheckBoxListTile to Google the checkbox. Below we will see all the properties of this widget along with an example.',
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
