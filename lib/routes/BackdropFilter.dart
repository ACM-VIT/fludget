import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class BackdropFilterImplementation extends StatelessWidget {
  const BackdropFilterImplementation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Text('0' * 10000),
        Center(
          child: ClipRect(  // <-- clips to the 200x200 [Container] below
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 200.0,
                child: const Text('Hello World'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class BackdropFilterDescription extends StatelessWidget {
  const BackdropFilterDescription({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '''A widget that applies a filter to the existing painted content and then paints child. The filter will be applied to all the area within its parent or ancestor widget's clip. If there's no clip, the filter will be applied to the full screen. ''',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class BackdropFilterCode extends CodeString {
  const BackdropFilterCode();
  @override
  String buildCodeString() {
    return """Stack(
  fit: StackFit.expand,
  children: <Widget>[
    Text('0' * 10000),
    Center(
      child: ClipRect(  // <-- clips to the 200x200 [Container] below
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            alignment: Alignment.center,
            width: 200.0,
            height: 200.0,
            child: const Text('Hello World'),
          ),
        ),
      ),
    ),
  ],
)""";
  }
}
