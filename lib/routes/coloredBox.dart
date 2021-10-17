import 'package:flutter/material.dart';

class ColoredBoxImplementation extends StatelessWidget {
  const ColoredBoxImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          ColoredBox(
            color: Colors.orange,
            child: SizedBox.fromSize(size: Size.fromRadius(100)),
          ),
          SizedBox(height: 10),
          Text("Red Colored Box"),
          SizedBox(height: 20),
          ColoredBox(
            color: Colors.grey,
            child: FlutterLogo(size: 100.0),
          ),
          SizedBox(height: 10),
          Text("Grey Colored Box with Image"),
          SizedBox(height: 20),
          ColoredBox(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Green Colored Box with Text"),
              )
          )
        ],
      ),
    ));
  }
}

class ColoredBoxDescription extends StatelessWidget {
  const ColoredBoxDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20),
      Text('ColoredBox Widget', style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            'A widget that paints its area with a specified Color and then draws its child on top of that color.',
          ),
        ),
      ),
      SizedBox(height: 20),
      Text('Syntax for ColoredBox Widget', style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            """
ColoredBox(
	color: <background Color>,
	child: <Child-Widget>
)
            """,
          ),
        ),
      ),

    ]);
  }
}
