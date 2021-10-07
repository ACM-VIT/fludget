import 'package:flutter/material.dart';
import 'dart:math';

class TransformImplementation extends StatefulWidget {
  const TransformImplementation({Key? key}) : super(key: key);

  @override
  _TransformImplementationState createState() =>
      _TransformImplementationState();
}

class _TransformImplementationState extends State<TransformImplementation> {
  double sliderVal = 0;

  @override
  initState() {
    super.initState();
    sliderVal = 0;
  }

  Widget rotate() {
    return Center(
      child: Transform.rotate(
        angle: sliderVal / pi,
        origin: const Offset(0, 0),
        child: Container(
          height: 75,
          width: 75,
          color: Colors.red,
          child: Center(
            child: Text("Rotate"),
          ),
        ),
      ),
    );
  }

  Widget skew() {
    return Center(
      child: Transform(
        transform: Matrix4.skewX(sliderVal / 100),
        child: Container(
          height: 75,
          width: 75,
          color: Colors.blue,
          child: Center(
            child: Text("Skew"),
          ),
        ),
      ),
    );
  }

  Widget translate() {
    return Center(
      child: Transform.translate(
        offset: Offset(-sliderVal, 0),
        child: Container(
          height: 75,
          width: 75,
          color: Colors.green,
          child: Center(child: Text("Translate")),
        ),
      ),
    );
  }

  Widget scale() {
    return Center(
      child: Transform.scale(
        scale: sliderVal == 0 ? 1 : sliderVal / 75,
        origin: const Offset(0, 0),
        child: Container(
          height: 75,
          width: 75,
          color: Colors.orange,
          child: Center(
            child: Text("Scale"),
          ),
        ),
      ),
    );
  }

  Slider slider() {
    return Slider(
      value: sliderVal,
      min: 0,
      max: 100,
      onChanged: (val) {
        setState(() {
          sliderVal = val;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: slider(),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              "Slide the slider to test the transforms below",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: rotate(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
            child: scale(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: translate(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: skew(),
          ),
        ],
      ),
    );
  }
}

class TransformDescription extends StatelessWidget {
  const TransformDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          child: Text(
        """Transform widget does the work of transforming the position of it's child. Transform has 4 different constructors:
        1. Transform()            [Transforms the 3-D Perspective]
        2. Transform.rotate()   [Rotates the object]
        3. Transform.scale() [Scales up or down the size of the object]
        4. Transform.translate [Moves the object according to the co-ordinates specified]
        """,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      )),
    );
  }
}
