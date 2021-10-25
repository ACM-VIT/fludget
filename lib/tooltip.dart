import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Models/codeString.dart';

class TooltipImplementation extends StatelessWidget {
  const TooltipImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Wrap(
        children: [
          Center(
            heightFactor: 1.3,
            child: Container(
              child: Column(children: [
                Tooltip(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    showDuration: Duration(seconds: 4),
                    message:
                        'This is a "Lorem Ipsum" text widget!\n'
                            'Disappears after 4 seconds',
                    child: Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 50),
                    )),
                Text('Long press on the text above'),
              ]),
            ),
          ),
          Center(
            heightFactor: 1.3,
            child: Container(
              child: Column(children: [
                Tooltip(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  triggerMode: TooltipTriggerMode.longPress,
                  message: 'This is a flag icon!',
                  child: Icon(
                    Icons.flag,
                    size: 100,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text('Long press on the icon to tooltip'),
              ]),
            ),
          ),
          Center(
            heightFactor: 1.3,
            child: Container(
              child: Column(children: [
                Tooltip(
                    margin: EdgeInsets.only(top: 20),
                    verticalOffset: 60,
                    padding: EdgeInsets.all(10),
                    triggerMode: TooltipTriggerMode.tap,
                    message: 'This is an image!\n'
                        'We can have a lot of information\n'
                        'inside a tooltip\n'
                        'but, its recommended to display short info\n',
                    child: Image.asset(
                      'assets/images/acm_logo.png',
                      height: 100,
                    )),
                Text('Click the image to tooltip'),
              ]),
            ),
          ),
        ],
      )),
    );
  }
}

class TooltipDescription extends StatelessWidget {
  const TooltipDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "Tooltips provide text labels which help explain the function of a button or other user interface action. Wrap the button in a Tooltip widget and provide a message which will be shown when the widget is long pressed.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class TooltipCode extends CodeString {
  const TooltipCode();

  @override
  String buildCodeString() {
    return """
    Tooltip(
          triggerMode: TooltipTriggerMode.tap,
          message: 'An icon!',
          child: Icon(
            Icons.image,
            size: 100,
          ),
        ),
    """;
  }
}
