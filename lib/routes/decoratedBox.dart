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
                          width: 50.0
                        )
                      ),
                    child: FlutterLogo()
                  )
              ),
            SizedBox(height: 30),
            Text("DecoratedBox"),
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
      )
    ]);
  }
}
