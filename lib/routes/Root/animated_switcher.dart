import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherImplementation extends StatefulWidget {
  const AnimatedSwitcherImplementation({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherImplementation> createState() =>
      _AnimatedSwitcherImplementationState();
}

class _AnimatedSwitcherImplementationState
    extends State<AnimatedSwitcherImplementation> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeOut,
            duration: Duration(milliseconds: 1200),
            child: flag
                ? Container(
                    key: Key('1'),
                    color: Theme.of(context).primaryColor,
                    width: 200,
                    height: 200,
                    child: Center(
                        child: Text(
                      'Widget Container 1',
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                : Container(
                    key: Key('2'),
                    color: Theme.of(context).errorColor,
                    width: 300,
                    height: 200,
                    child: Center(child: Text('Widget Container 2')),
                  )),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.change_circle, color: Colors.white, size: 30),
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () => setState(() {
                flag = !flag;
              })),
    );
  }
}

class AnimatedSwitcherDescription extends StatelessWidget {
  const AnimatedSwitcherDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "AnimatedSwitcher is a widget that can be used for creating animation when switching between two widgets. When a widget is replaced with another, it transitions the new widget in and transitions the previous widget out.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class AnimatedSwitcherCode extends CodeString {
  const AnimatedSwitcherCode();

  @override
  String buildCodeString() {
    return """
    AnimatedSwitcher(
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeOut,
            duration: Duration(milliseconds: 1200),
            child: flag
                ? Container(
                    key: Key('1'),
                    color: Theme.of(context).primaryColor,
                    width: 200,
                    height: 200,
                    child: Center(
                        child: Text(
                      'Widget Container 1',
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                : Container(
                    key: Key('2'),
                    color: Theme.of(context).errorColor,
                    width: 300,
                    height: 200,
                    child: Center(child: Text('Widget Container 2')),
                  )),
    """;
  }
}
