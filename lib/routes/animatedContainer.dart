import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class AnimatedContainerImplementation extends StatefulWidget {
  const AnimatedContainerImplementation({Key? key}) : super(key: key);

  @override
  _AnimatedContainerImplementationState createState() =>
      _AnimatedContainerImplementationState();
}

class _AnimatedContainerImplementationState
    extends State<AnimatedContainerImplementation> {
  var _color = Colors.deepPurple[600];
  var _height = 100.0;
  var _width = 200.0;
  animateContainer() {
    setState(() {
      _color =
          _color == Colors.indigo[800] ? Colors.amber[700] : Colors.indigo[800];
      _height = _height == 100.0 ? 200.0 : 100;
      _width = _width == 200.0 ? 100.0 : 200.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            color: _color,
            height: _height,
            width: _width,
          ),
          const SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            onPressed: () {
              animateContainer();
            },
            child: const Text("Animate"),
          ),
        ],
      ),
    );
  }
}

class AnimatedContainerDescription extends StatelessWidget {
  const AnimatedContainerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
            """This widget is just like the usual Container Widget, but it has a required parameter - \"duration\" for the duration of the animation.
          """),
      ),
    );
  }
}

class AnimatedContainerCode extends CodeString {
  const AnimatedContainerCode();

  @override
  String buildCodeString() {
    return """AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              color: _color,
              height: _height,
              width: _width,
            ),""";
  }
}
