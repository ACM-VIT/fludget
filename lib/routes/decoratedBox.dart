import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class DecoratedBoxImplementation extends StatelessWidget {
  const DecoratedBoxImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 50),
          Container(
              child: DecoratedBox(
                  position: DecorationPosition.background,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                          color: const Color(0xFF04D719),
                          style: BorderStyle.solid,
                          width: 50.0)),
                  child: FlutterLogo())),
          SizedBox(height: 30),
          Text("Simple DecoratedBox"),
          SizedBox(height: 30),
          DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(-0.5, -0.6),
                  radius: 0.15,
                  colors: <Color>[Color(0xFFFCEABB), Color(0xFFF8B500)],
                  stops: <double>[0.9, 1.0],
                ),
              ),
              position: DecorationPosition.background,
              child: FlutterLogo(size: 150)),
          SizedBox(height: 10),
          Text("DecoratedBox with all properties")
        ],
      ),
    ));
  }
}

class DecoratedBoxDescription extends StatelessWidget {
  const DecoratedBoxDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20),
      Text('DecoratedBox Widget',
          style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            'A widget that paints a Decoration either before or after its child paints. Container insets its child by the widths of the borders; this widget does not. Commonly used with BoxDecoration. The child is not clipped. To clip a child to the shape of a particular ShapeDecoration, consider using a ClipPath widget.',
          ),
        ),
      ),
      SizedBox(height: 20),
      Text('Source Code DecoratedBox with all properties',
          style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(height: 10),
    ]);
  }
}

class DecoratedBoxCode extends CodeString {
  const DecoratedBoxCode();
  @override
  String buildCodeString() {
    return """
        DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-0.5, -0.6),
                    radius: 0.15,
                    colors: <Color>[
                      Color(0xFFFCEABB),
                      Color(0xFFF8B500)
                    ],
                    stops: <double>[0.9, 1.0],
                  ),
                ),
                position: DecorationPosition.background,
                child: FlutterLogo(size: 150)
              )
        """;
  }
}
