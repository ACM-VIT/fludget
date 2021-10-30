import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class ContainerImplementation extends StatelessWidget {
  const ContainerImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Container with default shape ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                "Container with border radius of 12.0 ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
              ),
              Text(
                "Container with circle shape ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerDescription extends StatelessWidget {
  const ContainerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          'A convenience widget that combines common painting, positioning, and sizing widget',
        ),
      ),
    );
  }
}

class ContainerCode extends CodeString {
  const ContainerCode();
  @override
  String buildCodeString() {
    return """Container(
                width: 100.0,
                height: 100.0,
                color: Theme.of(context).primaryColor,
              ),""";
  }
}
