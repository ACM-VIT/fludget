import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class SizedOverflowBoxImplementation extends StatelessWidget {
  const SizedOverflowBoxImplementation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("SizedBox (Here child's size will be constrained to parent)"),
          Center(
            child: Container(
              color: Theme.of(context).secondaryHeaderColor,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Container(height: 50.0, width: 150.0, color: Theme.of(context).primaryColor),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("CenterLeft"),
          Center(
            child: Container(
              color: Theme.of(context).secondaryHeaderColor,
              child: SizedOverflowBox(
                size: const Size(100, 100),
                child: Container(height: 50.0, width: 150.0, color: Theme.of(context).primaryColor),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("BottomCenter"),
          Center(
            child: Container(
              color: Theme.of(context).secondaryHeaderColor,
              child: SizedOverflowBox(
                size: const Size(100, 100),
                child: Container(height: 50.0, width: 150.0, color: Theme.of(context).primaryColor),
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("TopRight"),
          Center(
            child: Container(
              color: Theme.of(context).secondaryHeaderColor,
              child: SizedOverflowBox(
                size: const Size(100, 100),
                child: Container(height: 50.0, width: 150.0, color: Theme.of(context).primaryColor),
                alignment: Alignment.topRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SizedOverflowBoxDescription extends StatelessWidget {
  const SizedOverflowBoxDescription({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '''A widget that is a specific size but passes its original constraints through to its child, which may then overflow.  In other words, we can say that it creates a widget of a given size that lets its child overflow.''',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class SizedOverflowBoxCode extends CodeString {
  const SizedOverflowBoxCode();
  @override
  String buildCodeString() {
    return """Center(
            child: Container(
              color: Theme.of(context).secondaryHeaderColor,
              child: SizedOverflowBox(
                size: const Size(100, 100),
                child: Container(height: 50.0, width: 150.0, color: Theme.of(context).primaryColor),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),""";
  }
}