import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({Key? key}) : super(key: key);

  @override
  _AnimatedBuilderWidgetState createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  AnimationController? rotateController;
  late Animation<double> rotateAnimation;
  AnimationController? slideTransitionController;
  late Animation<double> slideTransitionAnimation;

  @override
  void initState() {
    super.initState();
    //initialisig rotation controller.
    rotateController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..repeat();
    //initialising slide Transition controller.
    slideTransitionController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..repeat();
    //assigning rotation animation value.
    rotateAnimation =
        Tween<double>(begin: 0, end: 2 * pi).animate(rotateController!);
    //assigning slide Transition animation value.
    slideTransitionAnimation =
        Tween<double>(begin: -1, end: 1).animate(slideTransitionController!);
  }

  @override
  void dispose() {
    rotateController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            leading: Icon(Icons.fiber_manual_record),
            title: Text(
              'Rotation using AnimatedBuilder Widget.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 30),
          AnimatedBuilder(
            animation: rotateAnimation,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 20.0),
              child: Container(
                color: Theme.of(context).primaryColor,
                width: 125,
                height: 125,
                alignment: Alignment.center,
              ),
            ),
            builder: (context, child) => Transform.rotate(
              angle: rotateAnimation.value,
              child: child,
            ),
          ),
          const SizedBox(height: 40),
          ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            leading: Icon(Icons.fiber_manual_record),
            title: Text(
              'Translation using AnimatedBuilder Widget.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 20),
          AnimatedBuilder(
              animation: rotateAnimation,
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).primaryColor),
                width: 150,
                height: 150,
                alignment: Alignment.center,
              ),
              builder: (context, child) {
                final width = MediaQuery.of(context).size.width;
                final x = slideTransitionAnimation.value * width;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: child,
                );
              })
        ],
      ),
    );
  }

 
}

class AnimatedBuilderDescription extends StatelessWidget {
  const AnimatedBuilderDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'A general-purpose widget for building animations. AnimatedBuilder is useful for more complex widgets that wish to include an animation as part of a larger build function. To use AnimatedBuilder, simply construct the widget and pass it a builder function.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
