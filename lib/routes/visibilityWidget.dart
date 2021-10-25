import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class VisibilityWidget extends StatefulWidget {
  const VisibilityWidget({Key? key}) : super(key: key);

  @override
  State<VisibilityWidget> createState() => _VisibilityWidgetState();
}

class _VisibilityWidgetState extends State<VisibilityWidget> {
  bool visible = true;

  bool notVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Theme.of(context).primaryColorLight,
                child: Visibility(
                    visible: visible,
                    child: Image.asset("assets/images/logo.png")),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Theme.of(context).primaryColor,
                child: Visibility(
                    visible: notVisible,
                    child: Image.asset("assets/images/_product.png")),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 95,
          right: 50,
          left: 50,
          child: ElevatedButton(
            onPressed: () => setState(() {
              visible = !visible;
            }),
            style:
                ElevatedButton.styleFrom(primary: Colors.white70, elevation: 8),
            child: Text(
              'Change Visibility of logo',
              style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          right: 50,
          left: 50,
          child: ElevatedButton(
            onPressed: () => setState(() {
              notVisible = !notVisible;
            }),
            style:
                ElevatedButton.styleFrom(primary: Colors.white70, elevation: 8),
            child: Text(
              'Change Visibility of shoe',
              style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 50,
          left: 50,
          child: ElevatedButton(
            onPressed: () => setState(() {
              visible = !visible;
              notVisible = !notVisible;
            }),
            style:
                ElevatedButton.styleFrom(primary: Colors.white70, elevation: 8),
            child: Text(
              'Change Visibility of both',
              style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    ));
  }
}

class VisbilityWidgetDescription extends StatelessWidget {
  const VisbilityWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Flutter contains a Visibility Widget that you should use to show/hide widgets. The widget can also be used to switch between 2 widgets by changing the replacement. This widget can achieve any of the states visible, invisible, gone and a lot more.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class VisibilityWidgetCode extends CodeString {
  const VisibilityWidgetCode();
  @override
  String buildCodeString() {
    return """
    Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Theme.of(context).primaryColorLight,
                child: Visibility(
                    visible: visible,
                    child: Image.asset("assets/images/logo.png")),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Theme.of(context).primaryColor,
                child: Visibility(
                    visible: notVisible,
                    child: Image.asset("assets/images/_product.png")),
              ),
    """;
  }
}
