import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class AnimatedPositionedImp extends StatefulWidget {
  const AnimatedPositionedImp({Key? key}) : super(key: key);

  @override
  _AnimatedPositionedImpState createState() => _AnimatedPositionedImpState();
}

class _AnimatedPositionedImpState extends State<AnimatedPositionedImp> {
  var box1left = null;
  var box2right = null;
  var box1top = 30.0;
  var box2top = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            duration: const Duration(seconds: 1),
            left: box1left,
            top: box1top,
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            duration: const Duration(seconds: 1),
            right: box2right,
            top: box2top,
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: ElevatedButton(
              onPressed: () async {
                setState(() {
                  box1top = 200.0;
                  box1left = 20.0;
                });
                await Future.delayed(const Duration(seconds: 1));
                setState(() {
                  box2top = 200.0;
                  box2right = 20.0;
                });
              },
              child: Text("Start Animation"),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedPositionedDesc extends StatelessWidget {
  const AnimatedPositionedDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Animated version of Positioned which automatically transitions the child's position over a given duration whenever the given position changes.",
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              """
Only works if it's the child of a Stack.

This widget is a good choice if the size of the child would end up changing as a result of this animation. If the size is intended to remain the same, with only the position changing over time, then consider SlideTransition instead. SlideTransition only triggers a repaint each frame of the animation, whereas AnimatedPositioned will trigger a relayout as well.""",
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedPositionedCode extends CodeString {
  const AnimatedPositionedCode();
  @override
  String buildCodeString() {
    return """
    AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            duration: const Duration(seconds: 1),
            left: box1left,
            top: box1top,
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
    """;
  }
}
